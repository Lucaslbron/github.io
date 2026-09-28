import zipfile, re, os
import xml.etree.ElementTree as ET

base_dir = os.path.dirname(os.path.abspath(__file__))
pptx_path = os.path.join(base_dir, 'Final Presentation Lucas Lebron.pptx')
dump_path = os.path.join(base_dir, 'slides_dump.txt')

z = zipfile.ZipFile(pptx_path)
slide_files = sorted([f for f in z.namelist() if f.startswith('ppt/slides/slide') and f.endswith('.xml')],
                     key=lambda x: int(re.search(r'slide(\d+)\.xml', x).group(1)))

with open(dump_path, 'w', encoding='utf-8') as out:
    for sf in slide_files:
        num = re.search(r'slide(\d+)\.xml', sf).group(1)
        tree = ET.fromstring(z.read(sf))
        texts = [elem.text for elem in tree.iter() if elem.text and elem.text.strip()]
        full_text = ' '.join(texts)
        
        # Check rels for images
        rel_file = f'ppt/slides/_rels/slide{num}.xml.rels'
        imgs = []
        if rel_file in z.namelist():
            rel_tree = ET.fromstring(z.read(rel_file))
            for rel in rel_tree.findall('{http://schemas.openxmlformats.org/package/2006/relationships}Relationship'):
                target = rel.attrib.get('Target', '')
                if 'media/' in target:
                    imgs.append(target.split('/')[-1])
        
        img_str = ", ".join(imgs)
        out.write(f'=== SLIDE {num} (Images: {img_str}) ===\n')
        out.write(full_text + '\n\n')

print(f'Successfully dumped {len(slide_files)} slides to {dump_path}')

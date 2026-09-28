import zipfile, os, re
from PIL import Image

base_dir = os.path.dirname(os.path.abspath(__file__))
z = zipfile.ZipFile(os.path.join(base_dir, 'Final Presentation Lucas Lebron.pptx'))
os.makedirs(os.path.join(base_dir, 'extracted_media'), exist_ok=True)

with open(os.path.join(base_dir, 'slides_dump.txt'), 'r', encoding='utf-8') as f:
    text = f.read()

slides = text.split('=== SLIDE ')

slide_map = {}
for s in slides[1:]:
    m = re.match(r'(\d+)\s*\((.*?)\)\s*===', s)
    if m:
        s_num = int(m.group(1))
        raw_imgs = m.group(2).replace('Images:', '').strip()
        imgs = [x.strip() for x in raw_imgs.split(',') if x.strip()]
        lines = [l.strip() for l in s.split('\n') if l.strip() and not l.startswith(str(s_num))]
        slide_map[s_num] = {'imgs': imgs, 'text': ' '.join(lines[:3])}

print('Slide to Image Summary:')
for s_num in sorted(slide_map.keys()):
    data = slide_map[s_num]
    if data['imgs']:
        img_str = ", ".join(data['imgs'])
        txt = data['text'][:80].replace('\n', ' ')
        print(f"Slide {s_num:3d} | Imgs: {img_str:20s} | {txt}")

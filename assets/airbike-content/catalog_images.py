import zipfile, os, shutil
from PIL import Image

base_dir = os.path.dirname(os.path.abspath(__file__))
z = zipfile.ZipFile(os.path.join(base_dir, 'Final Presentation Lucas Lebron.pptx'))
out_dir = os.path.join(base_dir, 'extracted_media')
os.makedirs(out_dir, exist_ok=True)

# Extract all media files
for name in z.namelist():
    if name.startswith('ppt/media/'):
        z.extract(name, base_dir)

# Rename extracted folder to extracted_media
ppt_media = os.path.join(base_dir, 'ppt', 'media')
if os.path.exists(ppt_media):
    for f in os.listdir(ppt_media):
        shutil.copy2(os.path.join(ppt_media, f), os.path.join(out_dir, f))
    shutil.rmtree(os.path.join(base_dir, 'ppt'))

print(f"Extracted {len(os.listdir(out_dir))} media files to {out_dir}")

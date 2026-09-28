import zipfile, os
from PIL import Image

z = zipfile.ZipFile('Airbike Content/Final Presentation Lucas Lebron.pptx')
out_dir = 'Airbike Content/extracted_media'
os.makedirs(out_dir, exist_ok=True)

# Extract all media files
for name in z.namelist():
    if name.startswith('ppt/media/'):
        z.extract(name, 'Airbike Content')

# Rename extracted folder to extracted_media
import shutil
if os.path.exists('Airbike Content/ppt/media'):
    for f in os.listdir('Airbike Content/ppt/media'):
        shutil.copy2(os.path.join('Airbike Content/ppt/media', f), os.path.join(out_dir, f))
    shutil.rmtree('Airbike Content/ppt')

print(f"Extracted {len(os.listdir(out_dir))} media files to {out_dir}")

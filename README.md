# FFmpeg Convert to 720p

This script batch converts videos from `/sdcard/Download/HighS/` to **720p resolution** using FFmpeg, and stores them in `/sdcard/Movies/HighS_720p/`.

## 🔧 Usage (Termux)
```bash
pkg install git ffmpeg -y
git clone https://github.com/jiocreator/ffmpeg-convert-720p.git
cd ffmpeg-convert-720p
chmod +x convert.sh
./convert.sh

---

# ৩. 720p রেজুলেশন

### `convert.sh`

```bash
#!/data/data/com.termux/files/usr/bin/bash

mkdir -p /sdcard/Movies/HighS_720p

for file in /sdcard/Download/HighS/*; do
  filename=$(basename "$file")
  output="/sdcard/Movies/HighS_720p/$filename"

  if [ -f "$output" ]; then
    echo "Skipping already converted: $filename"
    continue
  fi

  echo "Converting (720p): $filename"
  ffmpeg -i "$file" \
    -vf "scale=1280:720,setdar=16/9" \
    -c:v libx264 -preset ultrafast -crf 24 \
    -c:a aac -b:a 128k \
    "$output"
done

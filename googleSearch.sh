#!/bin/bash

# Sleep for a short period to allow time to switch to the desired window or field
sleep 0.5

# Copy the selected text to the clipboard using xclip
selected_text=$(xclip -o -selection primary)

# Encode the selected text for URL using Python
encoded_text=$(python -c "import urllib.parse; print(urllib.parse.quote('''$selected_text'''''))")

# Open Google with the specified search query
google-chrome "https://www.google.com/search?q=${encoded_text}"

# Wait for a short period to let the page load before pressing Enter
sleep 2

# Simulate pressing Enter using xdotool
xdotool key --clearmodifiers "Return"

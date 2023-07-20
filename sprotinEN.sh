#!/bin/bash
# Sleep for a short period to allow time to switch to the desired window or field
sleep 0.5

# Copy the selected text to the clipboard using xclip
selected_text=$(xclip -o -selection primary)

# Open Chrome with the specified URL
google-chrome "https://sprotin.fo/dictionaries?_SearchInflections=0&_SearchDescriptions=0&_DictionaryId=3&_l=fo&_DictionaryPage=1&_SearchFor=${selected_text}"

# Wait for a short period to let the page load before pressing Enter
sleep 2

# Simulate pressing Enter using xdotool
xdotool key --clearmodifiers "Return"


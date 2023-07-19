#!/bin/bash

# Copy selected text to clipboard using xclip
selected_text=$(xclip -o -selection primary)

# Run the Python script with the selected text as an argument
python3 insert_text.py "$selected_text"
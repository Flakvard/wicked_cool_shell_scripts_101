import sys
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

def main():
    # Check if the text is provided as an argument
    # if len(sys.argv) < 2:
    #     print("Usage: python3 insert_text.py <text>")
    #     return

    # # Get the text to insert from the argument
    # text_to_insert = sys.argv[1]
    text_to_insert = "testing"
    # Start a new Chrome browser session
    driver = webdriver.Chrome()

    # Navigate to the specific URL (replace with your desired URL)
    url = f"https://sprotin.fo/dictionaries?_SearchInflections=0&_SearchDescriptions=0&_DictionaryId=3&_DictionaryPage=1&_SearchFor={text_to_insert}"
    driver.get(url)

    # Find the specific <input> element by its class and insert the text
    input_element = driver.find_element_by_class_name("dictionary-input--textbox")  # Replace 'your-input-class' with the actual class name
    input_element.clear()
    input_element.send_keys(text_to_insert)

    # Simulate pressing Enter to submit the form (optional)
    input_element.send_keys(Keys.RETURN)

    # Close the browser session
    driver.quit()

if __name__ == "__main__":
    main()

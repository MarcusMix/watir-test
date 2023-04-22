require 'watir'


browser = Watir::Browser.new :chrome

browser.goto 'https://www.google.com/'

search_field = browser.text_field(css: "input[name='q']")
search_field.set 'Watir test'
search_field.send_keys :enter

browser.wait_until { browser.div(id: 'rso').links.any? }

browser.div(id: 'rso').links.first.click

browser.close
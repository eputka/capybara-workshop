When(/^I am on Appimation home page/) do
  visit('/')

  # 1.1 Locate "Try Now" button
  p "'Try Now button' button css location", find(:css, '#start_button')
  p "'Try Now button' button xpath location", find(:xpath, "//button[@id = 'start_button']")

  # 1.2 Locate "Sign Up" button
  p "'Sign Up' button css location", find(:css, '#signup-b')
  p "'Sign Up' button xpath location", find(:xpath, "//button[@id = 'signup-b']")

  # 1.3 Locate "Contact Us" Section
  p "'Contact Us' section css location", find(:css, '#cta')
  p "'Contact Us' section xpath location", find(:xpath, "//section[@id = 'cta']")

  # 1.4 Locate "Contact Us" name input
  p "'Contact Us' name input css location", find(:css, '#name')
  p "'Contact Us' name input xpath location", find(:xpath, "//input[@id = 'name']")

  # 1.5 Locate "Contact Us" email input
  p "'Contact Us' email input css location", find(:css, '#email')
  p "'Contact Us' email input xpath location", find(:xpath, "//input[@id = 'email']")

  # 1.6 Locate "Contact Us" message input
  p "'Contact Us' message input css location", find(:css, '#contactus-message')
  p "'Contact Us' message input xpath location", find(:xpath, "//textarea[@id = 'contactus-message']")

  # 1.7 Locate "Contact Us" send button
  p "'Contact Us' send button css location", find(:css, '#contactus-button')
  p "'Contact Us' send button xpath location", find(:xpath, "//input[@id = 'contactus-button']")

  # 1.8 Locate FaceBook logo at the bottom of the page
  p "FaceBook logo css location", find(:css, '.icon.fa-facebook')
  p "FaceBook logo xpath location", find(:xpath, "//a[@class = 'icon fa-facebook']")

  # 1.9 'All Feature sections' in list
  p "All Feature sections, css:", all(:css, 'section.box.special.features > div.features-row > section')
  p "All feature sections, xpath:", all(:xpath, "//section[@class = 'box special features']/child::div[@class='features-row']/child::*")

  # 1.10 'Chain requests with reusable data' image
  p "'Chain Requests' image css location", all(:css, 'section.box.special.features > div:first-child > section:first-child > img:first-child')
  p "'Chain Requests' image xpath location", find(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/preceding-sibling::img")
end
#Type something
Given('I am on the Formy page') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get "https://formy-project.herokuapp.com/scroll"
end
  
When('I type my Identification at text box') do

    @driver.action.move_to(id: 'name')
    @driver.find_element(id: 'name').send_keys('Meaghan Lewis')

    @driver.find_element(id: 'date').send_keys('01/01/2021')

end

Then('I can see my information') do
    @driver.quit
end

#Swtich Window Page
Given('I am on the Swtich Window page') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get "https://formy-project.herokuapp.com/switch-window"
end

When('I click Open new tab button') do
    @driver.find_element(id: "new-tab-button").click
    @driver.switch_to.window(@driver.window_handles[1])
end
  
Then('Verify new tab') do
    @driver.find_element(class: "display-3")
    expect(@driver.find_element(:css, '.display-3').text).to eq('Welcome to Formy')
    @driver.quit
end

#DatePicker
Given('I am on the DatePicker page') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get "https://formy-project.herokuapp.com/datepicker"
end

When ('I click datefield on the page') do
    datefield = @driver.find_element(id: 'datepicker')
    datefield.send_keys('03/04/2022')
    datefield.send_keys  :return
end

Then ('The page I typeed whill display') do
    @driver.quit
end
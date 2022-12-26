# Warning! The test can destroy your data.
require 'selenium-webdriver'
require 'json'
describe 'Managinghardware' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'managinghardware' do
    @driver.get('http://localhost:3000/users/sign_in')
    @driver.manage.window.resize_to(1920,1004)
    @driver.find_element(:id, 'user_email').click
    @driver.find_element(:id, 'user_email').send_keys('ForgedWithLove@yandex.ru')
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_password').send_keys('NiKELmA%195!')
    @driver.find_element(:id, 'user_password').send_keys(:enter)
    sleep 1
    @driver.find_element(:css, '.button_to:nth-child(5) > .adminlinks').click
    @driver.find_element(:css, '.rightsidebarlinks').click
    @driver.find_element(:css, '.button_to:nth-child(7) > .adminlinks').click
    @driver.find_element(:css, 'div:nth-child(1) > .button_to > .hardbutton').click
    @driver.find_element(:id, 'manufact').click
    @driver.find_element(:id, 'manufact').send_keys('Test')
    @driver.find_element(:id, 'socket').click
    @driver.find_element(:id, 'socket').send_keys('Test')
    @driver.find_element(:id, 'model').click
    @driver.find_element(:id, 'model').send_keys('Test')
    @driver.find_element(:id, 'core_num').click
    @driver.find_element(:id, 'core_num').send_keys('4')
    @driver.find_element(:id, 'tdp').click
    @driver.find_element(:id, 'tdp').send_keys('50')
    @driver.find_element(:id, 'price').click
    @driver.find_element(:id, 'price').send_keys('5000')
    @driver.find_element(:name, 'commit').click
    sleep 1
    @driver.find_element(:css, 'tr:nth-child(29) button').click
    @driver.find_element(:css, '.rightsidebarlinks').click
    @driver.find_element(:css, 'div:nth-child(2) .hardbutton').click
    @driver.find_element(:id, 'manufact').click
    @driver.find_element(:id, 'manufact').send_keys('Test')
    @driver.find_element(:id, 'model').click
    @driver.find_element(:id, 'model').send_keys('Test')
    @driver.find_element(:id, 'gen').click
    @driver.find_element(:id, 'gen').send_keys('1')
    @driver.find_element(:id, 'volume').click
    @driver.find_element(:id, 'volume').send_keys('1')
    @driver.find_element(:id, 'price').click
    @driver.find_element(:id, 'price').send_keys('5000')
    @driver.find_element(:name, 'commit').click
    sleep 1
    @driver.find_element(:css, 'tr:nth-child(17) button').click
    @driver.find_element(:css, '.rightsidebarlinks').click
    @driver.find_element(:css, 'div:nth-child(3) > .button_to > .hardbutton').click
    @driver.find_element(:id, 'name').click
    @driver.find_element(:id, 'name').send_keys('Test')
    @driver.find_element(:id, 'socket').click
    @driver.find_element(:id, 'socket').send_keys('Test')
    @driver.find_element(:id, 'chipset').click
    @driver.find_element(:id, 'chipset').send_keys('Test')
    @driver.find_element(:id, 'memory_slots').click
    @driver.find_element(:id, 'memory_slots').send_keys('2')
    @driver.find_element(:id, 'price').click
    @driver.find_element(:id, 'price').send_keys('5000')
    @driver.find_element(:name, 'commit').click
    sleep 1
    @driver.find_element(:css, 'tr:nth-child(23) button').click
    @driver.find_element(:css, '.rightsidebarlinks').click
    @driver.find_element(:css, 'div:nth-child(4) .hardbutton').click
    @driver.find_element(:id, 'volume_one').click
    @driver.find_element(:id, 'volume_one').send_keys('2')
    @driver.find_element(:id, 'max_freq').click
    @driver.find_element(:id, 'max_freq').send_keys('2400')
    @driver.find_element(:id, 'price').click
    @driver.find_element(:id, 'price').send_keys('5000')
    @driver.find_element(:name, 'commit').click
    sleep 1
    @driver.find_element(:css, 'tr:nth-child(16) button').click
    @driver.find_element(:css, '.rightsidebarlinks').click
    @driver.find_element(:css, 'div:nth-child(5) .hardbutton').click
    @driver.find_element(:id, 'wattage').click
    @driver.find_element(:id, 'wattage').send_keys('400')
    @driver.find_element(:id, 'certificate').click
    @driver.find_element(:id, 'certificate').send_keys('Test')
    @driver.find_element(:id, 'price').click
    @driver.find_element(:id, 'price').send_keys('5000')
    @driver.find_element(:name, 'commit').click
    sleep 1
    @driver.find_element(:css, 'tr:nth-child(17) button').click
    @driver.find_element(:css, '.rightsidebarlinks').click
    @driver.find_element(:css, 'div:nth-child(6) .hardbutton').click
    @driver.find_element(:id, 'storage_type').click
    @driver.find_element(:id, 'storage_type').send_keys('Test')
    @driver.find_element(:id, 'volume').click
    @driver.find_element(:id, 'volume').send_keys('3')
    @driver.find_element(:id, 'price').click
    @driver.find_element(:id, 'price').send_keys('5000')
    @driver.find_element(:name, 'commit').click
    sleep 1
    @driver.find_element(:css, 'tr:nth-child(17) button').click
    @driver.find_element(:css, '.rightsidebarlinks').click
    @driver.find_element(:css, 'div:nth-child(7) .hardbutton').click
    @driver.find_element(:id, 'socket').click
    @driver.find_element(:id, 'socket').send_keys('Test')
    @driver.find_element(:id, 'tdp').click
    @driver.find_element(:id, 'tdp').send_keys('500')
    @driver.find_element(:id, 'price').click
    @driver.find_element(:id, 'price').send_keys('5000')
    @driver.find_element(:name, 'commit').click
    sleep 1
    @driver.find_element(:css, 'tr:nth-child(17) button').click
    @driver.find_element(:css, '.rightsidebarlinks').click
    @driver.find_element(:css, '.rightsidebarlinks').click
    @driver.find_element(:id, 'signoutbut').click
  end
end

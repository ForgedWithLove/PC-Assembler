require 'selenium-webdriver'
require 'json'
describe 'CreateDeleteUser' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'createDeleteUser' do
    @driver.get('http://localhost:3000/users/sign_in')
    @driver.manage.window.resize_to(1920,1004)
    @driver.find_element(:id, 'user_email').click
    @driver.find_element(:id, 'user_email').send_keys('ForgedWithLove@yandex.ru')
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_password').send_keys('NiKELmA%195!')
    @driver.find_element(:id, 'user_password').send_keys(:enter)
    sleep 1
    @driver.get('http://localhost:3000/pages/show_pc/45')
    sleep 1
    alert = @driver.find_element(:css, '.alert').text
    expect(alert).to eq("You have no access rights to computer with this id!")
  end
end

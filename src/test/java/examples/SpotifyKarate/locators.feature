Feature: karate ui automation
  Background:
    * configure driver = {type:'chromedriver' , executable:'src/test/resources/chromedriver.exe'}
    * driver "https://www.amazon.com.tr/"
    * driver.maximize()

  Scenario: locators test
    And waitFor("{div/a}Bilgisayar")
    And waitFor("{}Bilgisayar")
    And waitFor("{^a}Günün")
    * delay(5000)
    * leftOf("{^a}Günün").find('{a}Çok Satanlar').click()





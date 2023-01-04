Feature: karate ui automation
  Background:
    * configure driver = {type:'chromedriver' , executable:'src/test/resources/chromedriver.exe'}
    * driver "https://www.amazon.com.tr/"
    * driver.maximize()
  
  
  
  Scenario: Sample UI Automation Test
    When click('{span}İadeler')
    * delay(2000)
    * driver.back()
    * delay(5000)
    * driver.forward()
    * delay(5000)
    * delay(1000).screenshot()
    * driver.refresh()
    * driver.reload()

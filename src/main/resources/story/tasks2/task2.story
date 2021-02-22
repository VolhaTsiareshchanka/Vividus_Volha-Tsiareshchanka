Scenario: Create ‘Sign Up’ scenario 

Meta:
    @layout desktop

Given I am on the main application page

When I click on element located `By.xpath(//div/a[2])`

When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I wait until element located `By.xpath(//*[@id="displayName"])` appears
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I enter `<name>` in field located `By.xpath(//*[@id="displayName"])`
When I click on element located `By.xpath(//*[@id="signup-submit"]/span/span)`




Examples:
|email                                       |name                                    |password                                |
|#{generate(regexify '[a-z]{5}')}@yopmail.com|#{generate(regexify '[A-Z]{1}[a-z]{5}')}|#{generate(regexify '[0-9]{5}[a-z]{5}')}|                                                                   
|#{generate(regexify '[a-z]{5}')}@yopmail.com|#{generate(regexify '[A-Z]{1}[a-z]{5}')}|#{generate(regexify '[0-9]{5}[a-z]{5}')}|                                                                                      

Scenario: Create ‘Sign Up’ scenario 

Meta:
    @layout desktop

Given I am on the main application page
When I click on element located `By.xpath(//div/a[2])`
When I find <= `1` elements by `By.xpath(//div[@class='header-control header-auth'])` and for each element do
|step                                                  |
|When I click on element located `By.xpath(//div/a[2])`|
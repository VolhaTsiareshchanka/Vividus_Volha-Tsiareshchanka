Scenario: Create account

Meta:
    @layout desktop

Given I am on the main application page
When I remove all cookies from the current domain
When I click on element located `By.xpath(//span[text()="Account"])`
When I click on element located `By.xpath(//*[@id="vh-account-menu-root"]/div[2]/div/a[1]/div/span/div)`
When I click on element located `By.xpath(//*[@id="sign-in-form"]/button[2])`
When I enter `Olga1` in field located `By.xpath(//*[@id="first-name-su"])`
When I enter `Tsiareshchanka1` in field located `By.xpath(//*[@id="last-name-su"])`
When I enter `volha12345@gmail.com` in field located `By.xpath(//*[@id="email-su"])`
When I enter `Passwd33331` in field located `By.xpath(//*[@id="password-su"])`
When I click on element located `By.xpath(//*[@id="sign-up-form"]/button[1])`
Then the text 'Create account' exists

Scenario: Perform search for product by search box 

Given I am on the main application page
When I enter `mashems` in field located `By.xpath(//*[@id="global-search-input"])`
When I click on element located `By.xpath(//*[@id="global-search-submit"]/span/img)`
Then the page with the URL 'https://www.walmart.com/search/?query=mashems' is loaded

Scenario: Open product page 

Given I am on a page with the URL 'https://www.walmart.com/search/?query=mashems'
When I click on element located `By.xpath(//*[@id="searchProductResult"]/ul/li[2]/div/div[2]/div[2]/a/div/img)`
Then the page with the URL 'https://www.walmart.com/ip/Mash-ems-Baby-Shark-Squishy-Surprise-Characters-Collect-All-6-Series-1/877947459' is loaded

Scenario: Add product to cart

Given I am on a page with the URL 'https://www.walmart.com/ip/Mash-ems-Baby-Shark-Squishy-Surprise-Characters-Collect-All-6-Series-1/877947459'
When I click on element located `By.xpath(//*[@id="add-on-atc-container"]/div[1]/section/div[1]/div[3]/button/span/span)`
Then the text 'Add to cart' exists

Scenario: Navigate to cart

Given I am on a page with the URL 'https://www.walmart.com/pac?id=0c385ee5-f9e8-457a-854e-d87491381211&quantity=1&cv=3'
When I click on element located `By.xpath(//*[@id="hf-cart"]/span/span/span[1]/img)`
Then the response code is equal to '200'
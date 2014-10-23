Feature: verify the Conventional Loan page works according to requirements
  As a first time visitor to the Owning a Home page
  I want to navigate the Convetional Loan page
  So that I can find the information I'm looking for

Background:
   Given I navigate to the "Conventional Loan" page

@smoke_testing @loan_options
Scenario Outline: Test inbound links in the Conventional Loan page
	When I click on the "<link_name>" link
	Then I should be directed to the internal "<relative_url>" URL
		And I should see "<page_title>" displayed in the page title

Examples:
  | link_name       	  		| relative_url											| page_title 	|
  | Understanding loan options 	| /loan-options/  	    								| Loan Options  |
  | FHA loans 					| /loan-options/FHA-loans/ 								| Loan Options  |
  | Learn more below 			| /loan-options/conventional-loans/#mortgage-insurance 	| Loan options  |

@smoke_testing @loan_options
Scenario Outline: Test outbound links in the Conventional Loan page
	When I click on the "<link_name>" link
	Then I should be directed to the external "<full_url>" URL
		And I should see "<page_title>" displayed in the page title

Examples:
  | link_name       	  											  | full_url		 																								  | page_title 							  |
  | Fannie Mae or Freddie Mac 										  | http://www.consumerfinance.gov/askcfpb/1959/what-are-fannie-mae-and-freddie-mac.html 							  | Consumer Financial Protection Bureau  |
  | unless you’re buying a home with multiple units 				  | http://www.consumerfinance.gov/askcfpb/1961/how-can-i-find-the-loan-limit-for-a-conforming-loan-in-my-county.html | Consumer Financial Protection Bureau  |
  | Maximum loan amount varies by county 							  | http://www.consumerfinance.gov/askcfpb/1961/how-can-i-find-the-loan-limit-for-a-conforming-loan-in-my-county.html | Consumer Financial Protection Bureau  |
  | Good Faith Estimates 											  | http://www.consumerfinance.gov/askcfpb/146/what-is-a-good-faith-estimate-what-is-a-gfe.html 					  | Consumer Financial Protection Bureau  |
  | Learn more about mortgage insurance 							  | http://www.consumerfinance.gov/askcfpb/1953/what-is-mortgage-insurance-and-how-does-it-work.html 				  | Consumer Financial Protection Bureau  |
  | What are Fannie Mae and Freddie Mac? 							  | http://www.consumerfinance.gov/askcfpb/1959/what-are-fannie-mae-and-freddie-mac.html 							  | Consumer Financial Protection Bureau  |
  | How can I find the loan limit for a conforming loan in my county? | http://www.consumerfinance.gov/askcfpb/1961/how-can-i-find-the-loan-limit-for-a-conforming-loan-in-my-county.html | Consumer Financial Protection Bureau  |
  | What is a Good Faith Estimate? 									  | http://www.consumerfinance.gov/askcfpb/146/what-is-a-good-faith-estimate-what-is-a-gfe.html 					  | Consumer Financial Protection Bureau  |

@smoke_testing @loan_options
Scenario Outline: Test Related links in the Conventional Loan page
	When I click Get all the details for "<loan_type>" loans
	Then I should be directed to the internal "<relative_url>" URL
		And I should see "<page_title>" displayed in the page title

Examples:
  | loan_type   	  				| relative_url								| page_title 	|
  | Related Link FHA 				| /loan-options/FHA-loans/ 					| Loan Options  |
  | Related Link Special Programs 	| /loan-options/special-loan-programs/ 		| Loan options  |




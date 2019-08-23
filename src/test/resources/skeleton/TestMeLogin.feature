Feature: Validating  TestMeApp
@Smoke
  Scenario Outline: Registration of TestMeApp
    Given Application is launched
    When User click on SignUp
    Then User provide the fields "<uname>" "<fname>" "<lname>" "<pass>" "<cpass>" "<mail>" "<numb>" "<dob>" "<add>"
    And click on Register button

   Examples: 
      | uname      | fname   | lname  | pass    | cpass   | mail           | numb       | dob        | add              |
      | Thanmay123 | Thamay  | Cruise | Tom123  | Tom123  | tom@gmail.com  | 1234567890 | 12-12-2012 | 1-10-12 MG ROAD  |
      | Darnin456  | Darnin  | Druise | Dome123 | Dome123 | dome@gmail.com | 0987654321 | 11-11-2011 | 34-56 GACHIBOWLI |
      | Dawkard789 | Dawkard | Steyn  | Dale123 | Dale123 | dale@gmail.com | 5432167890 | 10-10-2010 | 67-43 JAPAN      |

 @Sanity
  Scenario Outline: Login with different users
    Given Enter valid username "<uname>"
    And Enter valid password "<pass>"
    And clicks on Login

    Examples: 
      | uname      | pass    |
      | Christ | Christ123  |
     
@Sanity
  Scenario: Purchase a product
    When User clicks on the search tab
    Then User enters the product name
    And User selects the product from the dropdown
    Then User adds the product in the cart
    And User does the payment
@Sanity
  Scenario: User moves to cart without adding anything to it
    Given Launch the application
    When User clicks on Login
    Then User enter the credentials
    And clicks on Login1
    Then Search a particular product
    And Proceed to payment without adding any item to the cart
    Then App doesnt displays the cart icon

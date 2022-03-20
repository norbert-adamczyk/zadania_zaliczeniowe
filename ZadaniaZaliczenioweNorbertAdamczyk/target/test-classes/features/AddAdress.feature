@addressAdd
Feature: Add address to account

  Scenario Outline: I can add address to already created user account
    Given  Active home page and existing account credentials
    When  I click SignIn button
    And  I log in with email <email> and psswd <psswd>
#    And  I click into Addresses Button
    And  I click ADD NEW ADDRESS
    And  I fill fields: alias <alias> address <address> city <city> zipcode <zipcode> phone <phone> and choose country
    And  I submit changes by clicking SAVE
    Then  Success alert appears, comparing input and output data <alias> <address> <city> <zipcode> <phone>

    Examples:
      | email                        | psswd     | alias  | address  | city   | zipcode | phone     |
      | mualojkyxlsatupyrd@kvhrw.com | test12345 | John   | Mainroad | London | 00-050  | 555444666 |
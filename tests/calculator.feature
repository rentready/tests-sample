@fast @example-tests

Feature: Running Cucumber with TestCafe - test feature example
  As a user of calculator
  I should be able to do math operations and get correct results

  Scenario: I click numerical and non-numerical buttons and result should contain correct symbols
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click BtnParanL from calculator-page
    And I click Btn1 from calculator-page
    And I click Btn2 from calculator-page
    And I click Btn3 from calculator-page
    And I click Btn4 from calculator-page
    And I click Btn5 from calculator-page
    And I click Btn6 from calculator-page
    And I click Btn7 from calculator-page
    And I click Btn8 from calculator-page
    And I click BtnDot from calculator-page
    And I click Btn9 from calculator-page
    And I click Btn0 from calculator-page
    And I click BtnParanR from calculator-page
    And I click BtnColon from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "(12345678.90), "

  Scenario: I type numbers and math symbols from keyboard in input field and get correct math result
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I type "2*2/4+1-1" in inputText from calculator-page
    When I press "enter"
    And I wait for 3000 ms
    Then inputText from calculator-page value is "1"

  Scenario: I do simple math operations its sholde be done in correct order
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn1 from calculator-page
    And I click BtnMult from calculator-page
    And I click BtnParanL from calculator-page
    And I click Btn9 from calculator-page
    And I click BtnPlus from calculator-page
    And I click Btn1 from calculator-page
    And I click BtnParanR from calculator-page
    And I click BtnDiv from calculator-page
    And I click Btn2 from calculator-page
    And I click BtnMinus from calculator-page
    And I click Btn2 from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "3"

  Scenario: I extract fourth root from positive number and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn1 from calculator-page
    And I click Btn6 from calculator-page
    And I click BtnSqrtY from calculator-page
    And I click Btn4 from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "2"

  Scenario: I extract fourth root from negative number and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn1 from calculator-page
    And I click Btn6 from calculator-page
    And I click BtnSign from calculator-page
    And I click BtnSqrtY from calculator-page
    And I click Btn4 from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "Error: invalid argument"

  Scenario: I raise number to the power and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn7 from calculator-page
    And I click BtnPowXY from calculator-page
    And I click Btn2 from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "49"

  Scenario: I extract third root from number and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn8 from calculator-page
    And I click BtnSign from calculator-page
    And I click BtnSqrt3 from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "-2"

  Scenario: I raise number to the third power and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn2 from calculator-page
    And I click BtnPow3 from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "8"

  Scenario: I extract square root from number and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn4 from calculator-page
    And I click BtnSqrt from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "2"

  Scenario: I raise number to the second power and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn4 from calculator-page
    And I click BtnPow2 from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "16"

  Scenario: I extract decimal logarithm from number and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn1 from calculator-page
    And I click Btn0 from calculator-page
    And I click Btn0 from calculator-page
    And I click BtnLog10 from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "2"

  Scenario: I raise ten to the second power and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click BtnPow10 from calculator-page
    And I click Btn2 from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "100"

  Scenario: I extract percent from one hundred and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn1X from calculator-page
    And I click Btn1 from calculator-page
    And I click Btn0 from calculator-page
    And I click Btn0 from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "0.01"

  Scenario: I do multiplication operation with Euler's number and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn1 from calculator-page
    And I click BtnMult from calculator-page
    And I click BtnE from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "2.7182818284590452"

  Scenario: I change number's mark from positive to negative and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn1 from calculator-page
    When I click BtnSign from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "-1"

  Scenario: I change number's mark from negative to positive number and result should be correct
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn1 from calculator-page
    And I click BtnSign from calculator-page
    When I click BtnSign from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "1"

  Scenario: I delete one mark from number and result should be the number without last mark
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn1 from calculator-page
    And I click Btn1 from calculator-page
    When I click BtnBack from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "1"

  Scenario: I delete numbers from text field with button clear and the field should be empty
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn1 from calculator-page
    And I click Btn1 from calculator-page
    When I click BtnClear from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is ""

  Scenario: I make math operations with letters and numbers and result should be warning about mistake
    Given I go to page from calculator-page
    And I switches to iframePage frame from calculator-page
    And I click Btn1 from calculator-page
    And I click BtnDiv from calculator-page
    And I click Btn0 from calculator-page
    When I click BtnCalc from calculator-page
    And I wait for 3000 ms
    Then inputText from calculator-page value is "Error: DivByZero"

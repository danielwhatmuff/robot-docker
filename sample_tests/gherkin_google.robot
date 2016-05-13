*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Open Google
Given browser is opened to google
    Then google should be open

*** Keywords ***
Browser is opened to google
    Open browser to google


*** Setting ***
Library  SeleniumLibrary

*** Test Cases ***
Case 1
    Open Landing Page

*** Keywords ***
Open Landing Page
    Open Browser  ${URL}  browser=headlesschrome
    Wait Until Element Is Visible  id:logo_header
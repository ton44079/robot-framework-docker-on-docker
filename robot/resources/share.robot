*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${URL}=  %{URL}

*** Keywords ***
Set Mobile Screen
    Set Window Size  425  768

Set Tablet Screen
    Set Window Size  768  768

Set Desktop Screen
    Set Window Size  1164  768

Open Landing Page
    Open Browser  ${URL}  browser=headlesschrome
    Wait Until Element Is Visible  id:logo_header
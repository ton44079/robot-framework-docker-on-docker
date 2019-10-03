*** Setting ***
Resource  ../resources/share.robot
Resource  ../resources/pages/landing.robot
Resource  ../resources/layout/header_layout.robot

Suite Setup  share.Open Landing Page
Suite Teardown  Close Browser


*** Test Cases ***
Mobile Header
    [Tags]  Development  Staging  Production
    share.Set Mobile Screen
    header_layout.Check Header Should Be Visible
    header_layout.Check Hamburger menu Should Be Visible  
    header_layout.Check Menu List

Tablet Header
    [Tags]  Development  Staging  Production
    share.Set Tablet Screen
    header_layout.Check Header Should Be Visible
    header_layout.Check Hamburger menu Should Be Visible  
    header_layout.Check Menu List

Desktop Header
    [Tags]  Development  Staging  Production
    share.Set Desktop Screen
    header_layout.Check Desktop Header Menu

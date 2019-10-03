*** Settings ***
Resource  ../resources/pages/landing.robot
Suite Setup  share.Open Landing Page
Suite Teardown  Close Browser

*** Test Cases ***
Check Landing Page Section 
    landing.ต้องมี section เขื่อนไข
    landing.ต้องมี Section Core Value

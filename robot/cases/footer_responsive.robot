
*** Setting ***
Resource  ../resources/share.robot
Resource  ../resources/layout/footer_layout.robot
Suite Setup  share.Open Landing Page
Suite Teardown  Close Browser

*** Test Cases ***
Mobile Footer
    [Tags]  SIT  UAT  PROD
    share.Set Mobile Screen
    footer_layout.Check Footer Should Be Visible
    footer_layout.ตรวจสอบโลโก้ line บนพื้นที่สีเขียว
    footer_layout.ตรวจสอบโลโก้ เบอร์ โทร บนพื้นที่สีเขียว
    footer_layout.ตรวจสอบโลโก้ ค้นหาสาขาใกล่บ้าน บนพื้นที่สีเขียว
    footer_layout.รายการเมนูควรแสดงสำหรับ Mobile
    footer_layout.รายการเมนูไม่ควรแสดงสำหรับ Tablet & Desktop

Tablet Footer
    [Tags]  SIT  UAT  PROD
    share.Set Tablet Screen
    footer_layout.Check Footer Should Be Visible
    footer_layout.ตรวจสอบโลโก้ line บนพื้นที่สีเขียว
    footer_layout.ตรวจสอบโลโก้ เบอร์ โทร บนพื้นที่สีเขียว
    footer_layout.ตรวจสอบโลโก้ ค้นหาสาขาใกล่บ้าน บนพื้นที่สีเขียว
    footer_layout.รายการเมนูไม่ควรแสดงสำหรับ Mobile
    footer_layout.รายการเมนูควรแสดงสำหรับ Tablet & Desktop

Desktop Footer
    [Tags]  SIT  UAT  PROD
    share.Set Desktop Screen
    footer_layout.Check Footer Should Be Visible
    footer_layout.ตรวจสอบโลโก้ line บนพื้นที่สีเขียว
    footer_layout.ตรวจสอบโลโก้ เบอร์ โทร บนพื้นที่สีเขียว
    footer_layout.ตรวจสอบโลโก้ ค้นหาสาขาใกล่บ้าน บนพื้นที่สีเขียว
    footer_layout.รายการเมนูไม่ควรแสดงสำหรับ Mobile
    footer_layout.รายการเมนูควรแสดงสำหรับ Tablet & Desktop

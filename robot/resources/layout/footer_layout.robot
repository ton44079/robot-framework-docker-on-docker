*** Variables ***
${mobile_menu_id}=  footer_mobile_menu
${menu_id}=  footer_menu

*** Keywords ***
Check Footer Should Be Visible
    Wait Until Element Is Visible  css:#app > div > footer

ตรวจสอบโลโก้ เบอร์ โทร บนพื้นที่สีเขียว
    Element Attribute Value Should Be  css:#app > div > footer > div > div.v-card__text > div > a:nth-child(1)  href  tel:026278888

ตรวจสอบโลโก้ line บนพื้นที่สีเขียว
    Element Attribute Value Should Be  css:#app > div > footer > div > div.v-card__text > div > a:nth-child(2)  href  http://line.me/ti/p/%40servicetescobroker


ตรวจสอบโลโก้ ค้นหาสาขาใกล่บ้าน บนพื้นที่สีเขียว
    Element Attribute Value Should Be  css:#app > div > footer > div > div.v-card__text > div > a:nth-child(3)  href  https://www.tescolotusmoney.com/th/Contactus/SearchBranch.html

รายการเมนูควรแสดงสำหรับ Mobile
    Element Should Be Visible  id:${mobile_menu_id}

รายการเมนูไม่ควรแสดงสำหรับ Mobile
    Element Should Not Be Visible  id:${mobile_menu_id}
                               
รายการเมนูควรแสดงสำหรับ Tablet & Desktop
    Element Should Be Visible  id:${menu_id}

รายการเมนูไม่ควรแสดงสำหรับ Tablet & Desktop
    Element Should Not Be Visible  id:${menu_id}
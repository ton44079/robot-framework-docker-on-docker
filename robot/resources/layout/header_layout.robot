*** Setting ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${menu1}=  บัตรเครดิต
${menu2}=  บัตรสินเชื่อ
${menu3}=  ประกันภัย
${menu4}=  บริการและอื่นๆ
${header_id}=  header
${hambuerger_menu_id}=  header_hamburger_menu_open
${close_button_menu_id}=  header_hamburger_menu_close

*** Keywords ***
Check Header Should Be Visible
    Wait Until Element Is Visible  id:${header_id}

Check Hamburger menu Should Be Visible
    Element Should Be Visible  id:${hambuerger_menu_id}

Check Hamburger menu Should Not Be Visible
    Element Should Not Be Visible  id:${hambuerger_menu_id}

Check Left Top Menu On Desktop Should Be Visible
    Wait Until Element Is Visible  class:m-s-text

Check Menu List
    Click Element  id:${hambuerger_menu_id}
    Element Should Be Visible  id:${close_button_menu_id}
    Wait Until Element Is Visible  css:.ch-menu-exp
    Element Should Be Visible  css:.ch-menu-phone
    Wait Until Element Is Visible  css:#header > div > div.ch-menu-exp > div > div
    # Element Text Should Be  css:#header > div > div.ch-menu-exp > div > div:nth-child(1) > div > div.v-list-group__header.v-list-item.v-list-item--link.theme--light > div.v-list-item__content > div    ${menu1}
    # Element Text Should Be  css:#header > div > div.ch-menu-exp > div > div:nth-child(2) > div > div.v-list-group__header.v-list-item.v-list-item--link.theme--light > div.v-list-item__content > div    ${menu2}
    # Element Text Should Be  css:#header > div > div.ch-menu-exp > div > div:nth-child(3) > div > div.v-list-group__header.v-list-item.v-list-item--link.theme--light > div.v-list-item__content > div    ${menu3}
    # Element Text Should Be  css:#header > div > div.ch-menu-exp > div > div:nth-child(4) > div > div.v-list-group__header.v-list-item.v-list-item--link.theme--light > div.v-list-item__content > div    ${menu4}
    Click Element  id:${close_button_menu_id}  
    Element Should Be Visible  id:${hambuerger_menu_id}

Check Desktop Header Menu
    Element Should Be Visible  class:desktop-menu
    Page Should Contain Image  css:#header > header > div > div.ms-group > div:nth-child(1) > div > img
    # Element Text Should Be  css:#header > div.desktop-menu > div > button:nth-child(3) > span  ${menu1}
    # Element Text Should Be  css:#header > div.desktop-menu > div > button:nth-child(5) > span  ${menu2}
    # Element Text Should Be  css:#header > div.desktop-menu > div > button:nth-child(7) > span  ${menu3}
    # Element Text Should Be  css:#header > div.desktop-menu > div > button:nth-child(9) > span  ${menu4}
    
*** Keywords ***
Go to profile menu
    Browser.Click   ${top_bar_locator.menu_profile}
    Browser.Wait for elements state  ${login_locator.lbl_login_header}  visible
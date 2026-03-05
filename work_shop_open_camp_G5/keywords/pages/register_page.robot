*** Settings ***
Library    Browser
Library    DebugLibrary

***Keywords***
Verify user cannot register when required fields are empty

    # Browser.Click                ${register_locator.btn_header_profile}
    Browser.Click                ${register_locator.btn_create_account}
    # Debug
    Browser.Check Checkbox       ${register_locator.chk_policy_checkbox}
    Browser.Uncheck Checkbox     ${register_locator.chk_policy_checkbox}
    
    Browser.Wait For Elements State       ${register_locator.lbl_policy_content}        visible
    

    Browser.Click                ${register_locator.btn_signup_create}
    Browser.Wait For Elements State        ${register_locator.lbl_content_first_name}        visible
    Browser.Wait For Elements State         ${register_locator.lbl_content_last_name}        visible
    Browser.Wait For Elements State        ${register_locator.lbl_content_email}        visible
    Browser.Wait For Elements State        ${register_locator.lbl_content_password}        visible







    

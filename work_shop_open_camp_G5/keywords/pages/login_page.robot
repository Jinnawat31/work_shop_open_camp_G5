*** Keywords ***
Input email
    [Arguments]   ${email}
    Browser.Fill text  ${login_locator.txt_email}   ${email}

Input password
    [Arguments]   ${password}
    Browser.Fill text  ${login_locator.txt_password}   ${password}

Click login button
    Browser.Click  ${login_locator.btn_login}

Verify error message for empty email and password
    ${error_message}=  Browser.Get text  ${login_locator.lbl_error_message_email}
    BuiltIn.Should Be Equal  ${error_message}  Please enter a valid email


Verify error message for empty password
    # เช็คประโยคแรก
    Browser.Get text    ${login_locator.lbl_error_message}      contains    There was a problem signing in
    # เช็คประโยคที่สองใน locator เดียวกัน
    Browser.Get text    ${login_locator.lbl_error_message}     contains    It’s our fault, not yours. Please try again later to see if we can work it out.

Verify error message for account does not exist 
    ${error_message}=  Browser.Get text  ${login_locator.lbl_error_message} 
    BuiltIn.Should Be Equal  ${error_message}  The email address or password you entered is incorrect or the account does not exist in IKEA Thailand
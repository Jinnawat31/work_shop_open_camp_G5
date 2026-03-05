*** Keywords ***
# Login with email and password
#     [Arguments]   ${email}  ${password}
#     login_page.Input email    ${IKEA_001.email}
#     login_page.Input password    ${IKEA_001.password}
#     login_page.Click login button

Login with empty credentials
    Browser.Click   ${login_locator.btn_login}
    Browser.Wait for elements state  ${login_locator.lbl_error_message_email}  visible

Login with email and empty password
    [Arguments]   ${email}  
    Browser.Fill text   ${login_locator.txt_email}  ${IKEA_001.email}
    Browser.Click   ${login_locator.btn_login}

Login with password and empty email
    [Arguments]   ${password}  
    Browser.Fill text   ${login_locator.txt_password}  ${IKEA_001.password}
    Browser.Click   ${login_locator.btn_login}

Login with account does not exist 
    [Arguments]    ${email}   ${password}  
    Browser.Fill text   ${login_locator.txt_email}  ${IKEA_001.email}
    Browser.Fill text   ${login_locator.txt_password}  ${IKEA_001.password}
    Browser.Click   ${login_locator.btn_login}

# Login
#     [Arguments]    ${email}=${EMPTY}    ${password}=${EMPTY}
#     IF    "${email}" != "${EMPTY}"
#         Browser.Fill text   ${login_locator.txt_email}  ${IKEA_001.email}
#     END
#     IF    "${password}" != "${EMPTY}"
#         Browser.Fill text   ${login_locator.txt_password}  ${IKEA_001.password}
#     END
#     Browser.Click   ${login_locator.btn_login}
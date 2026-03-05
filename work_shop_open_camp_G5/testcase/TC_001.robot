*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

***Test Cases ***
IKEA_001 - Verify that user cannot login with empty or invalid credentials
    common.Open website
    common.Accept cookie
    top_bar_page.Go to profile menu
    # Verify error message "โปรดกรอกอีเมลที่ถูกต้อง" is displayed
    login_features.Login with empty credentials
    login_page.Verify error message for empty email and password

    # Verify message "เกิดข้อผิดพลาดขณะเข้าสู่ระบบ ขออภัย เกิดข้อผิดพลาดขึ้น โปรดลองใหม่ในภายหลัง" is displayed
    login_features.Login with email and empty password      ${IKEA_001.email}
    login_page.Verify error message for empty password

    # Verify message "อีเมลหรือรหัสผ่านที่คุณกรอกไม่ถูกต้อง หรือไม่พบบัญชีดังกล่าวใน IKEA ประเทศไทย" is displayed
    login_features.Login with account does not exist     ${IKEA_001.email}   ${IKEA_001.password}
    login_page.Verify error message for account does not exist 

IKEA_002 - Verify user cannot register when required fields are empty
    common.Open website
    top_bar_page.Go to profile menu
    register_page.Verify user cannot register when required fields are empty
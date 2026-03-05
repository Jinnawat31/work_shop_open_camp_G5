***Keywords***
Open website
    Browser.New browser  chromium  ${false}
    Browser.New context
    Browser.New page  https://www.ikea.com/
Accept cookie
    ${cookie_visible}=    Run Keyword And Return Status
    ...    Wait For Elements State    ${btn_accept_cookies}    visible

    IF    ${cookie_visible}
        Browser.Click    selector=${btn_accept_cookies}
    END
***Test Cases***
TC01

TC04
    Open website
    Accept all cookies
    Input Product Type          ${product_type}
    Click Search Button
    debug
    Verify product type         
    Click product name  
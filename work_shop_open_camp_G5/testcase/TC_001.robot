*** Settings ***

Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
IKEA_002 - Verify user cannot register when required fields are empty
    common.Open website
    register_page.Verify user cannot register when required fields are empty
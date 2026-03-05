*** Settings ***
Library    Browser

Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
IKEA_002 - Verify user cannot register when required fields are empty
    register_page.Verify user cannot register when required fields are empty
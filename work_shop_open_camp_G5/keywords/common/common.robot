*** Settings ***
Library     Browser
***Keywords***
Open website
    Browser.New browser  chromium  ${false}
    Browser.New context
    Browser.New page  https://www.ikea.com/th
    
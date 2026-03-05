*** Settings ***
Library    Browser
Library    DebugLibrary

***Keywords***
# Open website
#     Browser.New browser  chromium  ${false}
#     Browser.New context
#     Browser.New page  https://www.ikea.com/th
Verify user cannot register when required fields are empty

    Browser.Click                css=#hnf-header-profile
    Browser.Click                css=[data-testid="create-account"]
    Debug
    Browser.Check Checkbox       css=[data-testid="privacy-policy-checkbox"]
    Browser.Uncheck Checkbox     css=[data-testid="privacy-policy-checkbox"]
    
    Browser.Wait For Elements State   css=.pp-skapa__form-field__content >> nth=4        visible

    Browser.Click                css=[data-testid="sign-up-create-account"]
    Browser.Wait For Elements State    css=.pp-skapa__form-field__content >> nth=0    visible
    Browser.Wait For Elements State    css=.pp-skapa__form-field__content >> nth=1    visible
    Browser.Wait For Elements State    css=.pp-skapa__form-field__content >> nth=2    visible
    Browser.Wait For Elements State    css=.pp-skapa__form-field__content >> nth=3    visible







    

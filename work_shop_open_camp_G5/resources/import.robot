*** Settings ***  
Variables  ${CURDIR}/../resources/testdata/testdata.yaml
# Variables  ${CURDIR}/translation/${LANG}.yaml

Resource  ${CURDIR}/../keywords/common/common.robot
Resource  ${CURDIR}/../keywords/features/login_features.robot

Resource  ${CURDIR}/../keywords/pages/top_bar_page.robot
Resource  ${CURDIR}/../keywords/pages/login_page.robot

Resource  ${CURDIR}/../resources/locators/top_bar_locators.robot
Resource  ${CURDIR}/../resources/locators/login_locators.robot

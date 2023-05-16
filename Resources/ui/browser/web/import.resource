*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    yaml

Variables    ${CURDIR}/../web/testdata/test_data.yaml

#common
Resource    ${CURDIR}/../../../../Keywords/ui/browser/web/common/common_keywords.resource

#feature
Resource    ${CURDIR}/../../../../Keywords/ui/browser/web/feature/login.resource

#page
Resource    ${CURDIR}/../../../../Keywords/ui/browser/web/pages/login_page.resource


*** Settings ***
Library         VNTAF
Suite Setup     Suite Initialisation
Suite Teardown  Suite Termination
Test Timeout    30m


*** Test Cases ***

Quick Get Request Test
	#${response}=    get and validate api response for tempo_test
	${response}=    validate parsed cmd output for tempo_test

*** Keywords ***
Suite Initialisation
    vntaf initialize

Suite Termination
    vntaf terminate

*** Settings ***
Documentation   Demonstrating tox by printing versions
Test Timeout    5s

*** Test Cases ***
Show Versions
    ${robot_version}=      Evaluate    robot.__version__    robot
    ${python_version}=     Evaluate    sys.version    sys
    Log To Console    ${EMPTY}
    Log To Console    ${EMPTY}
    Log To Console    Hello from python: ${python_version}
    Log To Console    Robot version: ${robot_version}
    Log To Console    ${EMPTY}

*** Settings ***
Documentation   Demonstrating tox by printing versions
Test Timeout    5s

*** Test Cases ***
Show Python, Robot & Colorama Versions
    ${python_version}=     Evaluate    sys.version    sys
    ${robot_version}=      Evaluate    robot.__version__    robot
    ${colorama_version}=   Evaluate    colorama.Fore.GREEN + colorama.__version__ + colorama.Style.RESET_ALL    colorama
    Log To Console    ${EMPTY}
    Log To Console    ${EMPTY}
    Log To Console    Hello from python: ${python_version}
    Log To Console    Robot version: ${robot_version}
    Log To Console    colorama version: ${colorama_version}
    Log To Console    ${EMPTY}

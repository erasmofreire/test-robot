*** Settings ***
Documentation  Robot Framework Sem Complicação
Library      SeleniumLibrary      timeout=500
Library      ScreenCapLibrary

*** Variables ***
${url}     https://www.demoblaze.com 
${navegador}     chrome

*** Test Cases ***
ChronosTest
  Open Browser     ${url}   ${navegador}
  Maximize Browser Window
  #Inicia gravação de GIF
  Start Video Recording
  Capture Page Screenshot
  Click Link    Laptops
  Wait Until Element Is Visible    link=MacBook Pro
  Click Link    MacBook Pro
  Wait Until Element Is Visible    xpath=//div[2]//a
  Click Element                    xpath=//div[2]//a
  Alert Should Be Present
  Stop Video Recording

  
*** Settings ***
Documentation    Suite description

*** Test Cases ***
Compra de Passagem
    [Tags]    Regressao
    Dado que acesso o site blazedemo
    quando seleciono a origem como "São Paolo
    E o destino como "London"
    E clico no borão Find Flights
    Entao exibe uma lista de voos para o trecho desejado
    Quando seleciona o primeiro voo disponivel
    E preencho o primeiro nome como "Juca"
    E selecioa a bandeira como "American Express"
    E marco a opcao Remember
    E clico em Purchase Flight
    Entao exibe a mensagem de obrigadp
    E o valor como "555 USD"
    
*** Keywords ***
Provided precondition
    Setup system under test
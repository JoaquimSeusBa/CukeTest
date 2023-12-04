Feature: Pesquisa Ponto
Feature realizada para Testar a pesquisa por pontos

  Scenario: Pesquisa em Branco
    Given Browse to web site "https://inteligenciageografica-a377d.web.app/"
    When I press the "button-search-input-field-search" button

  Scenario: Pesquisa ponto
    Given Browse to web site "https://inteligenciageografica-a377d.web.app/"
    When I press the "placeholder=Pesquise no mapa" button
    Given the "data-testid=input-field-search" field is filled with "Belo Horizonte, MG"
    When I press the "button-search-input-field-search" button

  Scenario: Pesquisa pontos em sequência
    Given Browse to web site "https://inteligenciageografica-a377d.web.app/"
    When I press the "placeholder=Pesquise no mapa" button
    Given the "data-testid=input-field-search" field is filled with "Belo Horizonte, MG"
    When I press the "button-search-input-field-search" button
    When I press the "placeholder=Pesquise no mapa" button
    Given the "data-testid=input-field-search" field is filled with "Ouro Preto, MG"
    When I press the "button-search-input-field-search" button

  Scenario: Pesquisa ponto sequencia, voltando ao primeiro
    Given Browse to web site "https://inteligenciageografica-a377d.web.app/"
    When I press the "placeholder=Pesquise no mapa" button
    Given the "data-testid=input-field-search" field is filled with "Belo Horizonte, MG"
    When I press the "button-search-input-field-search" button
    When I press the "placeholder=Pesquise no mapa" button
    Given the "data-testid=input-field-search" field is filled with "Ouro Preto, MG"
    When I press the "button-search-input-field-search" button
    When I press the "placeholder=Pesquise no mapa" button
    Given the "data-testid=input-field-search" field is filled with "Belo Horizonte, MG"
    When I press the "button-search-input-field-search" button

  Scenario: Pesquisa ponto inexistente
    Given Browse to web site "https://inteligenciageografica-a377d.web.app/"
    When I press the "placeholder=Pesquise no mapa" button
    Given the "data-testid=input-field-search" field is filled with "ksdfaiofhhhf"
    When I press the "button-search-input-field-search" button

  Scenario: Pesquisa ponto(auto complete)
    Given Browse to web site "https://inteligenciageografica-a377d.web.app/"
    When I press the "placeholder=Pesquise no mapa" button
    Given the "data-testid=input-field-search" field is filled with "belo h"
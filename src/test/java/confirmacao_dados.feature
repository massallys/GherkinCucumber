@tag
Feature: Confirmacao dos Dados Inseridos

  @positive
  Scenario: Dados Inseridos com Sucesso
    Given Preenchimento completo 
    	When Aceitar confirma��o que concorda com os dados preenchidos
    Then Dados validados e cadastro no app conclu�do

  @negative
  Scenario: Dados Inseridos com Sucesso
    Given Preenchimento completo 
    	When  N�o aceitar confirma��o que concorda com os dados preenchidos
    Then Voltar para edi��o dos dados
@tag
Feature: Confirmacao dos Dados Inseridos

  @positive
  Scenario: Dados Inseridos com Sucesso
    Given Preenchimento completo 
    	When Aceitar confirmação que concorda com os dados preenchidos
    Then Dados validados e cadastro no app concluído

  @negative
  Scenario: Dados Inseridos com Sucesso
    Given Preenchimento completo 
    	When  Não aceitar confirmação que concorda com os dados preenchidos
    Then Voltar para edição dos dados
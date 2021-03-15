@tag
Feature: Tipo de Empresa

  @positive
  Scenario: Selecionar a empresa
    Given Cinco (5) empresas pré cadastradas
    	When Escolher uma das cinco (5) tipo de empresas pré cadastradas
    Then Empresa adiciona com sucesso
    
  @failed
  Scenario: Não selecionar a empresa
    Given Cinco (5) empresas pré cadastradas
    	When Não selcionar uma das cinco (5) tipo de empresas pré cadastradas
    Then Empresa não selecionada
    Then Não conseguirá prossseguir para a próxima tela
    

  @positive and @failed
  Scenario Outline: Selecionar empresa
    Given Cinco (5) <tipo_empresa> pré cadastrada
    	When <selecionar> o  <tipo_empresa>
    Then O <status> será de sucesso 

    Examples: 
      | tipo_empresa |   selecionar     | status  |
      | tipo_1 			 |  selecionado     | success |
      | tipo_3       |  selecinado      | success |
      | tipo_7       |  selecionado     | Fail    |
      | tipo_5       |  não selecionado | Fail    |
      

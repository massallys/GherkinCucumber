@tag
Feature: Tipo de Empresa

  @positive
  Scenario: Selecionar a empresa
    Given Cinco (5) empresas pr� cadastradas
    	When Escolher uma das cinco (5) tipo de empresas pr� cadastradas
    Then Empresa adiciona com sucesso
    
  @failed
  Scenario: N�o selecionar a empresa
    Given Cinco (5) empresas pr� cadastradas
    	When N�o selcionar uma das cinco (5) tipo de empresas pr� cadastradas
    Then Empresa n�o selecionada
    Then N�o conseguir� prossseguir para a pr�xima tela
    

  @positive and @failed
  Scenario Outline: Selecionar empresa
    Given Cinco (5) <tipo_empresa> pr� cadastrada
    	When <selecionar> o  <tipo_empresa>
    Then O <status> ser� de sucesso 

    Examples: 
      | tipo_empresa |   selecionar     | status  |
      | tipo_1 			 |  selecionado     | success |
      | tipo_3       |  selecinado      | success |
      | tipo_7       |  selecionado     | Fail    |
      | tipo_5       |  n�o selecionado | Fail    |
      

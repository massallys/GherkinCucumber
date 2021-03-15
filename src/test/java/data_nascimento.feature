@tag
Feature: Adicionar data de nascimento

  @positive
  Scenario: Data de Nascimento
    Given Números do dia entre 1=> and <=31
    	And Mês em número contando de 1 a 12
    	And Ano contando de 1900 a data do ano atual - 1
    Then Data adiciona com sucesso

  @failed
  Scenario: Data de Nascimento
    Given Números do dia maior que >28
    	When o mes escolhido for fevereiro
    	And Mês em número for menor do que 1 e maior que 12
    	And Ano contando de 1900 a data do ano atual + 1
    Then Data falha 
    

  @positive and @failed
  Scenario Outline: Data de Nascimento
    Given Números do <dia> entre 1=> and <=31
    		But Exceto o <dia> para o <mes> de fevereiro (2)
    	And <mes> em número contando de 1 a 12
    	And <ano> contando de 1900 a <ano> atual - 1
    Then Data adiciona com sucesso no step <status>

    Examples: 
      | dia | mes | ano  | status  |
      |  25 |   5 | 1975 | success |
      |  28 |   2 | 2020 | success |
      |  15 |   7 | 2065 | Fail    |
      |  31 |   2 | 1996 | Fail    |

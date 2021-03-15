@tag
Feature: Endereco da Empresa

  @positive
  Scenario: Inserir CEP
    Given Inserir CEP
    	When CEP for valido
    Then CEP aceito e pronto para carregar a proxima tela de enderenco da empresa
 
 @failed
  Scenario: Inserir CEP
    Given Inserir CEP
    	When CEP não existir
    Then CEP invalido e não prosseguirá para a proxima pagina
 
  @positive and @failed
  Scenario Outline: Insercao das demais informacoes do endereco
    Given Adicionado CEP ao <endereco>
	    And Rua <value>
	    And Numero do endereço <value>
	    And Complemento como opcional <value>
	    And Cidade <value>
	    And Estado sendo os estados os 26 estados validos + distrito federal <value>
	    	But Se for outro Pais que nao seja o Brasil sera direcionado para a regiao de sua localizacao <value>
	    And Pais <value>
	    When Inserir todos esses <endereco> validos
    Then Endereco valido <status>

    Examples: @positive example 
      | 	endereco  | value 					| status 	|
      | 	CEP 		  | 04551010 				| success |
      | 	Rua 		  | Fidêncio Ramos  | success |
      | 	Numero    | 308 						| success |
      | Complemento | N/A 						| success |
      | 	Cidade    | São Paulo 			| success |
      | 	Estado    | SP 							| success |
      | 	Pais 			| Brasil 					| success |
      
      
     Examples: @failed example 
      | 	endereco  | value 					| status 	|
      | 	CEP 		  | 000000					| failed  |
      | 	Rua 		  | Fidêncio Ramos  | success |
      | 	Numero    | 308 						| success |
      | Complemento | N/A 						| success |
      | 	Cidade    | XXXXX 					| failed	|
      | 	Estado    | Holanda 				| failed	|
      | 	Pais 			| Portugal 				| success |

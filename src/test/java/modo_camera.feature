@tag
Feature: Selecionar tipo de foto a ser enviada

-----------------------------------------------------------------------------
  
  @positive
  Scenario: Selecionar (copia de contrato social) na galeria do smartphone
    Given Selecionar uma foto na galeria para o upload
    	When Formatos aceitos apenas jpg, jpeg
    	And Tamanho máximo para o upload for 50 KB
    Then Imagem aceita para upload
   
  @failed
  Scenario: Selecionar (copia de contrato social) na galeria do smartphone
    Given Selecionar uma foto na galeria para o upload
    	When Formatos não aceitos jpg, jpeg
    	And Tamanho ilimitado para o upload
    Then Imagem não aceita
    
  @positive and @failed
  Scenario Outline: Selecionar (copia de contrato social) na galeria do 
  smartphone
    Given Tipo de formato da imagem <formato>
    	When Selecionar o formato também deverá verificado o tamnanho da 
    	imagem <tamanho>
    Then Imagem aceita para upload <status>

    Examples: 
      | Formato  | tamanho (KB) | status  |
      | jpg 		 |     37 			| success |
      | jpeg 		 |     21 			| success |
      | jpg 		 |     320 			| Fail    |
      | gif 		 |     10 			| Fail    |
    
-----------------------------------------------------------------------------

  @positive
  Scenario: Tirar fotocopia da (copia de contrato social)
    Given Selecionar a camera do celular para tirar a foto
    	When Formato da camera aceito apenas jpg, jpeg
    	And Tamanho máximo para o upload for 50 KB
    Then Imagem aceita para upload
    
  @failed
  Scenario: Tirar fotocopia da (copia de contrato social)
    Given Selecionar a camera do celular para tirar a foto
    	When Formatos da camera não aceitos jpg, jpeg
    	And Tamanho ilimitado para o upload
    Then Imagem não aceita

-------------------------------------------------------------------------------

	@positive
  Scenario: Tirar fotocopia do (RG ou CNH)
    Given Selecionar a camera do celular para tirar a foto
    	When Formato da camera aceito apenas jpg, jpeg
    	And Tamanho máximo para o upload for 50 KB
    Then Imagem aceita para upload
    
  @failed
  Scenario: Tirar fotocopia do (RG ou CNH)
    Given Selecionar a camera do celular para tirar a foto
    	When Formatos da camera não aceitos jpg, jpeg
    	And Tamanho ilimitado para o upload
    Then Imagem não aceita
    
    
-----------------------------------------------------------------------------

	@positive
  Scenario: Tirar selfie
    Given Selecionar a camera do celular para tirar a foto
    	When Formato da camera aceito apenas jpg, jpeg
    	And Tamanho máximo para o upload for 50 KB
    	When O app identificar o rosto de uma pessoa 
    Then Imagem aceita para upload
    
  @failed
  Scenario: Tirar selfie
    Given Selecionar a camera do celular para tirar a foto
    	When Formatos da camera não aceitos jpg, jpeg
    	And Tamanho ilimitado para o upload
    	When O app não reconhecer o rosto de uma pessoa 
    Then Imagem não aceita para upload
    
   @positive and @failed
  Scenario Outline: Tirar Selfie
    Given Selecionar a camera
    	When <formato> da camera ser jpg ou jpeg 
    	And <tamanho> for <=50 KB
    	And <reconhecimento facial> for true 
    Then Foto aceita para upload <status>

    Examples: 
      | formato | tamanho | reconhecimento_facial | status  |
      | jpeg 		|   11    | true 								  | sucess  |
      | jpg     |   27 	  | false    						  | Fail    |
      | xts		  |  350    | false 								| Fail    |
      | gif     |   1 	  | true    						  | Fail    |
      
----------------------------------------------------------------------------  
  
  
  
  
  

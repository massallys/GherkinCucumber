@tag
Feature: Adicionar Nome Completo
  
  @positive
	Scenario: Adicionar Nome Completo
		Given Seu nome completo
			And Com apenas letras de A-Z mai�sculas e min�sculas
			And Com letras especiais e acentua��es (Teclado UTF-8 pt-br)
			When No m�ximo o nome completo tiver 25 caracteres
		Then Nome aceito
	
	@failed
	Scenario: Adicionar Nome Completo Com Caracteres Especiais e N�meros
		Given Seu nome completo
			And Com caracteres especiais e n�meros
		Then Nome incorreto
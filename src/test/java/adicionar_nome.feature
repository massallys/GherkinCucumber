@tag
Feature: Adicionar Nome Completo
  
  @positive
	Scenario: Adicionar Nome Completo
		Given Seu nome completo
			And Com apenas letras de A-Z maiúsculas e minúsculas
			And Com letras especiais e acentuações (Teclado UTF-8 pt-br)
			When No máximo o nome completo tiver 25 caracteres
		Then Nome aceito
	
	@failed
	Scenario: Adicionar Nome Completo Com Caracteres Especiais e Números
		Given Seu nome completo
			And Com caracteres especiais e números
		Then Nome incorreto
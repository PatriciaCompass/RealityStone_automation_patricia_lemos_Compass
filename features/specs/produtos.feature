#language: pt

@regression
@pdp
Funcionalidade: Página do produto
  SENDO um usuário do Automation Pratice
  QUERO poder personalizar os produto que irei comprar na página de produtos
  PARA ter uma melhor experiência de compra

Contexto: Estar na página de produto
  Dado que esteja na home
  Quando realizar uma busca por um produto existente
  Então acessar a página do produto

 @change_color_pdp
  Cenário: Trocar a cor do produto na PDP
    Quando alterar a cor do produto
    Então deverá alterar a imagem apresentada na PDP

  @increase_product_quantity
  @increase_product_quantity_only_pdp
  Cenário: Aumentar quantidade do produto na PDP
     Quando aumentar a quantidade do produto
     Então deverá alterar a quantidade exibida na PDP

  @increase_product_quantity
  @increase_product_quantity_Validate_cart
  Cenário: Aumentar quantidade do produto na PDP aumenta no carrinho  
    Quando aumentar a quantidade do produto
    E adicionar o produto ao carrinho
    Então o produto deverá ser adicionado ao carrinho com a quantidade aumentada
    
  @add_product_to_cart_pdp
  Cenário: Adicionar produto ao carrinho pela PDP 
    Quando adicionar o produto ao carrinho 
    Então o produto deverá ser adicionado ao carrinho com sucesso.
    

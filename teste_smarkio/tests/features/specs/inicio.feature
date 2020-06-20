#language: pt

Funcionalidade: Automatizar o site authenticfeet para validar diversas coisas

Cenario: Comprar um produto no site
     Dado que entro no site
     Quando procuro um 'AIR FORCE' e faço a pesquisa
     E vejo os produtos corretamente
     E seleciono o produto que eu quero
     E coloco ele no meu carrinho
     Então ele é enviado para o carrinho com sucesso

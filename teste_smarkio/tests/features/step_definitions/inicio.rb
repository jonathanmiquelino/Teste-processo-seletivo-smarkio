Dado('que entro no site') do
    visit 'https://www.authenticfeet.com.br'
end
  
Dado('procuro um {string} e faço a pesquisa') do |string|
    find('input[class="fulltext-search-box ui-autocomplete-input"]').set string
    click_button(class: 'btn-buscar')
end

Quando('vejo os produtos corretamente') do
    if all("a[class='text-uppercase bold font-size-xs color-black-lgt']")[0].text == has_text?('AIR FORCE')
    else 
        p 'Elemento não encontrado'
    end
end
  
Dado('seleciono o produto que eu quero') do
    find("img[alt='Tenis-Nike-Air-Force-107-Lv8-Feminino-Multicolor']").click
    p 'Elemento não encontrado'

end
  
Quando('coloco ele no meu carrinho') do
    #find_text('div[class="btn-select-skulist"]')[0].click
    #has_text?('Selecione o tamanho').click
    find('label[class="dimension-Selecioneotamanho espec_0 skuespec_41 skuespec_Selecione-o-Tamanho_opcao_41 skuespec_Selecioneotamanho_opcao_41"]').click
    find('a[class="buy-button buy-button-ref"]').click
end
  
Então('ele é enviado para o carrinho com sucesso') do
    assert_selector('a[class="btn btn-large btn-success pull-left-margin btn-place-order"]', visible:true)
end


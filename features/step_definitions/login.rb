Dado('que esteja na aplicação') do
  @sweg_labs = SwegLabs.new
  @sweg_labs.load
end

Quando('preencher os campos {string}, {string}') do |string, string2|
  pending 
end

Quando('clicar em login') do
  
end

Então('deverá exibir a mensagem {string}') do |string|
  
end


Dado('que esteja na aplicação') do
  @sweg_labs = SwegLabs.new
  @sweg_labs.load
end

Quando('preencher os campos {string}, {string}') do |username, password|
  find("#user-name").set username
  find("#password").set password
end

Então('deverá clicar em login para exibir a mensagem {string}') do |msg|
  click_button '#login-button'
end




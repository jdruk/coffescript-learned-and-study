###
  browser-sync --server --files "."
  coffee -wc *.coffee
###

name = 'josafa'
output = document.getElementById("codigo")
output.innerHTML= "Olá #{name} <br>"

output.insertAdjacentHTML('beforeend', 'Tipo string <br>') if typeof name is 'string'

isBoolean = no
output.insertAdjacentHTML('beforeend', 'Tipo  boolean! <br>') if typeof isBoolean is 'boolean'
###
  Interpolação é igual a do ruby!
  ou seja, apenas funciona quando a string estar dentro
  de aspas duplas
###
output.insertAdjacentHTML("beforeend", "#{(5.3456).toFixed(2)} <br>")

longString = "String long apenas para teste"
stringArray = longString.split(" ")

for word in stringArray
  output.insertAdjacentHTML("beforeend", word + '<br>')

# Operações com string praticamente iguais a do java
output.insertAdjacentHTML('beforeend', longString.length)

ternarioNull = null
idade = 18
# açucar sintático da linguagem! é permitido tanto espaço quanto não
if idade?
  output.insertAdjacentHTML("beforeend", "<br>idade")
if velho?
  output.insertAdjacentHTML("beforeend", "velho")

#
checando = ternario ? "Segunda opção"
output.insertAdjacentHTML("beforeend", "<br>#{checando}")

day = 'Sun'
switch day
  when "Mon"
    go work
  when "Tue" then go relax
  when "Thu" then go iceFishing
  when "Sun" then output.insertAdjacentHTML("beforeend", "<br>oi")
  else go work

# quando a operação necessita mais de uma linha o operador then não é necessário

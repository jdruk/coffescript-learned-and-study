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

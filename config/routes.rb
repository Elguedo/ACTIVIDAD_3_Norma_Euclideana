=begin
Este archivo está sujeto a la Licencia Pública General de GNU (GPL)
que se encuentra disponible en el archivo LICENSE.txt adjunto.
Asegúrate de leer y comprender los términos de la licencia antes de
utilizar este código.
=end

Rails.application.routes.draw do
  post 'calcular_norma', to: 'vector#calcular_norma'
end




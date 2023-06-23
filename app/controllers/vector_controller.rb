=begin
Este archivo está sujeto a la Licencia Pública General de GNU (GPL)
que se encuentra disponible en el archivo LICENSE.txt adjunto.
Asegúrate de leer y comprender los términos de la licencia antes de
utilizar este código.
=end

class VectorController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :calcular_norma
  def calcular_norma
    vector = params[:vector].map(&:to_f)
    suma_cuadrados = vector.map { |x| x**2 }.sum
    norma = Math.sqrt(suma_cuadrados)
    render json: { norma: norma, suma_cuadrados: suma_cuadrados }
  end
end



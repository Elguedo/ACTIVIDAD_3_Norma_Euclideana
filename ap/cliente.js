 /* Este archivo está sujeto a la Licencia Pública General de GNU (GPL)
 * que se encuentra disponible en el archivo LICENSE.txt adjunto.
 * Asegúrate de leer y comprender los términos de la licencia antes de
 * utilizar este código.
 */


 document.getElementById('vectorForm').addEventListener('submit', function(e) {
      e.preventDefault();
      var vector = document.getElementById('vector').value.split(',').map(Number);
    
      // Obtener el token de autenticidad del campo meta en el cliente HTML
      var authenticityToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

  
      fetch('http://localhost:3000/calcular_norma', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': authenticityToken // Incluir el token de autenticidad en los encabezados
        },
        body: JSON.stringify({ vector: vector }) // Enviar el objeto con el parámetro 'vector'
      })
      .then(function(response) {
        return response.json();
      })
      .then(function(data) {
        document.getElementById('resultado').innerHTML = 'La norma euclideana del vector es: ' + data.norma;

        document.getElementById('raiz_cuadrada')
        var raizSumaCuadrados = Math.sqrt(data.suma_cuadrados);
        raiz_cuadrada.innerHTML = 'La raíz cuadrada de la suma de los cuadrados es: &#8730;' + data.suma_cuadrados;
      })
      .catch(function(error) {
        console.error('Error:', error);
      });
    });


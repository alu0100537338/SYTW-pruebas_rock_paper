Practica 5 - Pruebas unitarias y rspec
======================================

Enunciado
---------

    Añadir pruebas a Rock, Paper,Scissors.
    
    
Resolucion
----------

* Siguiendo la estructura spec de los apuntes se ha resuelto esta parte de testing,
pudiendo comprobar los tests realizados en el archivo 'spec/rsack/server_spec.rb'
    
* Ademas en el archivo 'tests/test_rock_paper.rb' se pueden encontrar aquellos tests
efectuados usando Tests Unitarios.
    
* Tanto los archivos 'config.ru' como 'rock_paper.rb' y 'lib/rock_paper.rb' han sido modificados
de forma que se pueda realizar la parte de las sesiones y cookies del juego, y por ultimo
se han adaptado los archivos 'public/style.css' y 'views/index.html.haml' para poder mostrar
dichas modificaciones correctamente.
    

Ejecucion
---------

* Para ejecutar la aplicacion utilice desde su consola:
    - rake
    - Acceda a http://localhost:8080

* Para ejecutar los tests unitarios desde su consola:

    - rake test_unit
    
* Para ejecutar los tests con rspec desde su consola:

    - rake test_rspec
    
-----------------------------------------------------------------
Jessica A. Ramos Villarreal - ETSII-ULL

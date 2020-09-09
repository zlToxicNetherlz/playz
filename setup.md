## Correr PlayZ con Modulo de Audio

1) Descargar el .ZIP y descomprimirlo en la carpeta `htdocs` si estás usando Xampp, o en caso de usar Wammp en la carpeta `www`, de tal modo que la ruta final debe quedar como `C:\xampp\htdocs\playz`.

2) Si estas usando Wammp o Xampp deberás crear una base de datos desde el gestor phpMyAdmin llamada `laravel`, en caso de que elijas otro nombre para la base de datos asegúrate de cambiarlo también en el archivo `.env` que se encuentra en la carpeta descomprimida anteriormente, a su vez iniciar los servicios de Apache y MySQL durante toda la ejecución.

3) A continuación abre una terminal y dirigete a la ruta donde tienes el proyecto, es decir: `C:\xampp\htdocs\playz`, y una vez allí ejecuta el comando: `php artisan migrate`.

4) Finalmente podrás correr el servidor y para ello tienes 2 formas de ejecutarlo: 
	1) Ejecutando en la misma consola en la que ejecutaste el comando del paso 3, el siguiente comando `php artisan serve`, de esta manera bastara con que navegues al enlace que aparece en la consola que generalmente será http://127.0.0.1:8000/.
	2) Si estás usando  Wammp o Xampp bastará con que navegues a http://127.0.0.1/playz/index
> Nota: Si un método de ejecución no te funciona prueba el otro.

5) Para probar la implementación del modelo Audio de PlayZ deberás navegar a la ruta `/audios`, los links directos serían:
	- **Para ejecuciones con Wammp o Xampp:** http://127.0.0.1/playz/audios
	- **Para ejecuciones desde linea de comandos:** http://127.0.0.1:8000/audios

Finalmente se puede probar la implementación creando Audios desde el formulario de creación (`Create`) y posteriormente ver los audios agregados desde el botón `List`.
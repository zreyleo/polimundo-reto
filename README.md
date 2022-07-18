# Polimundo - reto backend

instrucciones para levantar el proyecto usando docker:

1. abrir la consola.
2. escribir ```docker run -p 9000:8000 -d regzam/polimundo-backend```
3. abrir el navegador y escribir en la barra de direcciones ```localhost:9000```

enpoints:

```localhost:9000/api/people```

```localhost:9000/api/people/5```

```localhost:9000/api/tickets```

```localhost:9000/api/tickets/5```


requerimientos para levantar en local:

PHP >= 8.0
composer

instrucciones para levantar en local:
1. ```composer install```
2. renombrar el archivo ```.env.example``` a ```.env```.
3. ```php artisan key:generate```
4. crear un archivo en el directorio ```database/database.sqlite```
1. ```php artisan serve```




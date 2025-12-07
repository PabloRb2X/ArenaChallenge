# ArenaChallenge
Flutter challenge to Arena company

Se desarrolló la prueba técnica usando la API pública de la PokéAPI.
Se usó clean architecture y el manejador de estados BLoC/Cubit dentro de la app. La distribución de carpetas se hizo con la recomendación sugerida en la prueba pero haciendo unos cambios a mi consideración.
La app cuenta con un Splash sencillo y al momento de cargar, se muestra el home que contiene un listado de los Pokémon y una barra de búsqueda donde se trata de encontrar un Pokémon en específico. La lista de Pokémon está en un scroll infinito donde la api está paginada para buscar los siguientes. En la AppBar contiene un botón de favoritos donde se muestran los Pokémon que han sido añadidos al mismo. A su vez se pueden hacer operaciones de guardar y borrar, para esto se usó la librería de Hive para el almacenamiento local.
Las transiciones entre vistas se crearon con la librería Fluro para cada ruta mencionada en el documento del reto técnico.
Para el networking se usó la librería Dio.
En los archivos Utils de cada módulo se trató de poner las constantes ocupadas por cada widget pero me faltaron algunas.
Me hubiese gustado hacer mejoras en la parte de la vista y tener todo lo de UI (tipografía, colores) más desacoplados pero no me dio tiempo, además de los tests correspondientes a los widgets y a cada Cubit.


# <span style="color:darkblue"> Modulo 2 </span>

## Clase 01/02/2022

### Introdución

Serán 4 clases en total.
Se empezará la primera clase con análisis con R, las paqueterías usethis, here, y Bioconductor.
Después la segunda clase se verán paquetes para almacenar los datos de expresión, como SummarizedExperiment y ISEE, y recount3 para descargar datos públicos.
La tercera clase será sobre explorar modelos estadísticos con ExploreModelMatrix, y hacer el análisis de expresión diferencial usando limma.
La ultima clase será de revisión, y spatial transcriptomics con spatialLIBD, mas opciones de carreras, networking, comunidades asociadas.

 

Slack, herramienta para compartir información con diferentes personas. Es un tipo de chatroom.


Para Windows, la instalación de base es para cuando se comienza a usar R por primera vez, Rtools es para configurar paquetes desde código fuente.
Se requieren instalar los paquetes especificados en el curso.
En mac generalmente se instala el pkg, pero si se tiene una mac de arm64 se requiere la versión de R correspondiente.

Para poder usar los paquetes de bioconductor se requiere instalar el paquete de BiocManager.


Se evalua la participación, trabajos, y proyecto final de compartir código.
Las notas/trabajos se guardaran en github.
Se deberá crear otro repositorio aparte para el proyecto final.

### Introducción de R
R es gratis, de acceso libre, y es una de las opciones dominantes en la bioinformatica para coding.
Es usado para análisis de datos de bioinformatica, sobre todo en rnaseq en análisis de datos y secuenciación masiva de rna, y se logra esto mediante el proyecto bioconductor.
Bioconductor.
Permite compartir código en R con ciertos estándares.
Por ejemplo, pasa un proceso de revisión de pares, debe estar disponible en distintas plataformas, para que existe mayor confianza en los paquetes de Bioconductor.

R Weekly envia información de R semanalmente, y en su pagina web hay blogposts de paquetes en R. 


Por ejemplo, un paquete de R que obtiene paleta de colores de una imagen.

Tambien contiene dvideos, podcasts, tutoriales de distintos temas.

Existen varias opciones para obtener información de R, como Twitter, rbloggers.

TidyTuesday y DatosDeMiercoles son para obtener información/datos y contestar preguntas.

Viene un link de como pedir ayuda en la pagina web del equipo del profesor.
Existen distintos sitios/comunidades en los cuales puedes pedir ayuda.

En el sitio web del profe viene material donde esta involucrado el profesor.

### GitHub desde RStudio
GitHub permite la creación de páginas web estáticas.
Es recomendado usar el mismo nombre de usuario en distintas redes, para que las demás personas fácilmente puedan encontrar informacion.


Rstudio cuenta con varias versiones.


Existen paquetes que permiten cambiar la interaccion con RStudio.
Se usaran los paquetes rsthemes via github y suncalc via CRAN.

La parte de arriba es para instalar paquetes, que son necesarios para edit_r_profile.
Usethis posee esta funcion edit_r_profile
Usethis contiene muchas funciones que ayudan a interactuar con los archivos para configurar R, y uno de esos archivos es .Rprofile.
Rprofile vive en diferentes lugares dependiendo del sistema operativo.
Por eso es bastante útil porque con usethiss se puede crear donde se desee.


Perfil de R del profesor.
Atajo Ctrl+Shift+C, permite Volver todo el código comentado.

Este código es para configurar el perfil de R que se encuentra disponible en la pagina del profe.
Ayuda a usar el paquete de rsthemes.
La primer parte define el tema de RStudio si la sesión es interactiva y si el paquete rsthemes esta instalado.

Entonces dependiendo de la hora elige un tema para la sesión.

Entonces ahora desde Addins se puede seleccionar el siguiente tema favorito.
Igualmente este código permite iniciar paquetes si se encuentra una sesión interactiva.
Tambien cuenta con informacion personal.



Existen sitios en los que se encuentra informacion sobre como configurar un perfil de R.

Por ejemplo, hay paquetes como cowsay que es para imprimir animales.

Existen tambien varios cheatsheets sobre como usar Rstudio 


Existe distinta información en estos links, como este cheatsheet.

 

Por ejemplo, con click izquierdo, alt, y flechas, se puede aumentar el numero de líneas que abarca el cursor.



Para uso de las notas y el proyecto final, se usaran Rstudio projects, los cuales organizan código de un proyecto, y se ligaran a un repositorio de github.

Se requerirá usethis para esto.
Create_project: Permite generar un proyecto.
usethis::create_project("~/Desktop/rnaseq_2022_notas_envivo")

Se crea el directorio, se activa el proyecto, se creo el directorio R, se genero un archivo de configuración rproj, se genero gitignore con .rproj.user.


Se crea un nuevo archivo para el proyecto de notas.


Se le añade el prefijo 01 para que los archivos se encuentren documentados.


Se creo el archivo automáticamente en el directorio de R.

Ahora creado ese script, se hace un copy and paste de la información de la pagina del profe.



Sessioninfo, paquete que obtiene información de la sesión.

Options(width = number), funcion que permite cambiar el máximo numero de caractes por línea.
Session_info(), es una funcion muy útil para mostrar a los demás como correr el código y reproducir los resultados, indicando versiones, sistema operativo, fecha, paquetes, etc. 
Here, ayuda a escribir código que sea compartible.

Setwd y getwd, son funciones de R que definen/obtienen el directorio de trabajo.
Si un código viene con la funcion setwd, entonces el código no se podrá ejecutar si el directorio que indica no lo posee el usuario.
En vez de usar esos comandos, al usar el paquete de here, permite escribir código donde todo sea relativo.

Mediante la funcion here() permite obtener el directorio/posición del proyecto, y se le puede proporcionar entre comillas un nuevo directorio al cual añadir a la ruta, que puede ser empleado para crear ese nuevo directorio.


Por ejemplo, con getwd, no funcionaria si se estuviese cambiando la posición entre los distintos directorios.


Funcion dir.create, permite crear un directoria a partir de una ruta del nuevo directorio.

Al parámetro showarnings se le debe de asignar FALSE en caso de que ya existe el directorio a crear para evitar que al correr el código salte un error.

A partir de la línea 17 de código son ejemplos donde se guardan datos en los directorios indicados con here.
Dir.create no sobreescribe directorios.

Al final de imprimir la informacion de una sesión, muestra donde se encuentran instalados los paquetes.

Al inicio de un código siempre se ponen los comandos de las librerias, library, para que así si ocurre un error este ocurre al inicio de la ejecución del código y no al final.


Ggplot, es un paquete para visualización de datos.g

Al crear un pdf, la funcion pdf tiene un parametro llamado useDingbats, que si es FALSE es mas fácil editar el pdf con ilustradores.

Con ctrl+enter se selecciona todo el código.

Se usará usethis para ligar el proyecto a un repositorio de github.

Con create_github_token, abre el navegador a la pagina de github para crear el token.



En Mac y Windows se puede usar la funcion gitcreds_set para pegar el token. 
En linux requeriría usar edit_r_environ, pero windows y max aceptan tambien esta funcion.

Entonces la funcion edit_r_environ genera un archivo .Renviron, en el cual en la línea GITHUB_PAT se añade el token del usuario.
Se deja una ultima línea en blanco en el archivo, y el Renviron es para lo de github.
Entonces una vez guardado el archivo se reinicia R, para que R reconozca y lea .Renviron, y lo actualice. 
Ahora con esto R tiene un token que identifica al usuario para su cuenta de github.


Gitcreds es mas seguro, dado que el token del usuario de github será encriptado. Con la funcion anterior el token queda en un archivo.


Se debe también configurar el perfil de github.
Se logra esto con la funcion edit_git_config.

Esto abre el archivo de configuración de git, el cual al inicio contiene la informacion user, que se compone del nombre y el email de github. La separación es de 4 espacios.
Entonces para que funcione github se debe de tener las siguientes características, el name y email.


Una vez hecho esto, se usa el comando use_git, para inicializar el repositorio.


Se reinicia R studio, y ahora ya esta hecho el repositorio local, además de que aparece en la esquina superior derecha el apartado Git.

Ahora para que el repositorio se encuentre en github se usa la funcion use_github, que crea el repositorio remoto con el nombre del proyecto que contiene todo.


No es recomendable hacer un control de versiones para archivos mayores a 50 megas.

Opciones para obtener el material del curso.
Con use_course, descarga la versión actual de uncurso, o se puede clonar desde git el repositorio.

Tambien con estos paquetes de R se puede clonar el repositorio.

Tambien se pueden crear paginas web usando R, las cuales se les puede hacer con un estilo postcard.

### Postcards
Es un paquete que tiene varios templados para paginas web, que permite crear cartas de presentación.
La ventaja de una pagina web es tener una forma de presentar la trayectoria del usuario de una forma profesional.

Atajo Ctrl+flecha arriba
Al escribir un comando en la consola, permite autocompletar mostrando los comandos que coincidan con los caracteres iniciales que se encuentren escritos en la consola en ese momento.

Los commits, push, y pull se realizan desde rstudio.


Al hacer un commit, aparece una nueva ventana que muestra las diferencias entre los archivos y todos los nuevos cambios, además de las opciones para hacer el commit, push, pull, entre otras.

### Bioconductor.

Bioconductor es un repositorio de paquetes de R para el análisis y comprensión de datos genómicos masivos.

Blog para usar bioconductor.
http://lcolladotor.github.io/2014/10/16/startbioc/#.XqxNGRNKiuo

Tiene bastante información el sitio web de bioconductor.
Tiene informacion sobre su instalación, uso, desarrollo, aprendizaje, etc.


Docker esta disponible como Bioconductor.

Bioconductor tiene tres advisory boards, juntas directivas.
Una cientifica, una tecnica, y otra de comunidad.

 

El Proyecto comenzó en 2001, cuenta con un equipo core pagado por donativos, que son los encargados de la infraestructura de la pagina y los paquetes.

Tambien hay un articulo que habla de los paquetes de bioconductor.
Bioconductor tiene que ver con R.

### Búsqueda de paquetes de bioconductor

Del lado izquierdo vienen 4 categorias.
Software, datos de anotación, datos experimentales, y flujos de trabajo 
Software es el mas común y el que la mayoría de usuarios utilizan.

Los paquetes de workflow son paquetes que explican como usar varios de los paquetes de software, en conjunto.

Los workflows para análisis de expresión de genes podemos encontrar 13 workflows, entre los cuales destaca rnaseqgen, creado por Michael Love, que tambien creo DEseq2, que son los dos paquetes principales para análisis de expresión diferencial.
Luego estar RNAseq123, donde explica limma y edgeR, que son el segundo y tercer paquete mas usado para expresión diferencial.

En software, technology, y RNAseq, el paquete mas descargado es lima, siguiendo edgeR.
Uno se puede enfocar a escoger paquetes por Rank o por autores.
Recount

Las dependencias indican el numero de paqueterías requeridas para su funcionamiento.

Support muestra la cantidad de preguntas contestadas y la cantidad de preguntas totaltes.
Build indica los errores ocurridos.

Una paqueteria puede tener asociados varios artículos.
Vignette es como un tutorial de la paqueteria.



Bioconductor requiere que un paquete cuente con una vignette para su publicación.

La sección de detalles incluye los biocViews que son las palabras claves.
Imports indica los paquetes necesarios para la paqueteria.

Cuando se tengan dudas, estas se contestan en el repositorio en el apartado de Issues, en el sitio de ayuda de bioconductor.
La ventaja de usar sitios públicos como foros es que todos pueden consultar las dudas ahí.

 


Existen dos versiones de bioconductor, y se debe que cada 6 meses se actualiza.

En la sección de Home, se pueden encontrar información de las versiones de Bioconductor.

En la sección de New Software Packages, se muestra un resumen de los nuevos paquetes añadidos.

En la sección de Eventos, viene información de eventos futuros y recientes/previos.


Sección de material de eventos previos, Course material, contiene información de varias presentaciones.

Congreso de bioconductor virtual. En las mañanas son platicas y en la tardes son talleres.



### Ejercicio grupal

Package 1

-> Nombre: biodbUniprot

-> Resumen

Permite acceder y recuperar información de la base de datos Uniprot, siendo únicamente necesario el accession number de la proteína, además ejecuta consultas de servicios web para buscar entradas.

-> Por que la utilizaríamos

Este package resulta muy útil para proyectos de distinta índole, pues permite acceder a información de proteínas teniendo el accession number de estas.

-> Observaciones

Cuenta con una descripción clara del funcionamiento de la paquetería en su vignette, explicando desde su instalación hasta el manejo de sus funciones. Esta paquetería funciona en todas las plataformas, en las cuales no se han reportado errores por el momento.

-> Link:

http://bioconductor.org/packages/release/bioc/html/biodbUniprot.html

Package 2

-> Nombre: surfaltr

-> Resumen

Este package se centra en optimizar el procesamiento de isoformas de modo que sea mas fácil tanto la comparación como la visualización de estas, este package empareja las isoformas que se ingresan y predice sus topologías para de esta forma retornar una salida grafica personalizable.  

-> Por que la utilizaríamos

Este package resulta muy útil para proyectos de investigación en el área de la salud puesto que permite predecir topologías de proteínas membranales que se pueden utilizar como blancos terapéuticos.

-> Observaciones

En su vignette cuenta con una descripción muy precisa y detallada de las funciones de la paquetería con varios ejemplos, y también explica sobre el manejo de los datos que requiere y su instalación. Esta paquetería se encuentra en todas las plataformas, y por el momento no se han reportado algún error.

-> Link:

http://bioconductor.org/packages/release/bioc/html/surfaltr.html



## Clase 02/02/2022

### SummarizedExperiment
Este paquete sirve para almacenar nuestros datos biológicos, y organizarlos.
Podemos tener varia información de los experimentos, como puede ser información de los genes e información de las técnicas/procedimientos.
Entonces para esta información se requieren de varias tablas para poder organizarla, y una forma sencilla de hacerlo es usando esta paqueteria.
Otra opción es que se creara una base de datos para toda la información.

Workflow de rnaseqGene, explica como usar ese paquete de manera mas detallada que la vignette.
Workflow contiene paquetes de bioconductor que explican como usar diferentes paquetes, conteniendo una vignette mucho mas avanzada. 

La información de summarizedexperiment se almacena en tres tipos/familias de tablas.
ColData, RowRanges, y assay(s).
RowRanges, contiene la informacion de los genes. Puede que tenga ese nombre por otro paquete llamado genomic ranges, que es un paquete útil para almacenar información a lo largo de las coordenadas del genoma.

En assays, cada renglón es un gen, y cada columna será una muestra.
Entes tenemos a la tablas de rowranges y assay(s) con el mismo numero de renglones, pero con distinto numero de columnas.
Por ejemplo, rowRanges puede contener una columna de los cromosomas, otra con la posición inicial y final, el tipo del gen, el contenido de GC, etc.

El objeto que se tiene en rowRanges es un objeto de clase GRanges.

En colData, si es rotada la tabla, en cada renglón se tiene información de una muestra, y en cada columna se tendrá una variable de la muestra, por ejemplo sexo, grupo, etc.

Si hacemos un subconjunto de genes, se tendrá información de los genes entre las tablas rowranges y assays, y si se crea un cubconjunto a partir de las columnas de colData o assays, obtendremos un subconjunto entre assays y Coldata.
Assay(s) en si es una lista de tablas.


Se tiene un articulo donde se habla de manera mas detallada sobre el objeto de SummarizedExperiment.

exptdata, conocido como metadata, esa funcion ayuda a accesar a información extra que no tiene en forma de los experimentos (existe mayor libertad para guardar datos ahí).

Assays puede contener varias tablas de las mimas dimensiones con respecto a los genes.


Este diagrama muestra mucha información sobre como son los subconjuntos.

### GenomicRanges

Es un paquete que define el objeto para la información de los genes. Es un paquete mas antiguo.
Contiene 5 vignettes.

Objeto de GRanges
Contiene varios elementos/atributos de información.
Seqnames, contiene a los cromosomas.
Se almacena con un objeto llamado Run Length Encoding, el cual ayuda a almacenar información eficientemente, indicando con un vector los elementos que se repiten y otro vector con los nombres.

Ranges contiene la informacion de las coordenadas en un objeto IRanges, el cual viene de Interval Ranges. Almacena los rangos/coordenadas de los genes dándole como input las coordenadas de inicio, las del final, y tambien sus nombres.

Strand, contiene información sobre la orientación de la cadena, indicando si es forward, reverse, o cualquiera.
GRanges puede almacenar varios elementos extra, como score, GC, etc. La informacion puede ser de distintos tipos de dato.
Con un objeto de summarizedexperiment, al usarse la función rowRanges, devuelve un objeto GRanges.

Si se usa la funcion de RowData, lo que va a accesar son las variables opcionales.

 

Un paquete que está muy relacionado con las coordenadas de genes pero que no se usa directamente con summarizedexperiment, es rtracklayer, el cual ayuda a leer datos de diferentes formatos (GFF, BED, etc).
En un archivo GFF se puede tener toda la base de datos de la anotación de un genoma.
Entonces así se puede leer desde un sitio web como genecode archivos gtf3 con toda la informacion de los genes, y los podemos usar para el objeto de summarizedexperiment en RowRanges.

### Ejercicio a continuación de 03-summarizedexperiment.

Primero se carga el paquete de SummarizedExperiment.

Se creará un objeto de tipo SummarizedExperiment, el cual contendrá 200 genes a lo largo de 6 muestras.
Luego se generara una serie de números al azar con set.seed, y para que sea reproducible se deja la semilla en el código. Estos umeros al azar ya están predeterminados, y solo se cambia la posición de inicio donde se leen los números.
Una vez generados los números, se usa la funcion runif, que genera números al azar siguiendo una distribución uniforme. Se crearon estos números entre 1 y 1e4 (10000).

Ahora se debe de definir información de los genes.
Entonces, la primera columna serán los nombres de los cromosomas a los cuales pertenecen los genes.
La segunda columna contendrá las posiciones de los genes. Dado que runif genere tambien números con decimales, entonces para las posiciones se usa la funcion floor para que redondee los números.
La tercera columna se añade la orientación de la cadena/strand
La ultima son para los IDs, que serian parte de los metadata.

Dado que los genes no tienen nombre, se les puede añadir un nombre a las filas con la funcion names a rowRanges
Se hace esto dado que a veces los nombres de genes no son lo mismo que los IDs
Entonces una vez definida la informacion de los genes, ahora se crea la informacion de las muestras.
Entonces a estas muestras se les añade la variable de tratamiento, y se les asigna nombres con la funcion row.names

Una vez creados los tres componentes necesarios para SummarizedExperimente, ahore se puede crear el objeto donde se definirán los assays, rowranges y coldata.

Dado que los assays pueden tener mas de una tabla, porque recibe las diferentes tablas en una lista, entonces se usa la funcion simplelist

Si se imprime el objeto creado, se puede ver su informacion correspondiente.
Entonces este objeto su clase es RangedSummarizedExperimente, RSE
Tiene 200 filas y 6 columnas, que vendrían a ser 200 genes y 6 muestras.
Metadata, se encuentra vacio por no darsele ese tipo de informacion.
Assays menciona que solo tiene una tabla llamada counts
Rownames son los nombres de los genes.
Rowdata menciona las columnas de informacion que se tienen en el rowranges, y la única es featureid.
Colnames, contiene los nombres de las muestras
Coldata names, menciona las variables que se tienen con informacion de las muestras, que en este caso solo se tiene una, treatment, tratamiento.

Ahora se pueden usar varias funciones en el objeto RSE para acceder a sus datos o manipularlo.
Por ejemplo, dim menciona numero de filas y columnas.
Dimnames devuelve una lista que menciona los nombres de las filas y columnas (muestras).

Assaynames, devuelve los nombres de las tablas principales del objeto, que en este caso es Counts.

Si se quiere acceder a esa informacion, se puede usar la funcion assay, que recibe el objeto RSE y la tabla que acceder de assays, y si solo es una devuelve la única que tiene.


Si se intenta acceder a un assay que no existe devuelve un error.

Para acceder a la informacion de los genes se usa rowranges, que devuelve un objeto granges.
Si se quiere acceder solamente a la informacion de las columnas de los genes (las columnas extras), se puede usar la funcion rowdata.

Rowdata seria equivalente a usar la funcion ncols con el output que devuelva la funcion rowranges, que es un Granges.

Para obtener informacion de las muestras se usa la funcion coldata, devolviendo un dataframe

ColData tiene un DataFrame, en vez de un data.frame, la cual permite tener columnas con otros tipos de datos (lo cual un data.frame no puede tener), como Rle, y al imprimirse, si esta es muy larga, imprime el inicio y final. Si fuese un data.frame, imprimiría todo.

### Ejercicio pequeño de practica

El primer comando accede a la informacion de los primeros 2 genes, y la segunda a la informacion de las muestras A, D, F.


Se puede acceder de distintas maneras a las muestras y a los genes.

Which genera un vector numérico a partir del vector lógico

### Paquete iSEE
Interactive SummarizedExperiment Explorer

Provee una interfaz dinámica para explorar datos de SummarizedExperiment.

Este paquete usa el paquete de shiny, el cual permite hacer paginas interactivas con R y java script.
Shiny es de RStudio.

Tiene 7 vignettes iSEE, incluso permite reconocimiento de voz.

Se vera solamente la primera por ser la guía de usuario para aprender a usar el paquete.

Se carga el paquete con library, y a la funcion iSEE se le pasa un objeto de SummarizedExperiment.


Entonces iSEE genera una nueva ventana.

Se puede abrir iSEE en navegador en open in browser, aunque es bastante similar.
Se tiene entonces la tabla interactiva de Raw data, que contiene la información de los genes.
El siguiente panel es el feature assay plot.
Feature es un nombre genérico, porque se puede tener genes, exones, uniones de exones, transcritos. Entonces para abarcar a todos estos se le dio el nombre de feature, englobándolos a todos.
Este panel verde muestra informacion de un solo gen
En el eje y esta mostrando las cuentas de ese gen, que eran los valores de expresión de ese gene a lo largo de las 6 muestras.
Esto es una grafica de estilo violín, donde muestra la distribución de los valores de expreison para ese gene. 

Si se quiere cambiar de gen, se hace mediante data parameters.

Dado que puede ser tedioso tener que ir seleccionando los genes uno por uno, se puede pedir que se reciban los parámetros de toda una tabla.
Entonces al tener esta opción, se puede seleccionar los genes que pertenecen al panel de row data table.

Esto permite que este panel se ligue con otros paneles.


Aquí solo hay informacion de un gene, pero se puede añadir informacion al eje x.

Por ejemplo, de columna data, que únicamente contiene al tratamiento.

Tambien se puede modificar por otros aspectos en parámetros visuales.

Por ejemplo, colores que son dados dada la informacion de la columna, manteniendo así los valores unidos y no separados.

Entonces ahora en rojo están las muestras CHIP y en azul las muestras input.

Column data plot 1 grafica variables que se tienen de las muestras.
En este caso solo hay una variable, que es el tratamiento.

Este sitio permite organizar los paneles e incluso eliminarlos.

Entonces dado que se elimino un panel, se puede aumentar el tamaño de los otros para que ocupen su espacio.
El ancho máximo de la ventana es de 12 columnas.


Ahora se tiene una imagen mas ancha.

Row data plot 1, grafica informacion de la tabla de genes, que en este caso solo se tiene a los feature_id.
Sample assay plot, muestra los niveles de expresión a lo largo de una muestra de todos los genes.

Entonces cada gen es un punto, y al poner encima el mouse/cursor indica cual gen es.
Column data table 1, permite explorar informacion de las muestras, que solo es el tratamiento.

Entonces podemos ligar columna data table a sample assay plot, para así acceder a distintas muestras.
No tiene muchas opciones visuales en este caso por haber pocas variables.

El ultimo panel es un heatmap.
Este puede tener uno o varios genes, con informacion de las muestras.

Por ejemplo, se pueden añadir mas genes


Esto son las bases (lo básico) de iSEE.

Las figuras se pueden descargar.
Se puede elegir cuales descargar.

Por ejemplo, en formato pdf se pueden descargar

Tambien se puede guardar la configuraicon de todas las opciones escogidas.

Tambien cuenta con una ayuda para mostrar el funcionamiento de iSEE.
Para el tour que ofrece la ayuda viene asociado con el set de ejemplos de Allen, que es el set de datos que muestran en la vignette

Si se desea crear un objeto con ese set de datos se puede hacer.

Ahora se vera el paquete single cell experiment


SingleCellExperiment expande el paquete de SummarizedExperiment.

Esta imagen es similar a SummarizedExperiment, en el que contiene rowdata, assays, coldata y reduced dims.
Entonces se tiene informacion de los genes, las cuentas de los genes, la informacion de las muestras, y la ultima es reduceddims, en la que se almacenan valores de componentes principales.
SingleCellExperimente aparte de esto tiene otras cosas que lo vuelven mas eficiente, y permiten almacenar datos a nivel de cell.
Ese tipo de objeto se comporta como un SummarizedExperiment pero con cosas extras.

Se usa en el paquete de spatilILIBD para almacenar ciertos datos.

Tambien hay otro articulo donde muestra otra imagen de esta clase


Tambien tiene un resumen de los pasos para analizar datos de a nivel de célula única con bioconductor.

 

Este tipo de objetos es bastante usado, y el profe hizo uno, el cual se descarga con la funcion fetch_data de spatialILIBD.

Entonces este objeto llamado sce_layer, es de clase SingleCellExperiment.
Tiene mas de 22000 genes y 76 columnas, que es una combinación de muestras y capas de muestras.
Son datos de una region del cerebro, que son como 7 capas, 12 muestras en total, que daban 84 muestras, pero en algunas de las masas no se tenia todas las capas, y por eso son 76.
Ahora se tienen 2 assays, que son cuentas normales y las normalizadas, los logcounts.
Los nombres de los genes son IDs, y se tienen 10 columnas de informacion de los genes en rowdata
Se tienen entonces 76 muestras, con 13 columnas de informacion de las muestras.
Tambien se tienen 6 dimensiones reducidas.


Este objeto tiene mas informacion, y el paquete de lobstr tiene la funcion obj_size, que permite obtener el tamaño de un objeto, que es de 32 megas.

Igualmente este objeto se puede visualizar con iSEE.



Tendremos ahora mas informacion con este objeto.
Primero tenemos un nuevo panel llamado reduced dimension plot 1, con el que en el PCA se observa la dimensión 1 contra la 2.


Igualmente se pueden modificar sus parámetros, como colorear cada punto de acuerdo al layer/capa del cerebro.

Igualmente se cuenta con mas informacion de los genes.

Por ejemplo, se puede ordenar la expresión de un gen en diferentes capas del cerebro.

### Ejercicio, reproducir la imagen usando iSEE
Después, hacer un heatmap con los genes MOBP, MBP y PCP4.
Y luego ver las capas donde se expresan los genes MOBP y MBP.

Para el ejercicio, layer_guess_reordered y layer_guess_reordered_short son lo mismo.
Para los porcentajes se agregan de manera manual, y los colores no es necesario que coincidan.

Para el heatmap, se ocupan los IDs de los genes.

Edit feature names, permite añadir a estos genes.

Se pueden agrupar los genes por distintos paramentros.
Con el heatmap se puede resolver lo de las capas de expresión.

 

### Datos de RNA.seq a través de recount3.
Se vera como usar datos de secuenciación masiva de RNA y el paquete recount3.

Primero se vera a la herramienta SPEAQeasy

SPEAQeasy, permite procesar los datos crudos de FASTQ y crear objetos de Ranged Summarized Experiment.

Entonces permite para pasar FASTQs, hacer un control de calidad con FASTQC, alinearlos, cuantificar genes, exones, uniones de exones, cuantificación de transcritos, y eventualmente crear objetos RSE.
Este proceso es computacionalmente demandante, por lo que es necesario de un cluster. Dependiendo de las muestras que se tengan será el tamaño de cluster que se necesita, o simplemente esperar mas tiempo a que se ejecute.
Speaqeasy permite hacer todo este flujo de trabajo.

Hay varias ligas de referencia en la pagina del curso.

### Proyectos recount
Otra opción es usar datos de proyectos de recount.
Recount en si es un proyecto que ha tenido tres fases.
La primera fase es ReCount, donde no existe R.
La segunda es recount, donde ya existe R.
La tercera es recount3.
Recount, en este proyecto al inicio se procesaron 20 estudios públicos, de humanos, ratones, ratas. 
La idea de este proyecto fue que dado que no todos tienen el poder computacional para procesar los datos de rna-seq, por lo que de manera uniforme procesaron datos de RNA-seq, por lo que si alguien quiere comparar entre diferentes sets de datos, puedan eliminar la fuente de ruido que causa el usar diferentes herramientas analíticas. Entonces al tener los datos procesados de manera uniforme, ahora se pueden comparar y las diferencias van a ser biológicas o tenicas del lado biológico, ya sea por uso de diferentes reactivos en el protocolo de secuenciación.
Este articulo de 2011 de ReCount tuvo bastantes citas de estadísticos, porque varios querían desarrollar un método de expresión diferencial y en vez de procesar los datos, los obtuvieron de ReCount.
Después de varios años surge la fase 2 de recount.
recount, paso de 20 estudios a 2040 estudios aprox.

Para procesar esos datos, se ocupo software que corriera en la nube, por lo que se uso Amazon de AWS, lo cual involucro toda una parte técnica de como programar el código para que funcione bien en AWS y que no crezca de manera lineal el tiempo computacional con el numero de muestras.
Con estos resultados, el profe agrupar los resultados en archivos de R que fueran fáciles de usar.
El resultado final de esto fue la pagina web de recount

Ahí se pueden buscar sets de datos.
Muestra mucha información, como numero de muestras, abstract, especie, accession, etc.
Permite que estos datos se puedan descargar en distintos formatos.

Si se desea descargar con R, viene la serie de pasos para hacerlo.
Se requiere instalar el paquete de recount, y usando la funcion download_study se le proporciona el ID del archivo, y después se cargan los datos con la funcion load
Si se quiere normalizar las cuentas se tiene la funcion scale_counts.



Se normalizan las cuentas porque las cuentas que se usaron con recount son diferentes a las usuales.
Cuentan con un articulo donde se explica porque son diferentes.

En resumen, se tienen las coordenadas del genoma, y cada base es un cuadrado, donde en el ejemplo son 16 cuadrados, y las lecturas que alinearon contra el genoma están indicadas en color rosa.
Lo que normalmente hace la gente es que si se tiene un gen se cuenta cuantas lecturas sobrelapan en los exones del gen. En recount, lo que se hizo diferente fue contar a cada base del genoma el numero de lecturas sobrelapan esa base, y con esto se puede obtener la suma de la cobertura a nivel de base para cada uno de los pedazos de los exones, y teniendo los diferentes pedazos únicos de un gen, se puede obtener la suma de nivel de expresión para ese gen.
Estos, por ejemplo recount si cuenta lecturas cortadas que sobrelapan.


Entonces para decir cual es el nivel de expresión de un gene, se obtiene la suma de cobertura de las bases de los exones, y se hace una suma total.

Existen formas de transformar estos números que proporciona recount a el numero de lecturas aprox, que se encuentran en el mismo paquete con varios funciones.

Si se quieren checar algunos de los análisis para el articulo, se encuentra disponible en si sitio web, en formato PDF o HTML.

Por ejemplo, el de GTEx.

Viene un markdown con el código, con distintas figuras con distintos análisis.


Recount se ha hecho bastante popular ya que por ejemplo se cuenta con un numero enorme de muestras con los datos ya procesados.


El problema con la segunda fase de recount es que era muy difícil correr esa herramienta con las maquinas de amazon, y en particular pedía la tarjeta de crédito para usar esas computadoras. Por lo que si ocurría alguno error en el código representaba mucha perdida de dinero.

Además como solo corría el código con ese tipo de computadora, no se podía actualizar ese sitio creado.
Eso llevo a escribir un nuevo tipo de código para recount3, con el cual se procesaron 700 mil muestras de humano y ratón, dado que la mayoría de datos públicos son de estas dos especies.

El resumen de esta informacion viene en la pagina de recount, que es una pagina hecha con postcards.

En el apartado de documentación vienen mas detalles de todo el proyecto

A diferencia de antes tiene un explorador de estudios interno.

Ahora se proveen los datos en distintas anotaciones.
Y muestra el código de R que se necesitaría correr si se desea crear un RSE para esos datos, pudiendo elegir a nivel de gen, exón o unión de exones en la variable type.

A diferencia de antes donde las ligas eran para descargar archivos de R, en este caso las ligas son para descargar archivos de texto, por si alguien quisiera escribir una versión de lo que se hizo en R en otro lenguaje de programación.
Bioconductor cuenta con varios paquetes que permiten convertir los objetos de SummarizedExperiment en objetos de Python.


Se cuentan ahora con muchos sets de datos.

Para usar el paquete de recount3, viene la documentación donde se ve el README del paquete


En reference, vienen las paginas explicando cada una de las funciones, incluidos ejemplos.

Cuenta tambien con una guía, que es la vignette.

Estaa documentación tambien se encuentra en bioconductor. Este no cuenta con la documentación de ayuda de las funciones.

### Usar recount3

Atajo Ctrl + punto, permite navegar a un archivo o funcion.

Primero se debe de cargar el paquete de rcount3

Recount3 carga varios paquetes.
Se usara la funcion Available_projects, que es una funcion que por defecto descarga la informacion de los proyectos de humano.

En particular, esta descargando tablas de informacion de SRA, GTEX y TCGA.


Con dim obtenemos que este objeto contiene 8742 proyectos de humano.

Se muestra una distribución cruda de los proyectos si se realiza un head al proyecto.
Se tiene el ID, organismo, fuente de datos, el numero de muestras, el tipo de proyecto y el Project_home o directorio del proyecto.
Para encontrar algún proyecto, es mejor usar desde el sitio web al explorador study explorer.

Este proyecto tiene 12 muestras, era para validar datos de TFBS y anticuerpos de chipseq.


Mediante la funcion subset, se puede obtener el proyecto de interés, indicando el ID, y el tipo de proyecto.

Créate_rse, descarga archivos de internet con el cual creará el objeto rse a partir de obtener un proyecto.

Se observa que este objeto es un RSE, el cual contiene 63856 genes con 12 muestras. En cuanto a informacion de las muestras, se tienen 175 columnas de informacion.

Tambien se podría usar el paquete de Interactivedisplaybase, con la funcion display, que permite buscar información de los proyectos/estudios que reciba.
Una vez seleccionado algún estudio, se da click al botón send, que devuelve el equivalente a utilizar la funcion subset.

Dado que se escogió el mismo estudio, al momento de usar la funcion create_rse para crear el objeto RSE, ya no se descarga los archivos de internet, sino esta usando los archivos que ya fueron descargados en la computadora, accedando al cache.
Esto es útil para que cualquier archivo archivo compartido entre diferentes proyectos sea descargado una sola vez.

Este objeto descargado contiene en assays a raw_counts, que son las cuentas creadas por recount.
Raw_counts, la suma de la cobertura de cada una de las bases únicas de los exones de cada gen.
Estos valores se pueden convertir en números de cuentas normales, con la funcion Compute_read_counts, y en este caso se guarda en un nuevo assay llamado counts.
Recount no guarda todos estos datos por el tamaño que ocuparían, y se prefiere dar mejor esta funcion para convertirlos a counts normales por si es de interés para el investigador.

Si se vuelve a imprimir el objeto, se puede ver que ahora están los dos assays.
Una parte que se puede hacer es que este set de datos viene de SRA, y al compartir datos en SRA se puede proveer algo de información, y se puede escoger como proveer esa informacion.

Desde NCBI se pueden acceder a los proyectos con los IDs.

 

 

Aquí vienen las muestras de este proyecto, y los autores del proyecto incluyeron ciertas columnas como tratamiento, línea celular, expresión de shRNA, etc., y todas estas columnas de informacion son atributos del proyecto, y con la funcion expand_sra_attributes, permite procesar la informacion tal cual como la provee SRA y expandirla.
Todas estas columnas extras contienen el prefijo sra_attribute.

Entonces se cuentan con las columnas vistas desde NCBI.

Entonces, la gente no provee la informacion de manera muy útil para un análisis, y para usarla se tendría que asegurarse de que no existan errores de dedo o formas distintas de escribir ciertos datos, como añadiendo comas, puntos, cambiando el texto a mayúsculas o minúsculas, etc.

Por ejemplo, en este proyecto en el atributo de expresión de shRNA tiene dos valores que se parecen mucho, y que solo difieren por una coma, por lo que si se quisieran usar variables con este tipo de errores, puede requerirse una limpieza de los datos.
La funcion expand_sra_attributes no funcionara si se descargan datos provenientes de Gtex y tcga.
Estas dos fuentes de información no cuentan con esos datos, solo SRA.

### Ejercicio con iSEE
Se tiene que reproducir una imagen con iSEE usando los datos obtenidos con recount3

Se puede compartir la pagina web de iSEE a través de shinyapps, que permite subir paginas web de shiny, que permite 25 horas de uso al mes de manera gratuita.

Para encontrar el gen, se busca con su ID, o se liga la tabla de los genes con la figura, y se selecciona el gen.

Para el eje x se selecciono la expresión, y para lo visual se uso los valores del tratamiento.

Con ISEE, al hacer click en publish, permite publicar la pagina web que se creó.



### Modelos estadísticos
En la pagina se agrego un link donde se explica la regresión lineal.


Cuando se aprende algún concepto complejo, se puede explicar de tres formas: texto, dibujos y de manera matemática. Esto permite comprender el concepto de mejor forma.


Regresión lineal, se tiene que la ecuación Y es igual a una beta 0 mas una beta 1 ajustada por una variable X mas cierto error, el cual tiene una distribución normal con media 0 y varianza de sigma cuadrada.
Beta 1 seria el cambio del promedio en la variable Y por cada incremente de una unidad en la variable explicativa X.

Entonces este concepto se puede representar por la siguiente figura.
Se muestran 3 puntos con sus coordenadas X y Y, junto con la línea de regresión lineal. Se muestra el punto beta 0, que es el punto donde la línea de regresión lineal cruza el eje Y, y tenemos un triangulo donde su base paralela al eje X tiene una longitud de 1, y su altura es B1.
Con esa figura se ve como se representa beta 1, que por cada incremente de una unidad en la base del triangulo que corresponde al eje X, aumenta beta 1 que seria el valor Y.

 

En la parte matemática, se puede explicar que el valor esperado de Y es beta 0 mas beta 1 por X.
Y se puede observar la diferencia entre dos valores esperados de Y cuando el valor de X cambia una unidad.
Al evaluar la diferencia, se obtiene que la diferencia seria igual al valor de beta 1.
Esto seria la regresión lineal simple.


Con R, se harán regresiones lineales, y la funcion con la cual se definirá el modelo de regresión lineal será la funcion model.matrix(). 

Esa funcion tiene una sintaxis de formula, donde la variable Y, una tilde, y mas de una variable explicativa del lado derecho de la tilde.
Un ejemplo de esta funcion es el logaritmo de volumen es igual al logaritmo de la altura mas el logaritmo de la circunferencia, usando como set de datos de ejemplo el set de trees, que es un set de R de arboles.

Funcion with, permite ahorrar líneas de texto, dado que permite acceder a los valores del primer objeto sin necesidad de acceder mediante el símbolo de dinero $.

En este ejemplo se generan 3 columnas. La primera es el intercepto, que es la beta 0, luego los diferentes coeficientes del modelo de regresión, siendo beta 1 la de la altura y beta 2 la de la circunferencia.
Entonces tenemos valores a lo largo de 31 arboles, y se tienen los datos listos para realizar la regresión lineal.

 

Con la funcion lm se calcula la regresión lineal, la cual primero requiere la ecuación/formula y después el set de datos a usar.

Lm internamente usa model.matrix pasando la formula dada.
Para ver de una manera entendible la regresión lineal, se usara la funcion summary.

La funcion de summary primero muestra la llamada realizada, el comando usado para la regresión lineal, y después se tienen otros datos como los residuals y una tabla de coeficientes que en si son las betas.
Se tiene beta 0, 1 y 2. A cada una de las betas se tiene su estimado, el error estándar del estimado, el valor t, y el valor p.
Esas cuatro columnas son columnas que se usaran muy seguido al hacer regresiones lineales.

En particular, al hacer un modelo de expresión diferencial, lo que se hace es que si se tienen muchos genes, en vez de hacer miles de tablas de regresiones lineales, se extraerá la información para solo un coeficiente de interés, a veces se extrae la desviación estándar, luego el valor t, que se calcula dividiendo el valor estimado entre el error estandar. Con que se tengan dos de estos 3 valores se puede calcular el beta estimado, y aparte se extrae el valor P.

Entonces esos valores se van a extraer a lo largo de cada uno de los genes al hacer un modelo de expresión diferencial, que en realidad será el mismo modelo de regresión lineal aplicado a los datos de cada gen. 


Antes de aprender a hacer la parte de expresión diferencial, será útil aprender la regresión lineal.

### Exploremodelmatrix
Varios autores de paquetes de bioconductor crearon un paquete conocido como exploremodelmatrix

Michael love, Charlotte soneson, Federico marin, et.al.

Hicieron este paquete porque en especial Michael recibía muchas preguntas de usuarios sobre el modelo estadístico.


Exploremodelmatrix primero requiere cargarse con la funcion de library, y después este cuenta con una funcion con el mismo nombre, ExploreModelMatrix(), que permite generar una interfaz grafica de shiny, igual que la de iSEE. Este emplea R y JavaScript.

Esta interfaz grafica ayuda a entender los modelos de regresión lineal.

En su vignette cuenta con un ejemplo sencillo donde se hace una tabla de datos, con dos variables, las cuales son genotipo y tratamiento.
Esto seria la informacion de las muestras, que seria parte del equivalente del Coldata del objeto de SummarizedExperiment.

Con esta informacion puede visualizarse sencillamente con una funcion llamada VisualizeDesign, sin tener que cargar la interfaz grafica, pero la sintaxis será similar.
Se le indica el set de datos, luego la sintaxis de formula, la cual carece esta vez de la variable Y, que serian los valores de expresión de los genes, y en vez solo se dan las variables de X, y con eso se puede hacer la grafica.

Esto genera una grafica con la variable de tratamiento en el eje X y la del genotipo en el eje Y.
Muestra que valores son los que se representan en cada caso.
El intercepto existe en los cuatro casos, por lo que una muestra de cualquier tipo de tratamiento y genotipo contribuye a la estimación del intercepto.
Para la variable de genotipo B nada mas contribuyen las muestras de genotipo B.
Si se tomara el renglón de arriba y si se restara el renglón de abajo, se cancelarían la variable intercepto y tratamiento, y así vemos visualmente que el coeficiente de genotipo B es igual a la diferencia de genotipo B menos genotipo A.
Entonces así podemos ver lo que significa y la dirección a la que va. Por lo tanto, un valor alto en el renglón del genotipo B significa que había mayor expresión de genotipo B que de genotipo A.
Un valor negativo en la fila del genotipo B significa que se tenia mas expresión en el genotipo A que el genotipo B.

Entonces este paquete visualmente es bastante útil para checar los modelos estadísticos.


Entonces se visualizara el modelo con shiny, y para eso primero se crea el modelo con ExploreModelMatrix, y ahora se abrirá el modelo de forma interactiva con shiny con su funcion runApp

Ahora se puede ver la misma imagen creada anteriormente, junto con la tabla del model.matrix


Si se cambia el genotipo de referencia, cambia completamente la imagen y el modelo estadístico.


Cambian los valores del genotipo.
Todo esos cambios influyen en el modelo, por lo que ahora la columna que corresponde al genotipo A, significaría que tiene mas expresión el genotipo A que el B, y si el genotipo de referencia fuera el A, seria lo contrario.

Tambien se puede cambiar el nivel de referencia del tratamiento.

Eso cambia ahora otras columnas.

El definir el valor de referencia en los grupos y cuales son las variables que se usan pueden influir bastante el modelo.

Igualmente se puede cambiar el modelo cambiando la formula.

Entonces esto simplifcaria mucho el modelo.

Si se quisieran modelos estadísticos mas avanzados, se pueden ver ejemplos en la misma pagina creada.

Existen varios ejemplos en la vignette de iSEE, y a continuación se vera el ejemplo 2 de la pagina del profe.

 

Este caso es mas complicado, porque ahora se tienen varias variables. Respuesta, paciente, tratamiento y ind.n, que puede ser el numero de individuos.
Ahora no se van a tener datos para todos los pacientes, porque en este caso algunos son resistentes y otros sensibles.
Por lo tanto la formula del modelo cambia, ahora se busca la diferencia entre resistentes y sensibles, pero ajustando a la interaccion entre la respuesta y numero de individuos, y tambien ajustando la respuesta y tratamiento.

Incluso este modelo al abrirlo con shiny avisa que no es full rank.
Esto avisa que no se podrán obtener valores para la interaccion entre distintos casos, porque no existen observaciones de estos.

Ahora se tienen dos figuras.

El primero es para los casos donde la respuesta es de resistencia, y los segundos cuando es sensible.

Para interpretar el coeficiente de respuesta resistencia con pretratamiento, solo se obtiene en la tabla de arriba del lado derecho. Por lo tanto, su interpretación es la diferencia entre tratamiento pre y post.


Hay otros coeficientes mas complicados de interpretar.

Por ejemplo, el coeficiente del individuo n6, se requiere buscar un caso donde aparezcan los demás coeficientes.

En la figura podemos encontrar que estos se encuentran en el individuo n1, por lo que la interpretación de este coeficiente de color verde es igual a la diferencia entre el individuo n6 contra el n1, cuando la respuesta es de resistencia.

Igualmente hay varios coeficientes aparte en los cuales se puede buscar su interpretación.

Siguiente clase, ejemplo 3 y ejercicio.



## Clase 03/02/2022







## Clase 04/02/2022








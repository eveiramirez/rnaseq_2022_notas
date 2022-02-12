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

### Dudas
Emplear modelos polinomiales con exploremodelmatrix



Este tipo de modelos realmente no se usan.

Combinar modelos no es común, pero una regresión logística si se podría usar el explore model matrix, pero la interpretación de los coeficientes será diferente. En vez de ser la diferencia será el ratio.
Se puede usar ExploreModelMatrix para muchos tipos de modelos. El modelo polinomial no lo ha intentado el profe.

### ejemplo 3

Se vera a continuación el ejemplo 3.

Este contiene un modelo complejo, porque no es un modelo full rank.

Full sample data table, muestra dos variables, la primera se llama condición, y la segunda el batch.
Con estas variables, nos puede interesar el modelo de batch como intercepto y la condición como variable explicativa, independiente o regresora.

Se observan las diferencias a nivel de condiciones ajustando al batch.

La figura generara es mas compleja, siendo el eje y el batch, tendiendo 6 batches, y en los datos los batches venían en pares. En la condición, tenemos 4 condiciones.
Entonces por venir en pares por cada renglón tenemos dos celdas con valores.

Para la interpretación de batch3, se obtiene mediante la diferencia de la fila 3 y fila 1.

El primer paso que se hace es identificar las celdas que tienen ese coeficiente, siendo las celdas de la fila 3. Después se buscan los coeficientes que sobran, siendo en este caso el control plus, tambien considerando al intercepto. Luego se identifican las celdas que solo contengan esos elementos que se desean eliminar, y entonces se puede obtener el coeficiente mediante la diferencia de las celdas que contengan al coeficiente de interés menos las celdas con los coeficientes restantes, en este caso la diferencia de la fila 3 menos la fila 1.


Por lo tanto, la interpretación del coeficiente batch3 es la diferencia entre el batch 3 y batch 1, y como para estos batches solo hay muestras de control minus y plus, entonces incluso se puede decir que es la diferencia de batch 3 y batch 1, y que solo aplica cuando la condición es control, ya sea minus o plus, aunque esa parte sobra porque no hay batch3 y batch 1 en las otras condiciones.

Para el coeficiente ko minus, ocurre un problema, dado que si se busca hacer la diferencia entre columna de ko_minus y ko_plus, quedan al final dos condiciones, por lo que ahora se debe de buscar como eliminar a ko_plus, siendo este negativo.

Para eliminarlo, no existe una forma posible en este caso, dado que el modelo no es full rank. 
Ahora se vera el caso en el que el intercepto es igual a 0, y batch fuera otra variable explicativa.


Al ser el intercepto igual a 0, cambia totalmente el modelo, haciendo que uno de los grupos sea el del nivel de referencia. Igualmente sigue este modelo siendo de rango no completo, no full rank 

Al no ser full rank, no se puede estimar al mismo tiempo el coeficiente de cada condición, ko_minus y ko_plus, al estar ligados.
Entonces cuando se haga este modelo, R no dará un coeficiente para ko_plus, y solo daría el ko_minus, y entonces para la interpretación de ko_minus seria la diferencia entre la columna 3 y 4. Esto es una decisión arbitraria, y se puede decidir no estimar a ko_minus y entonces la interpetacion de ko_plus seria la diferencia entre la columna 4 y 3, siendo este el caso opuesto al anterior.

Si se eliminara condition ko_plus desde la opción drop columns, entonces ya se pueden interpretar todas las condiciones en ese modelo, ahora siendo una matriz full rank. Se elimina a este porque lo indica el error mostrado en pantalla.

### Ejercicio
Ahora para este ejercicio, se va hacer la interpretación de la variable ResponseResistant.Treatmentpre del ejemplo 2. Dado que igualmente este modelo no es full rank, se tendrán que eliminar columnas.
Puede ser útil tomar un screenshot (captura de pantalla) y anotarla con líneas de colores para ver los cambios del modelo. Si haces eso, puedes incluir la imagen en tus notas.
Se debe tambien responder a la sig. pregunta: ¿Por qué es clave el 0 al inicio de la fórmula en el ejercicio 3?

En este ejercicio el objetivo era interpretar ResponseResistant:Treatmentpre
Para obtener su interpretación, se deben hacer la diferencia entre el tratamiento pre y post, en la figura donde la respuesta es resistencia.

Se puede cambiar la orientación de las figuras si se desea.

Entonces un valor alto de ese coeficiente significa que se tiene mayor expresión en el tratamiento pre comparado con el post. Un valor negativo significa que se tiene mayor expresión en post comparado con pre.


Figura ampliada.


Retomando el ejercicio 3, en si el intercepto igualado a 0 no importa para lo del full rank porque sigue siendo un modelo que no es full rank a pesar de su cambio, y lo que importa es eliminar a condition ko_plus. 

Al eliminar esa columna, ahora se tiene un modelo full rank, sea o no con el intercepto igualado a 0.

Algo que se tiene que tomar en cuenta es que si se elimina el cero, es que el intercepto pasa a ser el valor del batch 1.

Como se vio anteriormente, la interpretación del coeficiente de batch3 es la diferencia de batch3 menos batch1.


En este caso para batch2, se determina mediante la resta de la muestra de ko_plus para batch2 menos muestra de ctrl_minus para batch1.

Para el intercepto, la interpretación es batch1 contra el ctrl_minus

Con el intercepto igual a 0, ahora tenemos un coeficiente llamado batch1, que este era antes el control 1 minus.

Entonces cambia la interpretación de los coeficientes, dado que ahora para batch2 su interpretación es ko_plus en el batch2, dado que ahora esta el coeficiente solo. 

Entonces si se quiere tener un coeficiente para cada una de las batches, incluyendo el batch de referencia, conviene que el intercepto tenga un valor igual a 0.
Si se quiere que todo sea relativo contra el batch1, entonces batch tiene que ser el intercepto.


Para batch3, su interpretación es una resta de controles de batch3 con batch1 cuando el intercepto es batch.

Cuando el intercepto es 0, entonces queda de manera aislada batch3, por lo que solo es esa celda de ctrl_minus de batch3.
Esta diferencia del intercepto igual a 0 es muy importante cuando se tienen modelos experimentales con varias variables y se quiere tener un coeficiente para cada uno sin tener que la interpretación sea relativa a uno de estas.
A lo mejor se desea ver la diferencia entre dos variables en concreto, y puede que en esos casos no se ocupe el intercepto igualado a cero.

Entonces acabamos de aprender a usar ExploreModelMatrix para entender bien que es lo que se esta cuantificando con los modelos de expresión diferencial o regresión lineal.
Hay un par de links extras en el curso sobre este tema.

Por ejemplo, en el workflow de RNAseq123 viene una sección de lo que es un design matrix y contrast matrix.

Y donde explican paso a paso como usar la funcion de model.matrix, y se explica lo que significa cada coeficiente.

Tambien esta el articulo de exploremodelmatrix, donde tiene igualmente la explicación de los modelos.
Aquí contienen varios ejemplos de análisis mas complejos de distintos tipos de modelos.

Por ultimo, se encuentra un link en el curso de una vignette de DESeq2


Aquí se encuentra la explicación sobre que son los modelos en si, y la explicación del modelo matrix not full rank, dando soluciones tambien.

### Datos de SRP045638
Esto seria la parte final de diseño de modelos, y ahora se van a revisar sets de datos.


Este set de datos es de liver/hígado.

Este set de datos contiene información de etnicidad (Race), el rin (RNA Integrity Number), el sexo, etc. En esta tabla no aparecen las edades, y entonces este set de datos será de diferentes grupos de edades.

Para acceder al set de datos, se usa recount3.
El archivo que contiene las instrucciones se llama 05-modelos.Rmd

Entonces se carga el paquete, y se obtienen los proyectos disponibles que son de humano.

Ahora con la funcion créate_rse se creara el objeto RSE para el proyecto de interés, seleccionando como tipo dde proyecto data_sources
Esto descargara varias tablas de informacion mientras crea al objeto RSE.


Como se menciono anteriormente, los datos crudos de recount3 no son como los que usualmente se usan, porque se calculan de manera diferente las cuentas/counts.

Entonces con la funcion compute_read_counts se van a convertir el número de lecturas a las normales, guardando el resultado en el assay llamado “counts”.

Después de esto, si se checa la varia sra.sample_attributes, se puede ver que contiene la informacion sobre edad, el proveedor del biomaterial, el biosamplemodel (modelo de la muestra biologica), el estado de desarrollo, la enfermedad, la fracción, el aislado, la raza, el RIN, el sexo, el tejido, etc.
Entonces tenemos todos estos datos que no se pueden leer bien, y justamente esa es la informacion que puede expander la funcion de expand_sra_attributes.
En este caso,  una de las muestras tiene informacion que no viene en las otras muestras.

Este atributo es el estado de desarrollo, entonces se tiene que eliminar.

Con la funcion Gsub se puede usar para eliminar el atributo de dev_stage.
Dado que se tiene que eliminar el pipe con gsub, gsub lo detecta como un carácter especial, y se debe de añadir dos diagonales invertidas para escaparlo.


Se imprime los atributos sra para ver su informacion después de este cambio. Ahora ya no esta este atributo, que es una columna extra de informacion. 


Si volvemos al set de datos de NCBI, se puede observar que se encuentra la columna de dev_stage, y que solo unas pocas muestras contienen esa informacion.

Ahora realizado este cambio se puede correr la funcion expand_sra_attributes, y se pueden ver los datos que se tienen.

Se tienen bastantes datos de sra
RIN, es la medida de calidad de RNA, su valor mientras mas alto es mejor.
El problema de estas variables/atributos  es que son de tipo carácter, por lo que manualmente se requiere modificar los valores para que sean números.

Para convertir a números, se ocupa la funcion as.numeric, y otros valores serán en este caso convertidos a factor.

Esto es la parte mas complicada para el proyecto final, que es la limpieza de los datos.

Ahora se pueden explorar estas variables después de que ya se hayan arreglado, para ver sus valores. En este caso, siguen habiendo errores, por ejemplo para la variable/atributo de enfermedad, se tienen dos opciones, control y Control con mayúscula, por lo que se debe de arreglar este tipo de errores.

Diagrama
Al trabajar con datos, primero se debe de importar los datos, lo cual lo realiza recount3 (Import)
Después de importarlos, se debe limpiar los datos, que en este caso se hizo manualmente (Tidy)
Una vez que se limpian los datos, estos se exploran, de tal manera que se transforman, se visualizan y se crea el modelo, y este proceso puede ser iterativo, por lo que se repite varias veces (Explore).
Al final, se comunican los resultados, que en nuestro caso se hará con GitHub. (Communicate)



Al tener muestras prenatales, se esperan muchas diferencias a nivel de funcion entre los cerebros de muestras prenatales contra los de post natales.
Esto se sabe porque ocurre mucho desarrollo del cerebro, por lo que se esperan muchas diferencias.

Por lo que se va ahora se creara un atributo que se llamara prenatal, el cual indicara si la muestra es prenatal o postnatal, siendo las prenatales de individuos menores a 0 años.

Esto se hará con la funcion ifelse, y después de clasificar las dos categorías, se convertirá en una variable categórica usando la funcion de factor.
Con la funcion de table, se obtiene la cantidad de muestras de cada grupo.
En este caso se tienen grupos no tan balanceados, pero si se tienen valores en cada muestra, y pues si funcionara el análisis de expresión diferencial

En coldata se tienen muchas variables, son 186.

Dado que es difícil saber cuales son esas variables, se debe de explorar desde el sitio de recount.
En el curso se tiene una liga con informacion de estos campos/variables.

En el sitio web de recount se explican varios datos de recount3.



En particular se usaran dos variables, gene_fc_count_all_assigned, y gene_fc_count_all_total.

Estas variables se encuentran explicadas casi al final del documento de recount3.
gene_fc_count_all_assigned: numero de fragmentos, incluidos los multi-mappers, asignados por featureCounts a un gen.
gene_fc_count_all_total: numero total de fragmentos, incluidos los multi-mappers, que son de input para featureCounts.
Se va a dividir la variable gene_fc_count_all_assigned entre gene_fc_count_all_total.

Con estas variables se puede calcular la proporción de lecturas asignadas a los genes, y esta proporción es bastante útil como medida de calidad de los datos. Es el numero de lecturas de un gen entre el total.

A esta proporción/variable se le llamara en este caso assigned_gene_prop, siendo la proporción de lecturas asignadas a genes.


Con summary se obtiene el resumen de esta nueva variable, y se observa que existen muestras que tienen desde el 20% de lecturas asignadas a genes hasta el 85%, donde la mediana es de casi 76%.
Entonces al tener este mínimo de 20%, indica que existe una muestra algo mala.
Entonces se hará a continuación una grafica ocupando la proporción de lecturas asignadas a genes con el RIN, que es una medida experimental de la calidad del RNA en la muestra.

Al hacer la grafica, se puede ver que existe una relación lineal en este set de datos.

Pero tambien se ve que hay muestras con pocas lecturas asignadas con RIN poco alto.

Entonces no están directamente correlacionadas estas variables, pero en general en otros análisis hechos por el profe si hay un poco mas de relación entre estas dos variables.
No siempre predicen perfectamente una a la otra. Esto quiere decir que si sabes el valor del eje Y no a fuerzas sabes el valor del eje X, o viceversa, pero nos da cierta guía.

Podemos decir entonces que queremos eliminar las muestras con valores bajos, pero en este caso aun no se saben cuales son las muestras prenatales y postnatales.

Para checar esto, esta proporción de genes asignados dependiendo si es prenatal o postnatal, se puede usar la funcion tapply.

Entonces se puede ver que las muestras postnatales tienen un valor mínimo de 20%, mientras que las prenatales de 68%.

Otra opción que se pudo hacer para revisar las diferencias entre las muestras postnatales y prenatales es añadir a la figura colores que indican cual es cual.

Si al comando de plot se le indica que el color este dado por la variable de prenatal mediante el parametro col, entonces se generan colores que muestran las diferencias de prenatal y postnatal entre estos.
En rojo son las prenatales, y en negro las postnatales. 
Entonces ya sea añadiendo colores a las graficas o mediante funciones como summary podemos explorar los datos.
En el proyecto final debemos explorar los datos, y decidir si eliminamos muestras basado en los resultados.

Para este caso se eliminaran algunas muestras que se consideren malas.

Antes de eliminarlas, se guardara el objeto en otra variable por si se quiere regresar al objeto original.

Por ejemplo, se eliminara a la muestra en el superextremo, dejando solo las muestras con proporción mayor a 3.

En este caso no se esta buscando un valor de corte. Eso puede hacer por ejemplo calculando la mediana y después 3 desviaciones de la mediana hacia la izquierda.

Por el ejemplo, por el momento solo se eliminaran aquellas menores a 0.3

Una vez eliminadas, se puede hacer un histograma de esa proporción de lecturas asignadas a genes.

Lo de la mediana funciona cuando se tienen datos con una distribución de campana, normal, siendo unimodal.

En este caso solo termino eliminándose una muestra.

Primero se eliminaron muestras del análisis, pero ahora se eliminaran genes.

Para eliminar genes se debe calcular los niveles promedios de expresión de cada gen a lo largo de las muestras.
Entonces primero se eliminan muestras, y después los genes.


Ahora se revisan los valores de expresión de los genes con summary.
Se puede ver que muchos genes tienen valores de expresión muy pequeños, donde el primer cuartil tiene valor de 0.1
Por lo tanto, podemos eliminar el 25% de los genes eliminando los genes que tengan un promedio de expresión abajo del primer cuartil.
Si se quisieran eliminar la mitad, se debería ver el valor de la mediana.

Ahora se puede ver la cantidad de genes y muestras que quedaron.
Entonces el objeto final casi se perdieron casi 17 mil genes y una columna de muestras.


Se puede incluso calcular el porcentaje de genes restantes.
En este caso solo quedo un 73.5%. Todo esto fue de forma intencional porque se elimino todo lo debajo del primer cuartil. No es exactamente 75% porque pudieron haber genes que tenían como valor el valor del primer cuartil, 0.1.

Ahora una vez terminado esto, se puede continuar con el análisis.

### Normalizacion de datos / edgeR
Para esta parte, se usara un paquete que fue publicado en 2010 aprox, llamado edgeR.
Edger, es uno de los 3 paquetes mas descargados de bioconductor con relación a datos de rnaseq.

El articulo de ese paquete es muy leído, y esta muy bien escrito.
Una de las cosas implementadas en ese paquete es un método estadístico que ayuda a evitar ciertos problemas.


Se describe un escenario hipotético donde se tiene un gen con el mismo nivel de expresión en dos grupos de muestras. Si tiene el mismo nivel de expresión ese no debería de marcarse como un gen diferencialmente expresado, pero a veces si no se normalizan los datos, saldrá diferencialmente expresado.

Estos digamos que se tienen dos poblaciones de RNA, A y B, y todos los genes de la muestra B están expresados al mismo nivel en el grupo A, están expresados con el mismo numero de transcritos.
Aparte, la muestra A contiene unos genes con el mismo nivel de expresión de los de B e iguales en numero, pero que en el grupo B no están expresados.
Lo que ocurre entonces es que el grupo A contiene el doble de genes expresados que lo que tiene la muestra B, lo que quiere decir que la producción de RNA de la muestra A es del doble de tamaño que la muestra B.
Lo que va a ocurrir en este caso, al hace un análisis de expresión diferencial, los genes presentes en ambas muestras tendrán en promedio la mitad del número de lecturas de la muestra A, dado que las lecturas se distribuyen en el doble de los genes en esta muestra.

Por lo tanto, para corregir los datos, la normalización correcta ajustara la muestra A por un factor de 2, esto es multiplicar los valores de expresión por 2.
Si lo queremos expresar en una tabla, por ejemplo, tenemos un gen 1 que se expresa de la misma forma en ambas muestras, A y B, con valor de 5, pero tenemos un gen 2, el cual solo se expresa en la muestra A con valor de 5, teniendo en B un valor de 0.
Si se compararan los niveles de expresión, aparentemente en la muestra A, el gen 1 tendría la mitad de expresión, y en la muestra B tendrá el total de los niveles de expresión, siendo igual a 1.
Entonces al comparar el gen 1 en ambas muestras, se tendrá que el gen tiene el doble del nivel de expresión en la muestra B que en la muestra A.
Eso es si se normaliza por el numero total de lecturas, que es dividir la muestra A entre 10, y la muestra B entre 5.



Ese factor de normalización que es el numero total de lecturas no esta funcionando bien.
Para evitar esto en el análisis de expresión diferencial, se multiplica los valores de A por un factor de normalización de 2.
Esto haría que ahora A tenga valores de 1 y 1 para cada gen.
Entonces al hacer el análisis de expresión diferencial, para el gen 1, saldría que no hay diferencia entre las muestras A y B.

Este factor de 2 es explicado en el resto del articulo mediante la estadística. 
Este método asume que la mayoría de los casos entre A y B, no están diferencialmente expresados, por lo que al asumir eso se puede buscar los genes con nivel de expresión similar, y a partir de estos genes calcular el factor, que en este caso es igual a 2.

Si no se cumple esta asunción, donde la mayoría de los genes no están diferencialmente expresados, este método ya no funciona.



Este artículo de edgeR es bastante viejo, que explica muy bien el concepto de composition bias, que es lo que se acaba de ejemplificar, y tiene un método para eliminar ese composition bias.

Muchas veces en estadística se usa el truco de sumar 0 y multiplicar por 1.

Hay casos donde se pueden manipular las ecuaciones para que se obtenga una forma especifica de algún teorema, el cual permita entender como se comporta esa formula matemática en el infito.
Por ejemplo, el multiplicar 1 es similar.
Esos trucos sencillos de matemáticas se usan mucho en demostraciones de estadística, y de forma similar hoy en día con los datos de single cell RNA-seq o incluso de spatial, hay un truco que se usa mucho que es agregar datos de células y hacer que se comportan como datos de bulk RNA-seq. 
Al hacer que se comportan como datos de bulk RNA-seq entonces permite usar métodos de bulk RNA-seq.

Un ejemplo especifico de eso es en el siguiente ejemplo en la segunda liga del curso, de cuando se hace expresión diferencial en datos de single cell, que en realidad se puede usar detrás de cámaras edgeR y en particular se puede usar la funcion de calcNormFactors

Esta funcion de calcNormFactors es la funcion que implementa el modelo estadístico del modelo de 2010, que en si es parte de las funciones que implementan ese modelo estadístico.

Hay una funcion llamada pseudoBulkDGE, que detrás de cámaras usa la funcion de computesomefactors de edgeR.
Entonces, alguien que solo aprenda a analizar datos de single cell, tal vez solo use esta funcion, y no se este dando cuenta que esta usando métodos de 2010 detrás de camaras.
Esto es un motivo mas para leer y entender el articulo de 2010 de edgeR.

### Código de Normalizacion de datos.

Ahora se ejecutara el código de Normalizacion de datos.

La funcion de calcNormFactors requiere un objeto que devuelve DGEList, el cual contiene datos del objeto de SummarizedExperiment.
No es necesario aprender los detalles del objeto de DGEList por el momento.

Sección 5.4. Expresión diferencial
Primero se define el modelo estadístico.
Con un análisis de verdad, nos tardaríamos mas explorando como se relacionan las variables, por ejemplo las variables de calidad de acuerdo a los grupos de interés.


Ejemplo, una imagen de este estilo. En el eje Y esta la proporción de genes asignados, y en el eje X los grupos de edad, separando los postnatales y prenatales.

Es una imagen similar a la anterior mostrada, que mostraba tambien los grupos postnatal y prenatal separados por color, pero en el eje Y estaba el valor del RIN.

Continuando con el código primero se carga la paqueteria de GGPLOT2
Luego se obtiene la informacion de colData, siendo este un DataFrame, y como ggplot no sabe manejarlo, se convierte a data.frame con la funcion as.data.frame
Este seria el input principal para la funcion de ggplot.


Con la funcion aes, Aesthetic Mapping, se definen las variables, siendo la variable y la proporción de genes asignados y la funcion x la variable prenatal que tiene estos dos grupos de edad (post y pre).

Después se le indica con el signo de mas, +, como se graficaran los datos, siendo estos en forma de boxplot, usando la funcion geom_boxplot(). Tambien se cambia el tema de la figura a un tema sencillo con la funcion theme_bw, a la cual se le puede indicar el tamaño de los puntos de la grafica, siendo estos de 20. Además, se agregan las etiquetas/labels de los ejes.


Entonces de esta manera se genera la figura de ejemplo anterior.


Si no se añadiera el tema, no se cambiara la letra ni las etiquetas, se vería el texto mas pequeño con un fondo gris.

Para definir el modelo estadístico, típicamente, exploraríamos más los datos para revisar que no haya otros problemas con las muestras y para explorar la relación entre nuestras variables.
Mediante los paquetes Variancepartition y scater, se pueden explorar mas los datos.

### Variancepartition y scater

En el pdf del primer tutorial/vignette de variancepartition, podemos encontrar imágenes que se podrían hacer.

Variancepartition permite generar graficas mas avanzadas. 
Se pueden hacer boxplots con la densidad como tipo violín para varias variables, y en la imagen el eje Y es el porcentaje de varianza explicada por esas variables. Cada punto es un gen, y por ejemplo se puede ver que mas del 75% de la varianza esta explica por la variable individuo.


Tambien se muestra en el panel a cada gen individualmente, y se puede ver ese porcentaje de varianza explicada. Algunas variables al explicar tan poco no se notan en la imagen.

Con el paquete scater, se pueden hacer otro tipo de imagenes



Por ejemplo, con la funcion plotExplanatoryVariables, que muestra el porcentaje de varianza explicada para varias variables, y lo muestra en el eje X de forma logarítmica, por lo que entonces esto nos da mayor expresión para ver variables que explican menos del 1 % de la varianza explicada.
Las densidades son a lo largo de todos los genes que se están estudiando.
Este tipo de graficas o las de componentes principales pueden ayudar a ver cuales son las variables que contribuyen mas a la varianza, por ejemplo, y entonces probablemente son variables mas importantes para usar en el análisis de datos.

En el curso hay un video de variancepartition que explica este paquete.

Ahora continuaremos asumiendo que ya se conocen las variables que se desean usar para el análisis.
En este caso, el modelo se definirá de tal forma que se evaluaran las diferencias entre prenatales y postnatales, almacenadas en la variable prenatal, ajustando por RIN, por diferencias de sexo y por la proporción de lecturas asignadas a genes, assigned_gene_prop


La columna de Prenatal era una variable la cual tiene dos opciones, prenatal y postnatal.


Al ordenarse en orden alfabético las dos opciones posibles, postnatal va primero y será el valor de referencia.
Por eso aparece ese coeficiente de prenatalprenatal, mostrando la diferencia entre prenatal y postnatal.
Entonces por eso el coeficiente añade un segundo prenatal, porque esta mostrando el grupo de contraste y no el de referencia.

Entonces pues esas son las variables del modelo estadístico, y si se quisiera explorar ese modelo usar la funcion exploremodelmatrix para revisar la interpretación de cada una de las variables.



### limma
Ahora que se tiene el modelo estadístico, se usara el paquete de limma
Los tres paquetes principales para expresión diferencial son lima, edgeR, y DESeq2.
La diferencia entre estos tres paquetes a grandes rasgos es que edgeR y DeSeq2, ambos usan la distribución binomial negativa para modelar los datos, y la usan porque se emplean valores enteros que son los de las cuentas/counts, que son el numero de lecturas que sobrelapan cada gen, y pues no se tienen números continuos (0.2, 0.5, etc.) ni negativos, siendo todos positivos, desde 0 para arriba. Por eso se usa esa distribución.

Computacionalmente, cuando se quieren estimar coeficientes de la distribución binomial negativa, se tienen que hacer iteraciones porque no hay una respuesta directa matemática, y lo que se tiene que hacer es encontrar un máximo en una distribución, y así acumulas integrales, y la forma que se hace en la computadora pues es de forma iterativa. De tal forma, se encontrara una respuesta, y si la siguiente iteración se tiene un valor muy cercano al anterior, se dice que converge y se detienen las iteraciones.
El proceso de iteraciones es computacionalmente demandante y toma algo de tiempo, pero un modelo sencillo como el de nuestro caso no toma demasiado tiempo, tomando como mucho 2 minutos, en comparación con un modelo mas complejo que puede tomar horas o días.

Entonces edgeR y DESeq2 son un poco mas lentos, pero fueron los primeros en modelar de forma precisa los datos de secuenciación masiva de DNA.

Limma existe desde hace varios años, y se usaba sobre todo para análisis de microarreglos, pero para el caso de microarreglos se tienen medidas continuas, por lo que se podían usar modelos de regresión lineal.

Después de varios años, se encontró una forma de como transformar los datos que tenemos de cuentas a valores de números reales, de tal forma que se podía usar limma, y ese articulo es el articulo de voom, que es la funcion que se va a usar a continuación.

Al ser limma el método mas rápido y suficientemente preciso, es el que usaremos en el curso, pero igualmente se pueden usar los paquetes de edger y deseq2.
Hay varios artículos que comparan estos métodos, y en general son muy similares.
Para usar voom, primero se carga el paquete de limma.

Usando el objeto de edgeR, siendo dge, se puede correr la funcion Voom.
La funcion voom con el parámetro plot=true genera una grafica, donde el eje x tiene el valor de expresión transformado (logaritmo del numero de cuentas mas 0.5).
Se añade 0.5 por si el número de cuentas es 0 para que no quede logaritmo de 0, porque entonces daría menos infinito.
Entonces cuando se tenga un gene sin valores de expresión, entonces su valor será de -1, y ahora ya se puede usar en la grafica.

La idea de esta grafica es ver la relación entre el promedio de expresión y la varianza (raiz cuadrada de la desviación estandar).
Se está graficando entonces el promedio de expresión y la varianza.

Cada punto es un gen.
Limma, desde los años de microarreglos, se dieron cuenta que se puede usar la informacion a lo largo de todos los genes de tal forma que mejoren los estimados de la varianza. 
Se mejoran los resultados estimados de la varianza porque los experimentos son caros y se tienen pocas muestras (por ejemplo, tres casos y tres controles), y con tan pocas muestras el estimado de la varianza será muy notable, teniendo una mayor varianza de la distribucion muestral de la media.

Por ejemplo, teniendo 20 mil genes lo que se puede hacer es ver la relación entre la media y la varianza, encontrar la curva en rojo, y luego los valores que están muy lejos de la curva roja se van a acercar a la línea roja, de tal forma que se mejore el estimado de la varianza.

Entonces esto es muy útil porque se mejora la precisión de los resultados estadísticos. Entonces se pasa de tener 6 muestras a ahora tener informacion a lo largo de 20 mil genes, teniendo una mejor de la distribución.
Esto es una imagen medio clásica de los métodos de expresión diferencial.
Por eso aquí en el ejemplo se hizo.

Hay dos funciones de limma que básicamente se usan mucho con sus argumentos por default, lmfit y eBayes, las cuales son las funciones que calcularan todos los valores t, valores p y demás. El resultado de lmfit se da a eBayes.
En realidad esas dos funciones calculan los elementos necesarios para calcular esas pruebas t, y la forma en la que se extraen es con la funcion topTable.

La funcion topTable de limma se le da el resultado del objeto de eBayes, y en particular topTable tiene un argumento que se llama coef, coeficiente, y se le da un numero o nombre. 
En este caso se le da el numero 2, el cual es el coeficiente de prenatalprenatal.


El objeto con nuestro modelo fue parte de los argumentos de la funcion voom.

Después de eso el objeto de voom se guardo en la variable vGene, la cual se le dio de entrada a lmfit y después a eBayes, terminando el objeto de eBayes en topTable.
Cuando usamos topTable, ya hicimos nuestro análisis de expresión diferencial, pero no hemos resumido la información.
Anteriormente vimos que el resultado de una regresión lineal se obtiene informacion de varios coeficientes, varias betas.

A veces solo interesa una de esas betas, uno de esos coeficientes, y obtener un valor t y un valor p.
Para controlar esta opción de obtener solo una de las betas, se usa el argumento coef de topTable, el cual se le da un numero o un carácter. 
Al asignar a coef el valor de 2, se refiere al numero de columna del modelo, y en este caso es la segunda columna la que corresponde al coeficiente de interés.
Entonces se obtendrán valores t para ese coeficiente.


Por el momento no interesan los demás coeficientes, y solo interesa obtener valores t y p para la diferencia entre prenatal y postnatal.

A este argumento se le puede dar mas de una columna, pero al darle mas de una columna, ya no se obtendría un valor t, t-student, sino se obtiene un valor f, de la distribución de Fischer, por lo que la interpretación cambia un poco.

Este cambio se debe a que una distribución t puede tener valores negativos, y en cambio una distribución f solo tiene valores positivos.

Por lo que todo lo que significa el p value (p valor) cambia.

Con una distribución t en general el valor p son los valores extremos.

Y con una distribución F solo seria el numero extremo positivo, porque no se ven los valores cercanos a cero.


Entonces se va a ejecutar topTable.

Por defecto, toptable regresa los 10 genes con mayor expresión diferencial, ordenados por valor t o p.
Por lo tanto, si se quieren todos los genes, al argumento de number de toptable se le asigna un valor de infinito, o el numero de genes del set de datos, que esto es igual al numero de renglones del objeto de SummarizedExperiment.
Tambien se pide que no se ordenen los resultados mediante el parámetro sort.by = FALSE, porque los reordenaría, y porque si se reordenaran entonces ocurriría que si se quisieran agregar de regreso al objeto de SummarizedExperiment o cualquier cosa después, se tendría que buscar los renglones de SummarizedExpriment que correspondan a los renglones de la tabla de resultados de expresión diferencial.


Entonces esta tabla generara por toptable contiene 16 columnas a lo largo de los mas de 46 mil genes, mientras que el objeto de summarizedexperiment tiene 65 columnas/muestras.

Estas 16 columnas incluyen informacion dada al objeto de edger, DGEList

Al crearse el objeto de edger, se uso el argumento de genes = rowdata, por lo que se paso toda la informacion que se tenia en rowData, como source, type, gene_name, entre otras hasta llegar a tag.
Esto es útil porque tal vez ya no se necesita unir el objeto de SummarizedExperiment con los datos del resultado.

Después de tag, viene la información de limma.
Limma da un set de variables útiles, como log Fold Change.
logFC, si es positivo, significa que tiene mayor expresión en prenatal que postnatal, y si es negativo significa que tiene mayor expresión en postnatal que prenatal.

También se tiene el valor de la expresión promedio, que viene como logaritmo, y es útil para hacer varios tipos de gráficos.


Lo que mas interesa es el valor t, siendo que si es negativo tiene mayor expresión post que pre, y viceversa. Esto es en base de lo aprendido con ExploreModelMatrix.

Entonces se tienen los valores t y p.

Se podría decir que si se tiene un valor p menor a 0.05, entonces este gen esta diferencialmente expresado, siendo entonces el valor de corte.
No hacemos eso porque tenemos un problema de pruebas múltiples (multiple testing problem), se tienen mas de 46 mil. Al ser muchas pruebas, se tienen que ajustar los valores p para que si representen cierta tasa de error de 0.05.

Hay dos tasas de errores muy usadas cuando se analizan muchas pruebas. Estas son Family-wise error rate (FWER) y False Discovery Rate (FDR).
En análisis de datos de rnaseq, se usa mas FDR, el cual es menos estricto que FWER.

Hay varias formas de calcular y ajustar esos valores p (p-values).
Limma guarda esos resultados en la columna adj. P.Val, adjusted P-value.
Entonces limma genera los valores ajustados de p values.
Toptable cuenta con un argumento llamado adjust.method, que permite escoger el método estadístico para ajustar los valores p para pruebas múltiples.


BH es el valor de defecto, que son las iniciales de los autores del articulo de FDR.

Hoy en día hay personas que escriben nuevos algoritmos de como ajustar los valores p.

En general, nosotros usaremos FDR, y entonces ahora si se puede decir cuales son los genes diferencialmente expresados, que serán aquellos con un adjusted p-value, p value ajustado, menor a 0.05.

Si esto se reportara en un articulo, se diría que se esta controlando por el FDR de 5 por ciento, 5 %.

Entonces en este caso ya se pueden checar cuantos genes diferencialmente expresados tenemos con ese tipo de error.
Podemos ver que entonces se tienen 34000 genes diferencialmente expresados
En este caso no es raro porque el análisis se esta haciendo entre las muestras prenatales contra las postnatales, donde cambia completamente el cerebro, por lo que no es sorprendente que casi todos los genes estén diferencialmente expresados en esta condición.
En otros modelos pueden haber menos genes.


Se puede aparte hacer una grafica con plotMA, con los resultados, que muestra la relación entre log fold change en el eje Y y el promedio de logaritmo de expresión en el eje X.

Entonces los genes diferencialmente expresados serán los genes que salen en los extremos.
Esta es la versión mas básica de visualizar estos resultados.

Otra opción es usar la funcion de Volcanoplot.
Ahora muestra la relación de log fold change en el eje X y el log negativo del valor p en el eje Y.
El valor p entre más cercano a 0, tiene mas señal de expresión diferencial, pero para que se vea bien y no tener que ver valores cercanos a 0, se hace un log negativo.
Entonces los valores que estaban cercanos a 0 son ahora los valores grandes.


Al haberle dado al parámetro de Highlight el valor de 3, se resalta los 3 genes con mayor señal de expresión diferencial.
A esta imagen se le llama volcanoplot por su apariencia a un volcán.
Entonces este tipo de imágenes son muy comunes para ilustrar los resultados de expresión diferencial.


Dado que ya se conocen los genes con mayor señal de expresión diferencial, se pueden explorarse los detalles de los resultados de esos genes.

Se puede ver que los adjusted p-values son muy menores, mas que 0.05. Los valores t son enormes, y que los genes son protein_coding.

Entonces, tal vez interese saber lo que hacen las proteínas de esos tres genes. Para saberlo, se puede explorar en el sitio web de genecards. Los links están en el curso.


Con el gen ZSCAN2, se puede ver que esta relacionado con una enfermedad el cerebro, ataxia, y esta relacionado al desarrollo embrionico en ratones, y concuerda con nuestro análisis de expresión diferencial de cerebro entre las muestras prenatales y postnatales.

Para el gen VASH2, se ve que esta relacionado con la angiogénesis.

Se puede ver que se expresa en varios tejidos.
Genecards permite obtener mucha informacion.


Otra cosa que se puede hacer es un heatmap para visualizar los datos de los genes diferencialmente expresados.

Como son varios, solo tomaremos a los 50 genes con mayor señal de expresión diferencial, y para encontrarlos se usara la funcion de rank dándole los valores ajustados de p.
En nuestros datos ya normalizamos los valores de expresión e incluso los transformamos, y en vez de usar as.pcounts del objeto de RangedSummarizedExperiment, se extraerá un elemento del objeto de vGene que creamos, que es el que contiene el objeto devuelto de voom.

Vgene tiene un elemento llamado E, que son los valores de expresión ya normalizados. De ahí se van a extraer esos valores para los 50 genes con mayor señal de expresión diferencial.

Hasta ahorita, no se ha tenido mucha información aparte de los valores de expresión diferencial.

Entonces, de coldata se extraerán un par de variables para usarlos después en la grafica. Se extraerá la variable prenatal, RIN y sexo. Entonces se extraerá esa informacion la cual se convertirá en un data.frame con la funcion as.data.frame

Si se checan los nombres de las columnas, se ve que están algo largos para aparecer en una grafica, por lo que se cambiaran los nombres.


Ahora si se checan los cambios, se ven los nuevos nombres.

### pheatmap

Una vez tenida esa informacion, se carga el paquete pheatmap para crear el heatmap.

La p de pheatmap significa pretty.

Y con la funcion de pheatmap se da la matriz con los valores de expresión ya normalizados, y se escoge agrupar los genes en un cluster, mediante el argumento cluster_rows, y tambien se pueden agrupar las columnas, con clusters_cols.
Como se tienen 65 muestras y 50 genes, se apagan las etiquetas del pheatmap de las columnas y renglones, y para la anotación de las columnas se le da el data.frame creado con el grupo de edad, rin y sexo.

 

Lo que se obtiene es un heatmap que muestra las opciones de la variable de grupo de edad, de RIN, y el grupo de edad.
Rin era una variable continua, por lo que se resumió en un gradiente de color, categorizando la variable continua.

Esas tres variables se dieron al heatmap mediante el argumento de la anotación de las columnas, anottation_col.

Esa informacion de las variables aparece en la parte superior del heatmap, y se puede ver claramente que al hacer el clustering a lo largo de las columnas, se separan todas las muestras rojas de las verdes en la categoría agegroup.
Esto no es nada sorprendente porque hay mucha diferencia entre las muestras prenatales y postnatales, y era lo que se esperaba.
Si hubiera salido una muestra prenatal agrupada en las muestras postnatales ahí podría haber un problema en esa muestra.

Pheatmap tiene un algoritmo para escoger el método especifico de clustering, y es algo que se vera en los métodos de clustering en un futuro.

Pasando a los renglones, los genes, se puede ver que hay diferentes grupos de genes, donde por ejemplo en las muestras prenatales se tienen muchos cuadros azules.
Los colores que van de azul a naranja son la gamma de colores para representar los valores de expresión.

Ya teníamos datos de expresión normalizados, por lo que un valor negativo significara que tiene menor expresión, siendo azul, y uno con mayor nivel de expresión estará rojo.

A veces, por razones graficas, se puede indicar el rango de la gamma de colores, y cualquier valor menor o mayor, tendrá el color mas marcado.
Eso se puede hacer para visualmente resaltar ciertas diferencias.

Entonces se ve que hay un grupo de genes que no se expresan en las muestras prenatales.

Tambien se tiene un grupo de genes que ocurre lo contrario, teniendo valores mas bajos en los prenatales.
Al no tener las etiquetas de los genes, no se puede saber cuales son, pero se puede agregar si se desea.

Un heatmap es una imagen muy común para resumir los resultados de un análisis de expresión diferencial, y resaltar por ejemplo los genes con mayor señal de expresión diferencial.

Al ser valores normalizados, no existe una unidad de medida, pero se puede usar valores en una escala de RPM (Reads per million mapped reads), que es el numero de lecturas del gen por cada millón de lecturas que están alineadas contra el genoma. Aquí con limma y voom esta en una escala del logaritmo, por lo que seria mas complicado, pero igualmente se puede.
Para saber estos valores, se ocuparía revisar el vGene en E.
Pero ya se uso la funcion compute_some_factors para hacer la normalización y eliminar el composition bias.
Estos son valores mas difíciles de calcular exactamente que son, y la gente prefiere graficar reads per 10 million reads (RPTM).
Cada método tiene cosas buenas y malas. RPTM no ayuda mucho para eliminar el composition bias.
Hay gente que agarra los valores de expresión y los transforma para que se vuelvan valores de una distribución normal, centrados en cero, etc.
Al final de cuentas hay muchas opciones.


Aparte del heatmap, otro tipo de grafica que se podría hacer es una grafica de componentes principales, o la de MDS, la cual es similar a los componentes principales.


Entonces se podría hacer una grafica tal que para cada una de las 65 muestras se les puede poner una letra o símbolo coloreado.

La idea seria que en nuestro caso el componente principal 1 explicaria un porcentaje muy alto de la varianza, y las prenatales estarían separadas de las postnatales.

Entonces por ejemplo, en el workflow de MDS viene como usar la funcion de plotMDS.


Ahorita no se hará lo de MDS, sino que se vera como cambiar los colores del heatmap.

Si no nos gustaron los colores del heatmap, se pueden cambiar, ya sea con un paquete que cuente con ciertas paletas de colores.
Por ejemplo, el paquete RColorBrewer, contiene una serie de colores.

En esta liga se encuentra informacion para graficas de ggplot2.
Viene como cambiar colores.



Viene una imagen con los tipos de colores que hay en rcolorbrewer y de otros.


Los sets que usa el profe son set1, dark2, paired.

Entonces ahora se usaran colores para MDS.
Primero se carga el paquete de RColorBrewer
Después se crea una variable llamada col.group, donde se guardara los valores del dataframe con respecto al grupo de edad, prenatal y postnatal.
Se hará de tal forma que los niveles de col.group correspondan a los colores de set1.

Y después se correra en carácter.

Este objeto ahora tiene los colores.
Ya con esos colores, se puede hacer la grafica de MDS.


Se le dará los datos normalizados de vGene$E, las etiquetas serán del grupo de edad, y los colores serán de col.group.

Toma un poco de tiempo porque hay que calcularla de las dimensiones reducidas.
Se puede ver que dice la palabra prenatal y postnatal para cada una de las muestras. El lado de los dos grupos no importa.
El primer componente principal, leading logFC, que diferencia los grupos, explica el 31 % de la varianza.


Ahora se hará un MDS donde se coloreen las muestras dado el sexo.

La separación por sexos no muestra mucha separación.
No es tan sorprende porque tal vez la diferencia entre los sexos es pequeña. Tal vez si exista un componente de multidimensional scaling que explique esa diferencia, pero no será ni el primero ni el segundo.
Entonces tal vez la diferencia del sexo explica el 1 % de la varianza, siendo uno de los componentes alejados y no de los principales.

Entonces, este tipo de imagen se puede hacer antes del análisis de expresión diferencial. Aquí se hizo después porque ya se tienen los datos normalizados.
Estas graficas ayudan a comprender la historia del análisis realizado.

### Ejercicio
Se repetirá el heatmap con los nombres de los genes, y no los IDs. Al ser 50 genes, se ocupan extraer la informacion de esos genes, y para eso se tendrá que usar ya sea la informacion de RowRanges o RowData del objeto de SummarizedExperiment, o esa misma informacion se la pasamos al objeto de de_results, y en cualquiera de los casos probablemente se ocupe usar la funcion match para ligar una tabla a otra, o la funcion left_join de dplyr.



Heatmap, eje de las x son las muestras, eje de las y son los genes.
row.names(exprs_heatmap)<-de_results[row.names(exprs_heatmap),]$gene_name 

**Stopifnot**, se detiene si el resultado es falso. 



### Proyecto final
Hacer un análisis de expresión diferencial con 3 graficas.



## Clase 04/02/2022

La variable prenatal tiene dos valores, y el primero en ir en orden alfabético seria postnatal.
Model.matriz muestra que ese coeficiente es la diferencia de muestras prenatal y postnatal.


Si para el proyecto ocupamos mas poder computacional, se pueden usar los servers del lcg.


Se requiere conocer la relación entre las variables para determinar el modelo que mejor se ajusta.
SSe determina que variables añadir y que muestras eliminar.
Este proceso se le llamaría EDA.

EDGER
Composition bias
Normaliza los datos y elimina el composition bias.

Edger se usa para análisis de datos de nivel celular.

Sort.by se encarga de ordenar los genes con mayores diferencias en su expresión y usualmente queremos conservar las posiciones originales

Sort.by reordena los genes de acuerdo a su valor p si esta en default, y no estarán en el mismo orden que SE.

Argumento coef en toptable.
Coef permite selecciona el coeficiente de la variable de interés del análisis de expresión diferencial

Coef puede tener varios coeficientes

Se veía interaccion entre edad y region.
Al evaluar varios coeficientes se obtiene un valor F.

Este modelo evalua si la pendiente entre los dos tipos de líneas es significativamente diferente entre los distintos grupos de edades.

Tenemos una serie de desatos y un objeto de summarizedexperiment.
Vamos explorar este set de datos

Porcentaje de lecturas asignadas al cromosoma M, mitorate. Es un porcentaje indicativo de un error.
Grupos de diagnosis almacenados en PrimaryDx
SNAP25, gen neuronal, y ver si hay diferencias de expresión entre grupos de diagnosis. Es un boxplot, y es diferente a la parte 1 en cuestión de código.
Se debe crear un modelo full rank, y se hace con exploremodelmatrix.

 


Respuestas del ejercicio.

PrimaryDx es un factor, y la funcion droplevels elimina los niveles que no están presenten en los datos.


Podemos observar que mitorate y totalassignedgene son similares entre sus PrimaryDx.

Podemos generar tambien las imágenes anteriores en Isee.

Para la grafica de expresión del gene, se puede hacer con iSEE en feature assay


Se podía crear las graficas con ggplot.

Tambien se pueden añadir mas variables para observar las diferencias entre estas.


Para encontrar el gen de interés, en rowranges viene la columna symbol, la cual contiene el nombre de los genes.

Para extraer los datos de expresión, se puede buscar la posición del gene con which, y se crea un dataframe con los valores de expresión.

Entonces se tienen los valores de expresión en un ggplot. Esta figura es del logaritmo.


Plotexpression, funcion de scatter. 

Se tiene que este objeto es un objeto de ggplot2

Para el modelo estadístico, se exploran las variables de coldata.

Como no entendemos bien las variables, podemos tomar las de nuestro interés.

Para el modelo, la variable de interés hiria primero, y luego las variables de ajuste.

Para que funcione esta matriz, se requiere eliminar la categoría de other en PrimaryDx.

Para determinar si una matriz será fullrank, el numero de columnas debe ser igual a qr()$Rank

No se obtuvo un error de fullRank, pero las variables numéricas se volvieron factores, y no es muy útil.

Si las eliminamos, ahora podemos seguir.



spatialLIBD
Trabajo del profesor.
Determino un pripinrt que fue el primero en usar la plataforma visium.

Realizo varias platicas del tema.

Tambien hicieron un congreso.


Esta presentación es un resumen de los temas vistos en clase.

Han desarrollado herramientas para bioconductor y otras cosas.


SpatialExperiment
Es un paquete que involucra elementos de un singlecellexperiment.
Agrega informacion de las imágenes de los experimentos.
Se requieren coordenadas de cada uno de los spots de informacion.

spatialData fue eliminado en una futura actualización, y se paso a coldata.


Es como un mini recount3.
Tiene funciones para visualizar de forma interactiva los datos.
Ggspavis, es otro paquete para graficar datos.

Se generan los datos con visum, se procesan con spaceranger, y se visualizan con loupe o spatiallibd.
Se grafican datos continuos o discretos, y sirve para modelaje estadístico.

Tiene opciones para hacer el registro espacial de datos.
Si tenemos un set de datos de single cell, con clusters de células, y si son de la misma parte del cerebro, se puede encontrar los genes que están diferencialmente expresados en el cluster 1 contra los demás, y se obtienen los valores t.

Experimenthub, paquete para compartir datos.
Bayesspace, recapitula el proceso de anotación manual de manera mas cercana que otros métodos.

Vistoseg.
Con Matlab genero una serie de scipts llamado vistoseg.
El proceso de segmentación es para extraer datos de las imágenes.
Se pueden análisis de expresión diferencial entre los spots

Se obtiene una tabla con las coordenadas de los spots, las células, el porcentaje del spot cubierto por núcleos de células.

OSCA, es un libro …

Visum se modifico para ser compatible con imágenes de inmunofluorescencia.

Para generar las imágenes no se puede generar toda la imagen, sino varias imágenes pequeñas, cada una con otras varias imágenes.
Cada canal generado puede ser compacto o difuso, y tiene que ver sobre el proceso de segmentación.

 

 

Vignette
Shinyapps, servicio de rstudio que renta computadoras de amazon.

 

 


Se puede consultar a Brenda con respecto a trabajar con este profesor, Leonardo Collado Torres.

Hay valores laboratorios que trabajan con expresión diferencial, y podemos consultar en estos para trabajar con estos.

Ligas a diversas comunidades de R.

Maestría, doctorado, distintas opciones.
Carta para presentación.

Licenciatura a doctorado.
Donativos, trabajos de investigación.

Para el proyecto final, los perfiles de github serán similares a los egresados de otras licenciaturas.

La parte mas difícil son las cartas, cover letter.
Al solicitar doctorado, se debe de mandar a diferentes personas.

Hay sistemas que se aprovechan de los demás.
Hay PIAs que explotan a los trabajadores, porque saben que no tienen otra opción.
Hay jefes de grupos que se aprovechan de ello.

Para negociar salario, es cuando se hace la oferta de trabajo, y no cuando ya se esta trabajando.
Al momento de que se contrata o al momento de una promoción, es cuando se tiene que buscar el salario que se desea.

Subir horizontalmente es mas fácil que verticalmente. Esto significa que es mas fácil subir puestos y ganar mas dinero cambiando de lugar de trabajo en vez de permanecer en el mismo y subir puestos.

Al buscar un lab o empresa, es ideal preguntar sobre el trato de los labs.

Hay varios egresados que tienen mucho conocimiento en esto.

En la LCG, no entrenan como ser jefes/lideres, y sucede mucho en distintos labs.

Los países nórdicos daban derechos laborales, los asiáticos son mas estrictos.
Japón, instituto riken, es muy jerárquico.

Finlandia, tuvo mas facilidades.
EU, green card muy cara y con varias limitaciones.
Australia va bastante bien. Es un país con reglas de inmigración muy estrictas.

A los estudiantes de doctorado y postdocs son considerados como estudiantes, y no pagan como trabajo, pero en estados unidos pagan varios servicios de salud.
En ciertas universidades dan contribución para fondo de retiro en EUA.
En estudiantes, la visa F es de estudiante.
La visa J es cuando Mexico puede pedirte de regreso.

Las maestrías en Mexico requieren de un examen, y después del examen el tutor no paga, sino conacyt.
En EUA, las maestrías las paga el estudiante. Cuestan 52000 dolares al año en bioestadística, por ejemplo.

Solicitar admisión a un doctorado, y después la maestría. Este sistema existe en el que el doctorado que requiere un año de preparación los alumnos no pasen, y puedan elegir en cambio maestría.

Para doctorados tienen un comité de admisión, 3 o 4 profes, los cuales leen los CB y las cover letters. Había filtros como conocimientos de ingles y matemáticas, los jurys. 
Este tipo de jurys son los que eliminan a muchos latinos. Este es el primer filtro, y es importante practicar.
SAT, es un filtro de mexico.

CB, es resaltar las experiencias de laboratorio, explicando lo que se hizo en el proyecto de investigación, y las publicaciones. Con que sea pre-print basta, para no esperar el proceso de pre review.

Después de esto, se piden análisis real, épsilon y delta, para el doctorado de bioestadística.
En el cover letter, importa mostrar motivación y durar los 4-6 años de doctorado.

Se debe de dar cierta impresión que eres una persona comunicable/social, y que se tenga algo en común con el tutor. Es mas personal este cover letter, se puede mencionar cosas fuera de lo académico. Se redacta mas lo motivacional.

En el postdoc, se requiere 1 o 2 articulos de primer autor, e igual pueden ser pre-prints. Se busca que se pueda dominar estos, y que se pueda dar una platica en un seminario de 1 hora, y en esa hora se debe de dejar mucho tiempo para las preguntas. Es necesario tener la humildad de admitir las preguntas que no se conocen, en vez de dudar y decir ambigüedades.
30 minutos de presentación, 30 de preguntas que recibes.
Después del doctorado, esto se hace igualmente en entrevistas de empresas, es similar que en el postdoc.
Es importante ir en persona a hacer presentaciones en congresos, y no solo practicas de presentaciones en tu lab.

Se debe de buscar si los tutores dan fondos para los congresos.
Por ejemplo, para el profe le daban 1000 dolares para los congresos.
Hay lugares donde dan mas oportunidades o menos para los congresos.

Proyectos de bioinformatica y bioestadística.
Se reutiliza lo ya inventado para una tecnología nueva. Este tipo de proyectos siempre están.

Hay varios proyectos de enfermeadades, con modelos mas complejos, como modelos semi paramétricos.

Puede haber proyectos mas orientados a visualización de los datos.

Tambien hay proyectos que buscan resolver nuevos problemas, en vez de automatizar y optimizar.

GPUs, hay varios softwares con estos.
Cada vez se usan mas.

A numero de spots, tenia 50 mil spots a lo largo de 12 muestras. En la clase de hoy.

CSB

Hockins, universidad.
Es importante conocer personas para tener cartas de recomendación.






# <span style="color:darkblue"> Modulo 2 </span>

## Clase 01/02/2022

### Introducción 

Se ocupan 4 clases.
Se empezará con R y Bioconductor.

Slack, herramienta para compartir información con diferentes personas.

Para Windows, la instalación de base es para cuando se comienza a usar R, Rtools es para configurar paquetes desde código fuente. Se requieren instalar los paquetes especificados en el curso.

Se evalua la participación, trabajos, y proyecto final de compartir código.
Las notas/trabajos se guardaran en github.
Se deberá crear otro repositorio aparte para el proyecto final.

Introducción de R
Es usado para análisis de datos de secuenciación masiva y para Bioconductor.
Bioconductor permite compartir código en R con ciertos estándares.


Paquete de R que obtiene paleta de colores de una imagen.

R Weekly envía información de R semanalmente.

Existen varias opciones para obtener información de R, como Twitter.
TidyTuesday y DatosDeMiercoles son para obtener información y constentar preguntas.

Como pedir ayuda.
Existen distintos sitios/comunidades en los cuales puedes pedir ayuda.

Material donde esta involucrado el profesor.

### GitHub desde R
Creación de paginas web estáticas.
Es recomendado usar el mismo nombre de usuario en distintas redes usuarios.

Rstudio versiones

La parte de arriba es para instalar unas paqueteres, que son necesarios para edit_r_profile.
Usethis posee esta funcion edit_r_profile

Perfil de R.
Atajo: Ctrl+Shift+C, permite Volver todo el código comentado.

Este código es para configurar el perfil de R


Existe distinta información en estos links, como este cheatsheet.

Para uso de las notas y el proyecto final, se usaran Rstudio Projects, los cuales se ligaran a un repositorio de github.
Se requerirá usethis para esto.
Create_project: Permite generar un proyecto.
usethis::create_project("~/Desktop/rnaseq_2022_notas_envivo")

Se crea el directorio, se activa el proyecto, se creo el directorio R, se genero un archivo de configuración rproj.

Se crea un nuevo archivo para el proyecto de notas.

Se le añade el prefijo 01 para que los archivos se encuentren documentados.

Se creo el archivo automáticamente en el directorio de R.

Ahora creado ese script, se hace un copyandpaste de la información de la pagina del profe.

Sessioninfo, paquetería que obtiene información de la sesión.
Here, ayuda a escribir código que sea compartible.
Al usar el paquete de here, permite que mediante la funcion here() se acceda al directorio indicado.

Ejemplos donde se guardan datos en los directorios indicados con here.
Al inicio siempre se ponen los comandos de las librerias, library

useDingbats, si es FALSE es mas fácil editar el pdf con ilustradores.

Se usara usethis para ligar el proyecto con el repositorio de github.

Se deja esta ultima línea en blanco, y el renviron es para lo de github.

Gitcreds es mas seguro, dado que el token del usuario de github será encriptado. Con la funcion anterior el token queda en un archivo.


Se debe tambien configurar el perfil de github.

Debe tener las siguientes características, el name y email.

Una vez hecho esto, se usa el comando use_git, para inicializar el repositorio.

Se reinicia R studio, y ahora ya esta hecho el repositorio local.

Ahora con use_github, se crea el repositorio remoto con el nombre del directorio que contiene todo.

No es recomendable hacer un control de versiones para archivos mayores a 50 megas.

Opciones para obtener el material del curso.
Con use_course, descarga la versión actual de uncurso, o se puede clonar desde git el repositorio.

También con estos paquetes de R se puede clonar el repositorio.


Postcards, permite crear cartas de presentación, para paginas web.

Atajo: Ctrl+flecha arriba
Al escribir un comando en la consola, permite autocompletar mostrando los comandos que coincidan con los caracteres iniciales que se encuentren escritos en la consola en ese momento.

Los commits, push, y pull se realizan desde rstudio.


Al hacer un commit, aparece una nueva ventana con información.

### Bioinductor.

Bioinductor es un repositorio de paquetes de R para el análisis y comprensión de datos genómicos masivos.

Blog para usar Bioconductor.

Tiene bastante información el sitio web de Bioconductor.

Docker esta disponible como Bioconductor.

Bioconductor tiene tres advisory boards.

El Proyecto cuenta con un equipo core pagado por donativos, que son los encargados de la infraestructura de la pagina y las paqueterías.

Búsqueda de paqueterías de bioconductor.

Del lado izquierdo vienen 4 categorías.
Software, datos de anotación, datos exmperimentales, y flujos de trabajo 

Los paquetes de workflow son paquetes que explican como usar los paquetes de software.

Las dependencias indican el numero de paqueterías requeridas para su funcionamiento.

Support muestra la cantidad de preguntas contestadas y la cantidad de preguntas totaltes.
Build indica los errores ocurridos.

Una paquetería puede tener asociados varios artículos.
Vignette es como un tutorial de la paquetería.


Bioconductor requiere que un paquete cuente con una vignette para su publicación.

La sección de detalles incluye los biocViews que son las palabras claves.
Imports indica los paquetes necesarios para la paquetería.

Cuando se tengan dudas, estas se contestan en el repositorio en el apartado de Issues, en el sitio de ayuda de Bioconductor.
La ventaja de usar sitios públicos como foros es que todos pueden consultar las dudas ahí.

Existen dos versiones de Bioconductor, y se debe que cada 6 meses se actualiza.

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

SummarizedExperiment
Este paquete en el cual almacenaremos nuestros datos y organizarlos.

Workflow de rnaseqGene, explica como usar ese paquete de manera mas detallada que la vignette.

La información de summarizedexperimente se almacena en tres tipos de tablas.
ColData, RowRanges, and assay(s).
RowRanges, la informacion de los genes. Puede que tenga ese nombre por genomic ranges, que es un paquete útil para almacenar información de las coordenadas del genoma.
El objeto que se tiene en rowranges es un GRanges.

En cada renglón se tiene información de una muestra, y en cada columna se tendrá una variable de la muestra.


Expdata, ayuda a accesar a información de los experimentos (existe mayor libertad para guardar datos ahí).

Si coldata tiene un subconjunto, este se pasa a las demás tablas.

GenomicRanges

Es un programa mas antiguo.
Contiene 5 vignettes.

Objeto de granges
Contiene varios elementos/atributos de informacion.
Run Length Encoding, objeto que ayuda a almacenar información eficientemente, indicando con un vector los elementos que se repiten.

Ranges contiene a IRanges, viene de Interval Ranges. Almacena los rangos de los genes, y tambien sus nombres.

Strand, contiene información de la cadena.
GRanges puede almacenar varios elementos, como score, GC.
Al usarse la funcion rowRagnes, devuelve un objeto GRanges.

Si se  usa la funcion de RowData, lo que va a accesar son las variables opcionales.


Un paquete que esta muy relacionado es rtracklayer, el cual ayuda a leer datos de diferentes formatos.

 

Assays puede tener mas de una tabla, por lo que se debe de indicar en una lista las tablas que cuenta.


ColData tiene un DataFrame, la cual permite tener columnas con otros tipos de datos. Si es muy larga, imprime el inicio y final. Si fuese un data.frame, imprimiría todo.


Paqueteria iSEE

Provee una interfaz dinámica para explorar datos de SummarizedExperiment.

 


Las figuras se pueden descargar.

spatialLIBD, Expande el paquete de summarizedexperiment, y lo que hace es

Esta imagen es similar a la de summarized.
reducedDims, se almacena información de otros componentes

Datos de una region del cerebro, que son 84, pero no se tenia información de todas, y por eso aparecen 76 en sce_layer
Paquete de lobstr contiene la funcion obj_size, que permite obtener el tamaño de un objeto.

 

RNA.seq, permite usar datos de secuenciación masiva de DNA

SPEAQeasy, permite procesar los datos crudos de fastq, y crear objectos ranged summarized experiment.

Este proceso es computacionalmente demandante, por lo que es necesario de un cluster.
Speaqeasy permite hacer todo este flujo de trabajo.

Otra opción es usar datos de proyectos de recount.
Ha tenido tres fases.
La primera fase es ReCount, donde no existe R.
La segunda es recount, donde ya existe R.
La idea de este proyecto fue que dado que no todos tienen el poder computacional para el acceso de rna-seq.
Contiene datos procesados de manera uniforme.

recount, paso de 20 estudios a 2040 estudios aprox.

Usaron computadoras con AWS.

Se diseño de tal manera que no creciera de manera lineal.


Cobertura de las bases.

Gente que quiera procesar muestras puede obtener los datos ya procesados.

Humano y ratón son estas muestras.

Los datos se ofrecen en distintas anotaciones.


Available_projects, funcion que descarga los datos de humano.


Se tiene el ID, organismo, fuente de datos, el numero de muestras, el tipo de proyecto y el Project_home

Este proyecto tiene 12 muestras, era TFBS y chipseq.

Mediante la funcion subset, se puede obtener el proyecto.
Créate_rse, créate el objeto rse a partir de obtener un proyecto con subset.

Interactivedisplaybase, con la funcion display permite buscar información de los proyectos que reciba.


Raw_counts, la suma de la cobertura de cada una de las bases únicas de los exones de cada gen.

Compute_read_counts, transforma raw_counts en counts.

Desde NCBI se pueden acceder a los proyectos con los IDs.

Expand_sra_attributes, permite expandir la información/atributos.
Todas estas columnas extras contienen el prefijo sra_attribute.

Puede haber datos que difieran pos signos de puntación, por lo que puede requerirse una limpieza.
Gtex y tcga


Con ISEE, al hacer click en publish, permite publicar y compartir los datos.

 


Cuando se aprende algún concepto complejo, se pide que se explique.

Regresión lineal, suma de variables con un error con distribución normal.


Modelos estadísticos.
Se harán regresiones lineales, y para esto se usara la funcion model.matrix()

Funcion with, permite ahorrar líneas de texto.

Lm, calcula la regresión lineal.
Trees.
Lm internamente usa model.matrix

Al hacer un modelo de expresión diferencial, en vez de hacer miles de tablas de regresiones lineales, se extraerá la información para solo un coeficiente de interés.

Se extraerá el estimado, el valor t y pr. 

Exploremodelmatrix

Exploremodelmatrix, permite generar una interfaz grafica de shiny igual que la de ISEE.

Esta interfaz ayuda a entender los modelos de regresión lineal.

 

Ejemplo
Se tiene una respuesta, paciente, tratamiento, y ind.n


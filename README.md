# 👩‍🎓 UniSistema 👨‍🎓

Este proyecto tiene como objetivo desarrollar un sistema integral de gestión académica que permita a las instituciones educativas administrar de manera eficiente asignaturas, docentes, horarios y estudiantes. A través de la creación, modificación y eliminación de estas entidades, se busca optimizar los procesos de enseñanza y aprendizaje. Se elaborará un diagrama UML de Entidad-Relación (E-R) para representar claramente las relaciones y entidades involucradas, y posteriormente se creará la base de datos necesaria junto con las tablas utilizando sentencias de definición de datos (DDL). Con este sistema, se espera facilitar la matriculación de estudiantes en diversos cursos, mejorando así la organización y la accesibilidad en el entorno educativo. ✨

## 🏁 Requerimientos

- Crear asignaturas, modificarlas y eliminarlas.
- Crear, modificar y eliminar docentes.
- Se desea llevar un control de los horarios de cada asignatura.
- Se desea registrar la información de los estudiantes como su nombre.
- En cada curso pueden matricularse varios estudiantes
- Desarrollar el diagrama UML E-R.
- Crear la base de datos.
- Crear las tablas (ddl). 🎉

## 📋 Entidades

1. Estudiante
   - Estudiante_ID 
   - Nombre_Estudiante

2. Curso 
   - Curso_ID 
   - Curso

3. Docente 
   - Docente_ID 
   - Docente

4. Aula 
   - Aula_ID 
   - Aula

5. Dia 
   - Dia_ID 
   - Dia

6. Horario 
   - Horario_ID 
   - Horario

7. Dia_Horario 
   - Dia_Horario_ID 
   - Dia_ID 
   - Horario_ID 

8. Estudiante_Curso 
   - Estudiante_ID 
   - Curso_ID 
   - Docente_ID 
   - Aula_ID 
   - Dia_Horario_ID 

## 🤝 Relaciones

- Estudiante -----< Estudiante_Curso >----- Curso
  -  (Un estudiante puede tomar muchos cursos, y un curso puede tener muchos estudiantes)

- Docente -----< Estudiante_Curso
  -  (Un docente puede enseñar muchas combinaciones de estudiante-curso)

- Aula -----< Estudiante_Curso
  -  (Un aula puede ser utilizada para muchas combinaciones de estudiante-curso)

- Día >----- Día_Horario -----< Horario
  -  (Un día puede tener muchos horarios, y un horario puede estar asociado con muchos días)

- Día_Horario -----< Estudiante_Curso
  -  (Una combinación de día-horario puede estar asociada con muchas combinaciones de estudiante-curso)


## 🚀 Tecnologias utilizadas

 Las tecnologías que se utilizaron para este proyecto fueron MySQL como la base de datos relacional, Drawio.io para la realización de diagramas y MySQL Workbench como entorno de desarrollo. 🌟

 ## 👩‍🔧 Desarrollo 👨‍🔧

Una universidad está digitalizando su sistema de gestión de asignaturas, docentes y horarios. Actualmente, la información está registrada en una tabla única, pero ha generado redundancias y dificultades para mantener los datos actualizados.

![imagen](https://github.com/user-attachments/assets/f8da1662-7749-4800-9b8b-5c9494e6f088)

Se necesita normalizar la base de datos para que sea más eficiente y evitar la redundancia de datos.

### Primera Forma Normal 👩‍💻
La primera normalización es el proceso de eliminar la redundancia en la informacion de la tabla original y separar los datos en diferentes filas con el objetivo de que cada entrada sea única. 

![formanormal1](https://github.com/user-attachments/assets/e4a922fe-f558-4b79-a3da-ff98194288ac)

- Desglosar los datos repetitivos, en lugar de tener un solo registro donde se combina toda la informacion repetiva (como el curso, profesor, aula y horario), la información se ha separadpo para que cada fila represente solo un hecho único. Así cada estudiante tiene su propio registro, aunque compartan el mismo curso o profesor.
- En lugar de repetir información de un curso o profesor varias veces, cada dato esta bien organizado. Si un estudiante esta en un curso se registra solo una vez por estudiante.

### Segunda Forma Normal
La segunda normalización lo que hace es que ayuda a eliminar la redundancia y organizar mejor los datos. Asegurandose que cada dato depende unicamente de la llave principal (se que no hayan dependencias parciales).

![segunda](https://github.com/user-attachments/assets/352078d0-71dd-4753-af05-928572bfbd2d)

- Ahora cada tabla tiene un propósito claro y no hay dependencias innecesarias. Por ejemplo, el nombre del profesor solo depende de su Docente_ID en la tabla de docentes, no del curso o del estudiante.
- Los datos estan mejor organizados. Por ejemplo, cambias el horario de un curso, solo necesitas actualizar la tabla de horarios en lugar de modificar multiples registros en una tabla mas grande.
- Los datos de la tabla original se dividieron en varias tablas relacionadas, eliminando dependencias innecesarias y asegurando que cada dato este correctament organizado.
- Las tablas se conectan entre si mediante llaves, lo que facilita la administración de los datos.

### Tercera Forma Normal
La tercera normalización lo que hace o su objetivo principal es eliminar cualquier dependencia transitiva en una base de datos. Esto quiere dcir que ademas de cumplir con las condiciones de la primera y segunda forma normal, tambien se asegura de que los atributos no dependan de otros atributos que no sean llaves primarias.

![33](https://github.com/user-attachments/assets/899d9c8f-463a-4797-9044-d6baee92611c)




## Diagrama Modelo Relacional

![DIAGRAMA_RELACIONAL](https://github.com/user-attachments/assets/4dc4fb02-4fa4-4e43-81da-fe7bf7d9d2f5)

Este diagrama representa un diseño detallado y estructurado de una base de datos relacional con múltiples entidades interrelacionadas.

1. Se creó un esquema de base de datos relacional con múltiples tablas interconectadas.
2. Las columnas de cada tabla están listadas con sus nombres y tipos de datos (como INT, NVARCHAR, etc.).
3. Se establecieron relaciones entre las tablas mediante líneas de conexión, lo que indica las claves foráneas y las asociaciones entre entidades.
4. Algunas tablas parecen ser tablas de unión, lo que indica relaciones muchos a muchos entre otras entidades.
5. La organización visual del diagrama sugiere una jerarquía o agrupación lógica de las entidades relacionadas.
6. La presencia de múltiples tablas interconectadas sugiere un sistema de base de datos normalizado, diseñado para minimizar la redundancia y mantener la integridad de los datos.


## ✍️ Autor
- [Alvaro Martinez 🐈🔮](https://github.com/alvaroMartinez13)
- [Juliana Numa 💻🧁](https://github.com/Juliana0121)

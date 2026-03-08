# Fundamentos Básicos de C

Este repositorio contiene los ejercicios y ejemplos relacionados con los fundamentos básicos del lenguaje de programación C. Aquí encontrarás código de muestra, explicaciones y prácticas para ayudarte a comprender los conceptos esenciales de C, como variables, tipos de datos, estructuras de control, funciones y más.

## Contenido

<details>
  <summary> 📚 Estructura de Ejercicios en (.\Ejercicios)</summary>

~~~mermaid
graph TD
    A["📂 Ejercicios"] --> B["01 Introducción<br/>Ej: 01-05"]
    A --> C["02 Operadores y Expresiones<br/>Ej: 06-18"]
    A --> D["03 If, Switch, Operador Ternario<br/>Ej: 19-40"]
    A --> E["04 Bucles: For, While, Do-While<br/>Ej: 41-57"]
    A --> F["05 Funciones<br/>Ej: 58+"]
    A --> G["06 Arrays, Listas y Tablas<br/>Ej: TBD"]
    A --> H["07 Structs y Estructuras<br/>Ej: TBD"]
    A --> I["08 Punteros<br/>Ej: TBD"]
    A --> J["09 Asignación Dinámica<br/>Ej: TBD"]
    A --> K["10 Archivos y Base de Datos<br/>Ej: TBD"]

    B --> B1["Hola Mundo<br/>Variables<br/>Entrada/Salida"]
    C --> C1["Operadores Aritméticos<br/>Conversiones<br/>Cálculos: Áreas,<br/>Perímetros"]
    D --> D1["Condicionales<br/>Validaciones<br/>Menús"]
    E --> E1["Bucles iterativos<br/>Patrones<br/>Series"]
    F --> F1["Funciones con<br/>retorno<br/>Recursión"]
    G --> G1["Matrices<br/>Vectores<br/>Búsqueda/Orden"]
    H --> H1["Registros<br/>Composición"]
    I --> I1["Referencias<br/>Memoria"]
    J --> J1["malloc/free<br/>Asignación<br/>dinámica"]
    K --> K1["I/O por archivo<br/>SQL Básico"]

    %% Paleta moderna y contrastada
    style A fill:#2d3436,stroke:#000,color:#fff
    style B fill:#00cec9,stroke:#006064,color:#000
    style C fill:#0984e3,stroke:#0d47a1,color:#fff
    style D fill:#55efc4,stroke:#1b5e20,color:#000
    style E fill:#ffeaa7,stroke:#ffb300,color:#000
    style F fill:#dfe6e9,stroke:#636e72,color:#000
    style G fill:#a29bfe,stroke:#4527a0,color:#000
    style H fill:#fd79a8,stroke:#880e4f,color:#000
    style I fill:#fabd2f,stroke:#e65100,color:#000
    style J fill:#6c5ce7,stroke:#311b92,color:#fff
    style K fill:#e17055,stroke:#bf360c,color:#000
~~~

---

</details>

<details>
  <summary> Marco Teórico </summary>

### Que es C?

El lenguaje de programación C es un lenguaje de propósito general que se utiliza ampliamente para desarrollar software de sistemas, aplicaciones y juegos. Fue desarrollado **en los años 70 por Dennis Ritchie** en los **Laboratorios Bell**. C es conocido por su eficiencia, portabilidad y capacidad para interactuar directamente con el hardware.
Es  un lenguaje de **bajo nivel** que proporciona un control preciso sobre los recursos del sistema, lo que lo hace ideal para el desarrollo de sistemas operativos, controladores de dispositivos y aplicaciones de alto rendimiento. C es un lenguaje estructurado que permite a los programadores organizar su código en funciones y módulos, lo que facilita la reutilización y el mantenimiento del código.
C es un lenguaje de **programación compilado**, lo que significa que el **código fuente debe ser traducido a código máquina** antes de que pueda ser ejecutado. Esto se logra mediante un compilador, que toma el código fuente y lo convierte en un archivo ejecutable.
**Tipado estático**, lo que significa que las variables deben ser declaradas con un tipo específico antes de su uso. Esto ayuda a prevenir errores de tipo y mejora la seguridad del código.
**Tipado débil**, lo que significa que el lenguaje permite conversiones implícitas entre tipos de datos, lo que puede llevar a errores si no se maneja con cuidado.

### Compiladores de C

**Los compiladores de C** son programas que **convierten el código fuente C en código máquina** que puede ser ejecutado por una computadora. Entre las opciones más reconocidas y utilizadas se encuentran **Mingw-w64, Code::Blocks, Dev-C++, Visual Studio y Cygwin**.

Para descargar **Mingw-w64**, accede a su página oficial o utiliza gestores de paquetes como **Chocolatey** para una instalación automatizada. Este método simplifica el proceso y garantiza que obtengas la versión más reciente y estable.
en windows y mac se instala con mingw-w64, en Linux se puede instalar con el comando `sudo apt install build-essential` o `sudo apt install gcc`.

~~~bash
choco install mingw -y
~~~

Actualmente las variables de entorno se configuran automáticamente durante la instalación de Mingw-w64. S se utiliza Chocolatey

Para verificar que la configuración fue exitosa, abre una nueva ventana de PowerShell y ejecuta:

~~~ cmd
gcc --version
~~~

Para compilar un programa en C, navega hasta el directorio donde se encuentra tu archivo fuente (por ejemplo, `programa.c`) y ejecuta el siguiente comando:

~~~ cmd
gcc programa.c -o programa.exe
~~~

Para ejecutar tus compilaciones .exe

~~~ cmd
& ./nombre_del_programa.exe
~~~

### Estructura Básica de un Programa en C

Un programa en C generalmente sigue una estructura básica que incluye la inclusión de bibliotecas, la declaración de **funciones** y la **función principal** `main()`. Aquí hay un ejemplo de la estructura básica de un programa en C:

~~~C

#include <stdio.h> // Inclusión de la biblioteca estándar de entrada/salida
// Declaración de funciones (si es necesario)
// Función principal
int main() {    
    // Código del programa
    printf("¡Hola, Mundo!\n"); // Imprime un mensaje en la consola
    return 0; // Indica que el programa terminó correctamente
}
~~~

### Directivas de Preprocesador

Las directivas de preprocesador son instrucciones que **se procesan antes de la compilación del código**. Se utilizan para **incluir archivos de encabezado, definir macros y realizar otras tareas de configuración**. Algunas de las directivas de preprocesador comunes en C incluyen:

- `#include`: Se utiliza para incluir archivos de encabezado que contienen declaraciones de funciones, macros y definiciones de tipos. Por ejemplo, `#include <stdio.h>` **incluye la biblioteca** estándar de entrada/salida.
- `#define`: **Se utiliza para definir macros**, que son fragmentos de código que se pueden reutilizar en el programa. Por ejemplo, `#define PI 3.14159` define una constante para el valor de pi.
- `#ifdef`, `#ifndef`, `#endif`: Se utilizan para incluir o excluir secciones de código según si una macro está definida o no. Por ejemplo:

  ~~~c++
  #define DEBUG
  #ifdef DEBUG
      printf("Modo de depuración activado\n");
  #endif
  ~~~

- `#undef`: Se utiliza para eliminar la definición de una macro. Por ejemplo, `#undef PI` **eliminaría la definición de la constante PI**.
- `#error`: Se utiliza para generar un error de compilación si se cumple una condición específica. Por ejemplo, `#error "Este código no es compatible con esta plataforma"` generaría un error si se compila en una plataforma no compatible.
- `#pragma`: Se utiliza para proporcionar instrucciones específicas al compilador. Por ejemplo, `#pragma once` se utiliza para evitar la inclusión múltiple de un archivo de encabezado.

### Variables, Constantes y Tipos de Datos

En C, las **variables** son *espacios de memoria* que *almacenan datos*. Cada variable debe declararse con un **tipo de dato**, que define el tipo de información que puede guardar. Además, existen **constantes** y estructuras que permiten organizar mejor la información.

#### 🔹 Tipos de datos básicos

- **`int`** → números enteros.  

  ~~~c
  int edad = 25;
  ~~~

  > Su medida es de 4 bytes (32 bits) en la mayoría de las plataformas, con un rango típico de -2,147,483,648 a 2,147,483,647.

- **`float`** → números decimales de precisión simple.  

  ~~~c
  float pi = 3.14159;
  ~~~

  > Su medida es de 4 bytes (32 bits) y tiene un rango aproximado de 1.2E-38 a 3.4E+38 con una precisión de alrededor de 7 dígitos decimales. sin notación CIENTIFICA puede almacenar números con hasta 6 dígitos decimales de precisión. 10.000001f es un número válido.

- **`double`** → números decimales de doble precisión.  

  ~~~c
  double gravedad = 9.81;
  ~~~

    > Su medida es de 8 bytes (64 bits) y tiene un rango aproximado de 2.2E-308 a 1.8E+308 con una precisión de alrededor de 15 dígitos decimales.

- **`char`** → caracteres individuales.  

  ~~~c
  char letra = 'A';
  ~~~

  > Puede representar valores enteros del 0 al 255 (en sistemas de codificación como ASCII) o caracteres Unicode en sistemas más modernos. Su medida es de 1 byte (8 bits).
  el año de creación de **ASCII es 1963**, y se creó para **estandarizar la representación de caracteres en computadoras**. ASCII **asigna un número entero a cada carácter**, lo que permite que las computadoras almacenen y manipulen texto de manera eficiente.

  ejemplo ASCII:
  ascii('0') → 48    ascii('9') → 57
  ascii('A') → 65    ascii('Z') → 90
  ascii('a') → 97    ascii('z') → 122
  ascii(' ') → 32
  ascii('!') → 33
  ascii(',') → 44
  ascii('.') → 46
  ascii('?') → 63  

#### 🔹 Constantes

- **`const`** → valores que no cambian durante la ejecución.  

  ~~~c
  const int MAX_EDAD = 120;
  ~~~

  Pueden ser declarados local y globalmente

#### 🔹 Tipos especiales

- **`void`** → usado en funciones que no devuelven valor.  

  ~~~c
  void imprimirMensaje() { printf("Hola!\n"); }
  ~~~

### Entrada y Salida de Datos por Consola librería stdio.h

En C, se utilizan funciones específicas para leer y escribir datos en la consola. La función `printf()` se utiliza para imprimir texto y variables en la consola, mientras que `scanf()` se utiliza para leer datos ingresados por el usuario.

- `printf()`: Esta función se utiliza para imprimir texto y variables en la consola. Puedes usar especificadores de formato para mostrar diferentes tipos de datos, como `%d` para enteros, `%f` para números de punto flotante y `%s` para cadenas de texto.
- `scanf()`: Esta función se utiliza para leer datos ingresados por el usuario desde la consola. Puedes usar especificadores de formato similares a los de `printf()` para indicar el tipo de datos que esperas recibir.
- `getchar()`: Esta función se utiliza para leer un solo carácter desde la consola. Es útil para esperar a que el usuario presione una tecla antes de continuar con la ejecución del programa.
- `puts()`: Esta función se utiliza para imprimir una cadena de texto seguida de un salto de línea en la consola. Es una alternativa a `printf()` cuando solo necesitas imprimir texto sin formato.
- `gets()`: Esta función se utiliza para leer una línea completa de texto desde la consola. Sin embargo, es importante tener en cuenta que `gets()` es insegura y no se recomienda su uso debido a posibles desbordamientos de búfer. En su lugar, se recomienda usar `fgets()` para leer cadenas de texto de manera segura.
- `fgets()`: Esta función se utiliza para leer una línea completa de texto desde la consola de manera segura. Permite especificar el tamaño del búfer para evitar desbordamientos.
- `fprintf()`: Esta función se utiliza para escribir datos en un archivo o en la consola. Es similar a `printf()`, pero permite especificar un flujo de salida, como un archivo o `stdout` para la consola.
- `fscanf()`: Esta función se utiliza para leer datos desde un archivo o de la consola. Es similar a `scanf()`, pero permite especificar un flujo de entrada, como un archivo o `stdin` para la consola.
- `sscanf()`: Esta función se utiliza para leer datos de una cadena de texto en lugar de la consola. Es útil para analizar cadenas de texto y extraer información específica.
- `sprintf()`: Esta función se utiliza para formatear datos y almacenarlos en una cadena de texto. Es similar a `printf()`, pero devuelve la cadena formateada en lugar de imprimirla.

Ejemplos:

~~~C
#include <stdio.h>
int main() {
    // Imprimir un mensaje en la consola
    printf("Hola, Mundo!\n");

    // Declarar una variable de tipo cadena y imprimirla
    char libro[] = "El principito";
    printf("%s\n", libro);

    // Leer un número entero ingresado por el usuario
    int numero;
    printf("Ingresa un número entero: ");
    scanf("%d", &numero);
    printf("El número ingresado es: %d\n", numero);

    return 0;
}
~~~

### Formato de Salida y Especificadores de Forma

#### Caracteres de Escape

Los caracteres de escape en C son secuencias de caracteres que comienzan con una barra invertida (`\`) y se utilizan para representar caracteres especiales o realizar acciones específicas en la salida. Algunos de los caracteres de escape más comunes en C incluyen:

- `\n`: Salto de línea.
- `\t`: Tabulación.
- `\"`: Comilla doble.
- `\\`: Barra invertida.
- `\r`: Retorno de carro.
- `\b`: Retroceso.
- `\f`: Avance de página.
- `\v`: Tabulación vertical.
- `\a`: Sonido de campana.
- `\0`: Carácter nulo (indica el final de una cadena de texto).
- `\'`: Comilla simple.
- `\?`: Signo de interrogación.
- `\xhh`: Representa un carácter en formato hexadecimal, donde `hh` son dos dígitos hexadecimales.
  
#### Caracteres de Modificación

Los caracteres de modificación en C se utilizan para especificar el tipo de datos que se va a imprimir o leer con las funciones de entrada/salida, como `printf()` y `scanf()`. Estos caracteres indican cómo se debe formatear la salida o cómo se deben interpretar los datos de entrada. Algunos de los caracteres de modificación más comunes en C incluyen:

- `%c`: Imprime un carácter.
- `%d`: Imprime un número entero.
- `%f`: Imprime un número de punto flotante.
- `%s`: Imprime una cadena de caracteres.
- `%p`: Imprime la dirección de memoria de un puntero.
- `%o`: Imprime un número en base octal.
- `%x`: Imprime un número en base hexadecimal.
- `%u`: Imprime un número sin signo.
- `%e`: Imprime un número en notación científica.

---

### Operadores y Expresiones Lógicas

En C, los operadores son símbolos que realizan operaciones específicas en uno o más operandos. Algunos de los operadores comunes en C incluyen:

Valores numéricos: enteros (`int`), números de punto flotante (`float`, `double`), caracteres (`char`), y booleanos (`true` y `false`).

- Aritméticos: `a+b`, `a-b`, `a*b`, `a/b`, `a%b`.
- Asignación: `a=b`, `a+=b`, `a-=b`, `a*=b`, `a/=b`, `a%=b`, `a&=b`, `a|=b`, `a^=b`, `a>>=b`, `a<<=b`.
- Incremento y Decremento: `a++`, `a--`.

Valores booleanos: `true` (1) y `false` (0) en C, aunque no son tipos de datos nativos,

- Relacionales: `a==b`, `a!=b`, `a<b`, `a>b`, `a<=b`, `a>=b`.
- Lógicos: `a&&b` (AND), `a||b` (OR), `!a` (NOT).
- Bit a bit: `a&b`, `a|b`, `a^b`, `~a`, `a<<b`, `a>>b`.
- Ternario: `a?b:c` (operador condicional).
- Punteros: `*a`, apunta a una dirección de memoria `&b` regresa la dirección de memoria (desreferenciación), `->` (acceso a miembros a través de punteros).

Ejemplo de ->;

~~~c
struct Persona {
    char nombre[50];
    int edad;
};  
struct Persona persona1;
persona1.nombre = "Juan";
persona1.edad = 30;
struct Persona *ptr = &persona1;
printf("Nombre: %s, Edad: %d\n", ptr->nombre, ptr->edad);
~~~

- sizeof: `sizeof` (operador para obtener el tamaño de un tipo de dato o variable).
- Coma: `,` (operador para separar expresiones).
- Subíndices: `[]` (operador para acceder a elementos de un array).
- Miembro: `.` (operador para acceder a miembros de una estructura).
- Dirección: `&` (operador para obtener la dirección de una variable).

 ---

 En C, las expresiones lógicas se utilizan para evaluar condiciones y tomar decisiones en el flujo del programa. Estas expresiones pueden combinar operadores relacionales y lógicos para formar condiciones más complejas. Por ejemplo:

~~~c
int edad = 25;
if ((edad >= 18) && (edad <= 65)) {
    printf("Eres un adulto.\n");
} else {
    printf("No eres un adulto.\n");
}
~~~

### Condicionales If, Switch

En C, las estructuras de control de flujo permiten tomar decisiones y repetir bloques de código. Las principales estructuras de control incluyen:

- `if`: Ejecuta un bloque de código si una condición es verdadera.  

  ~~~c
  if (edad >= 18) {
      printf("Eres mayor de edad.\n");
  }
  ~~~

- `else`: Ejecuta un bloque de código si la condición del `if` es falsa.  

  ~~~c
  if (edad >= 18) {
      printf("Eres mayor de edad.\n");
  } else {
      printf("Eres menor de edad.\n");
  }
  ~~~

- `else if`: Permite verificar múltiples condiciones.

  ~~~c
  if (edad < 13) {
      printf("Eres un niño.\n");
  } else if (edad >= 13 && edad < 18) {
      printf("Eres un adolescente.\n");
  } else {
      printf("Eres un adulto.\n");
  }
  ~~~

🔹

- `switch`: Evalúa una expresión y ejecuta un bloque de código correspondiente a un valor específico definido como `case` en la estructura. `default`se ejecuta si no se cumple ningún caso en una estructura `switch`.
  
  ~~~c
  switch (opcion) {
      case 1:
          printf("Opción 1 seleccionada.\n");
          break;
      case 2:
          printf("Opción 2 seleccionada.\n");
          break;
      default:
          printf("Opción no válida.\n");
  }
  ~~~

### Macros

Las macros en C son fragmentos de código que se pueden reutilizar y se definen utilizando la directiva `#define`. Las macros pueden ser utilizadas para definir constantes, funciones o incluso bloques de código completos. Por ejemplo:

~~~c
#define PI 3.14159
#define AREA_CIRCULO(r) (PI * (r) * (r))
    const double PI2 = 3.14159;
int main() {
    double radio = 5.0;
    printf("El área del círculo es: %f\n", AREA_CIRCULO(radio));
    return 0;
}   
~~~

### Operador ternario

El operador ternario en C es una forma concisa de escribir una expresión condicional. Tiene la siguiente sintaxis:

~~~c
condicion ? valor_verdadero : valor_falso;
~~~

Por ejemplo:

~~~c
int edad = 2;
const char* mensaje = (edad >= 18) ? "Eres mayor de edad." : "Eres menor de edad.";
printf("%s\n", mensaje);    
~~~

### Ciclos While, Do-While, For

En C, los ciclos son estructuras de control que permiten repetir un bloque de código mientras se cumpla una condición. Las principales estructuras de ciclo incluyen:

- `while`: Ejecuta un bloque de código mientras una condición sea verdadera.  

  ~~~c
  int i = 0;
  while (i < 5) {
      printf("%d ", i);
      i++;
  }
  ~~~

- `do-while`: Ejecuta un bloque de código al menos una vez y luego verifica la condición.  

  ~~~c
  int i = 0;
  do {
      printf("%d ", i);
      i++;
  } while (i>0 &&i < 5);
  ~~~

- `for`: Ejecuta un bloque de código un número específico de veces.  

    ~~~c
    for (int i = 0; i < 5; i++) {
        printf("%d ", i);
    }
    ~~~

### ✨ Estructuras de Datos en C o Arrays, Listas, Pilas, Colas, Árboles y Grafos

En C, las **estructuras de datos** permiten organizar y manipular información en memoria de manera eficiente. A continuación se presentan las más comunes, con ejemplos prácticos:

---

#### 🔹 Arrays (Arreglos)

Colección de elementos del mismo tipo almacenados en posiciones contiguas de memoria.  

~~~c
#include <stdio.h>
int main() {
    int numeros[5] = {1, 2, 3, 4, 5};
    printf("Array: ");
    for (int i = 0; i < 5; i++) {
        printf("%d, ", numeros[i]);
    }
    return 0;
}
~~~

---

#### 🔹 Listas enlazadas

Colección de nodos donde cada nodo contiene un dato y un puntero al siguiente.  

~~~c
#include <stdio.h>
#include <stdlib.h>

struct Nodo {
    int dato;
    struct Nodo* siguiente;
};

int main() {
    struct Nodo* cabeza = NULL;
    struct Nodo* nodo1 = malloc(sizeof(struct Nodo));
    nodo1->dato = 10;
    nodo1->siguiente = NULL;
    cabeza = nodo1;

    struct Nodo* nodo2 = malloc(sizeof(struct Nodo));
    nodo2->dato = 20;
    nodo2->siguiente = NULL;
    nodo1->siguiente = nodo2;

    struct Nodo* actual = cabeza;
    while (actual != NULL) {
        printf("%d -> ", actual->dato);
        actual = actual->siguiente;
    }
    printf("NULL\n");

    return 0;
}
~~~

---

#### 🔹 Pilas (Stacks)

Estructura LIFO (*Last In, First Out*).  

~~~c
#include <stdio.h>
#define MAX 5

int stack[MAX], top = -1;

void push(int x) {
    if (top < MAX - 1) stack[++top] = x;
}
int pop() {
    return (top >= 0) ? stack[top--] : -1;
}

int main() {
    push(10); push(20); push(30);
    printf("Pop: %d\n", pop());
    printf("Pop: %d\n", pop());
    return 0;
}
~~~

#### 🔹 Colas (Queues)

Estructura FIFO (*First In, First Out*).  

~~~c
#include <stdio.h>
#define MAX 5

int queue[MAX], front = 0, rear = -1;

void enqueue(int x) {
    if (rear < MAX - 1) queue[++rear] = x;
}
int dequeue() {
    return (front <= rear) ? queue[front++] : -1;
}

int main() {
    enqueue(10); enqueue(20); enqueue(30);
    printf("Dequeue: %d\n", dequeue());
    printf("Dequeue: %d\n", dequeue());
    return 0;
}
~~~

---

#### 🔹 Árboles (Trees)

Estructura jerárquica con nodos conectados.  

~~~c
#include <stdio.h>
#include <stdlib.h>

struct Nodo {
    int dato;
    struct Nodo* izq;
    struct Nodo* der;
};

struct Nodo* crearNodo(int dato) {
    struct Nodo* nuevo = malloc(sizeof(struct Nodo));
    nuevo->dato = dato;
    nuevo->izq = nuevo->der = NULL;
    return nuevo;
}

int main() {
    struct Nodo* raiz = crearNodo(10);
    raiz->izq = crearNodo(5);
    raiz->der = crearNodo(15);

    printf("Raíz: %d, Izq: %d, Der: %d\n", raiz->dato, raiz->izq->dato, raiz->der->dato);
    return 0;
}
~~~

---

#### 🔹 Grafos (Graphs)

Conjunto de nodos y aristas que representan relaciones.  

~~~c
#include <stdio.h>

#define N 4
int main() {
    int grafo[N][N] = {
        {0,1,0,1},
        {1,0,1,0},
        {0,1,0,1},
        {1,0,1,0}
    };

    printf("Matriz de adyacencia:\n");
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            printf("%d ", grafo[i][j]);
        }
        printf("\n");
    }
    return 0;
}
~~~

---

### Funciones

Bloques de código reutilizables que realizan tareas específicas. Permiten organizar el programa y mejorar la legibilidad.

~~~c
#include <stdio.h>
void saludar() {
    printf("¡Hola, Mundo!\n");
}
int sumar(int a, int b) {
    return a + b;
}
int main() {
    saludar();
    int resultado = sumar(5, 3);
    printf("La suma es: %d\n", resultado);
    return 0;
}
~~~

---

### Structs (Estructuras/Clases en C)

Agrupan variables de distintos tipos bajo un mismo nombre, representando entidades con múltiples atributos. Son como las clases en C++ pero sin métodos, o hay herencia ni polimorfismo: se limita a organizar datos..

~~~c
#include <stdio.h>
struct Persona {
    char nombre[50];
    int edad;
};
int main() {
    struct Persona persona1;
    printf("Ingresa el nombre: ");
    scanf("%49s", persona1.nombre);
    printf("Ingresa la edad: ");
    scanf("%d", &persona1.edad);
    printf("Nombre: %s, Edad: %d\n", persona1.nombre, persona1.edad);
    return 0;
}
~~~

---

### Punteros

Variables que almacenan direcciones de memoria. Permiten manipular datos de manera eficiente y son fundamentales para la gestión dinámica de memoria.

~~~c
#include <stdio.h>
int main() {
    int numero = 10;
    int *puntero = &numero;
    printf("Valor de la variable: %d\n", numero);
    printf("Valor a través del puntero: %d\n", *puntero);
    return 0;
}
~~~

- `&` se utiliza para obtener la dirección de memoria de una variable.
- `*` se utiliza para acceder al valor almacenado en esa dirección de memoria a través del puntero.
  
  Los punteros también se pueden usar para crear estructuras de datos dinámicas, como listas enlazadas, árboles y grafos, y para manejar arrays de manera eficiente.

⚠️ Detalle importante

- Si declaras varias variables en la misma línea, ahí sí se nota la diferencia:

~~~c
int* a, b;   // a es puntero a int, b es int normal
int *a, *b;  // a y b son punteros a int
~~~

👉 Por eso muchos programadores prefieren `int *a, *b;` para dejar claro que el `*` va con la variable.

#### 🔹Pasar datos por referencia a una función

En C, puedes pasar datos por referencia a una función utilizando punteros. Esto permite que la función modifique el valor de la variable original en lugar de trabajar con una copia. Aquí tienes un ejemplo:

~~~c
#include <stdio.h>
void changeValue(char *letra) {
    *letra = 'X'; // Modifica el valor al que apunta el puntero
}
int main() {
    char letra = 'A';
    printf("Antes de la función: %c\n", letra);
    changeValue(&letra); // Pasa la dirección de memoria de la variable letra
    printf("Después de la función: %c\n", letra);
    return 0;
}
~~~

---

#### 🔹Punteros y memoria dinámica

En C, los punteros son esenciales para manejar memoria dinámica, lo que permite asignar y liberar memoria en tiempo de ejecución. Esto es especialmente útil para crear estructuras de datos flexibles como listas enlazadas, árboles y grafos. Al utilizar funciones como `malloc()`, `calloc()`, `realloc()` y `free()`, puedes gestionar la memoria de manera eficiente y evitar problemas como fugas de memoria o acceso a memoria no válida.

~~~c
#include <stdio.h>
#include <stdlib.h>
struct Nodo {
    int dato;
    struct Nodo* siguiente;
};  
int main() {
    struct Nodo *cabeza = NULL;
    struct Nodo *nodo1 = malloc(sizeof(struct Nodo));
    nodo1->dato = 10;
    nodo1->siguiente = NULL;
    cabeza = nodo1;
    struct Nodo *nodo2 = malloc(sizeof(struct Nodo));
    nodo2->dato = 20;
    nodo2->siguiente = NULL;
    nodo1->siguiente = nodo2;
    struct Nodo *actual = cabeza;
    while (actual != NULL) {
        printf("%d -> ", actual->dato);
        actual = actual->siguiente;
    }
    printf("NULL\n");
    return 0;
}
~~~

---

### Manejo de Memoria Dinámica

En C, el manejo de memoria dinámica se realiza utilizando las funciones `malloc()`, `calloc()`, `realloc()` y `free()`. Estas funciones permiten asignar y liberar memoria en tiempo de ejecución, lo que es útil para crear estructuras de datos dinámicas como listas enlazadas, árboles y grafos.

- `malloc(size_t size)`: Asigna un bloque de memoria de tamaño especificado y devuelve un puntero a la memoria asignada. El contenido de la memoria no está inicializado.
- `calloc(size_t num, size_t size)`: Asigna un bloque de memoria para un número específico de elementos de un tamaño determinado y devuelve un puntero a la memoria asignada. La memoria asignada se inicializa a cero.
- `realloc(void *ptr, size_t new_size)`: Cambia el tamaño de un bloque de memoria previamente asignado. Si el nuevo tamaño es mayor, el contenido original se conserva y el nuevo espacio se inicializa a cero. Si el nuevo tamaño es menor, el contenido se trunca.
- `free(void *ptr)`: Libera un bloque de memoria previamente asignado, devolviendo la memoria al sistema para su reutilización.
- Es importante utilizar estas funciones de manera adecuada para evitar fugas de memoria y otros problemas relacionados con el manejo de memoria en C.
- Ejemplo de uso de memoria dinámica:
  
~~~c
#include <stdio.h>
#include <stdlib.h>
int main() {
    int *array = malloc(5 * sizeof(int)); // Asigna memoria para un array de 5 enteros
    if (array == NULL) {
        fprintf(stderr, "Error al asignar memoria\n");
        return 1;
    }
    for (int i = 0; i < 5; i++) {
        array[i] = i + 1; // Inicializa el array con valores del 1 al 5
    }
    printf("Array dinámico: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
    free(array); // Libera la memoria asignada
    return 0;
}
~~~

</details>

---

## Obtenido de

- [Aprende C en 45 minutos (curso desde cero) 💻](https://www.youtube.com/watch?v=1-qjMS6C960)

- [APRENDE C EN 30 MINUTOS](https://www.youtube.com/watch?v=6pWm9OpC9f0)

- [Blog de Programación en C](https://elblogdelprogramador.com/posts/como-instalar-compiladores-de-c-y-c-en-windows-paso-a-paso/#gsc.tab=0)




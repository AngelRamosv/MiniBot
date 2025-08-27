// Tipo personalizado
export type DifficultyLevel = 'basic' | 'intermediate' | 'advanced';

// TOPICS para los temas
export const TOPICS = { // Objeto
  INTRO: 'introduccion',
  VARIABLES: 'variables',
  OPERATORS: 'operadores',
  CONDITIONAL: 'condicionales',
  CYCLES: 'ciclos',
  FUNCTIONS: 'funciones',
  LIST: 'listas',
  DICTIONARY: 'diccionarios',
  ERROR_HANDLING: 'manejo_errores',
  FILES: 'archivos',
  POO: 'poo',
  LAMBDA: 'lambda',
  MANAGEMENT: 'manejo_archivos',
  LIBRARIES: 'librerias',
  API: 'api'
} as const;

// Interface de pregunta
export interface Question {
  id: string;
  questionText: string;
  options: string[];
  correctAnswer: number;
  topic: string;
  difficulty: DifficultyLevel;
}

// Arreglo de preguntas organizado por temas
export const allQuestions: Question[] = [
  // Tema Introducción
  {
    id: 'intro_1',
    questionText: `¿Python es un lenguaje?`,
    options: ['Interpretado', 'Compilado', 'De bajo nivel', 'Dinámico'],
    correctAnswer: 0,
    topic: TOPICS.INTRO,
    difficulty: 'basic'
  },
  {
    id: 'intro-2',
    questionText: `¿Qué característica destaca a Python?`,
    options: ['Ejecución', 'Sintaxis legible', 'Uso de llaves {}', 'Compilación nativa'],
    correctAnswer: 1,
    topic: TOPICS.INTRO,
    difficulty: 'basic'
  },
  {
    id: 'intro-3',
    questionText: `¿Para qué se usa comúnmente Python?`,
    options: ['Desarrollo web', 'Análisis de datos', 'Automatización', 'Todas las anteriores'],
    correctAnswer: 3,
    topic: TOPICS.INTRO,
    difficulty: 'basic'
  },

  // Tema Variables
  {
    id: 'var-1',
    questionText: `¿Cómo se define una variable en Python?`,
    options: ['var x', 'let x', 'x = 5', 'def x'],
    correctAnswer: 2,
    topic: TOPICS.VARIABLES,
    difficulty: 'basic'
  },
  {
    id: 'var-2',
    questionText: `¿Qué tipo es x = 3.14?`,
    options: ['int', 'str', 'float', 'bool'],
    correctAnswer: 2,
    topic: TOPICS.VARIABLES,
    difficulty: 'basic'
  },
  {
    id: 'var-3',
    questionText: `¿Cuál es el nombre de variable válido en Python?`,
    options: ['1variable', 'nombre-variable', 'class', 'nombre_variable'],
    correctAnswer: 3,
    topic: TOPICS.VARIABLES,
    difficulty: 'basic'
  },

  // Tema Operadores
  {
    id: 'ope-1',
    questionText: `¿Operador que se usa para obtener el resto de una división?`,
    options: ['/', '%', '//', '&'],
    correctAnswer: 1,
    topic: TOPICS.OPERATORS,
    difficulty: 'basic'
  },
  {
    id: 'ope-2',
    questionText: `¿Cuál será el resultado de esta operación en Python? 5 + 3 * 2?`,
    options: ['11', '16', '10', '7'],
    correctAnswer: 0,
    topic: TOPICS.OPERATORS,
    difficulty: 'basic'
  },
  {
    id: 'ope-3',
    questionText: `¿Qué valor tendrá la variable "x" después de ejecutar este código en Python?
    x = 5
    x += 3`,
    options: ['7', '1', '5', '8'],
    correctAnswer: 3,
    topic: TOPICS.OPERATORS,
    difficulty: 'basic'
  },

  // Tema Condicionales
  {
    id: 'cond-1',
    questionText: `x = 5
    if x > 3:
       print("Mayor que 3")
    else:
       print("Menor o igual a 3")`,
    options: ['Menor o igual a 3', 'Mayor que 3', 'No mostrará nada', 'Error de sintaxis'],
    correctAnswer: 1,
    topic: TOPICS.CONDITIONAL,
    difficulty: 'basic'
  },
  {
    id: 'cond-2',
    questionText: `numero = 0
    if numero:
       print("Verdadero")
    else:
       print("Falso")`,
    options: ['Verdadero', '0', 'Falso', 'No mostrará nada'],
    correctAnswer: 2,
    topic: TOPICS.CONDITIONAL,
    difficulty: 'basic'
  },
  {
    id: 'cond-3',
    questionText: `¿Cuál es el operador lógico, para indicar que un valor no es igual a otro?`,
    options: ['!=', '<', '+=', '%'],
    correctAnswer: 0,
    topic: TOPICS.CONDITIONAL,
    difficulty: 'basic'
  },

  //Tema Ciclos
  {
    id: 'cyc-1',
    questionText: `¿Con qué bucle podemos ejecutar un conjunto de sentencias siempre que una condición sea verdadera?`,
    options: ['for', 'elif', 'range', 'while'],
    correctAnswer: 3,
    topic: TOPICS.CYCLES,
    difficulty: 'basic'
  },
  {
    id: 'cyc-2',
    questionText: `¿Bucle que se utiliza para iterar sobre una secuencia (lista, tupla, diccionario, etc?`,
    options: ['for ', 'elif', 'range', 'while'],
    correctAnswer: 0,
    topic: TOPICS.CYCLES,
    difficulty: 'basic'
  },
  {
    id: 'cy-3',
    questionText: `¿Qué hace la sentencia break?`,
    options: ['Inicia la ejecución', 'Válida el ciclo', 'Detiene un ciclo', 'No hace nada'],
    correctAnswer: 2,
    topic: TOPICS.CYCLES,
    difficulty: 'basic'
  },

  // Tema Funciones
  {
    id: 'func-1',
    questionText: `¿Cómo se define una función?`,
    options: ['def test():', 'test() =>', 'func test()', 'function test()'],
    correctAnswer: 0,
    topic: TOPICS.FUNCTIONS,
    difficulty: 'intermediate'
  },
  {
    id: 'func-2',
    questionText: `¿Qué imprime el siguiente código?

    def operar(a, b = 5):
        return a * b + 2
    resultado = operar(3, 2)
    print(resultado)`,
    options: ['17', '8', '15', 'Error'],
    correctAnswer: 1,
    topic: TOPICS.FUNCTIONS,
    difficulty: 'intermediate'
  },
  {
    id: 'func-3',
    questionText: `¿Qué hace el siguiente código?

    def saludar(nombre):
        return f"¡Hola, {nombre}!
    mensaje = saludar("Ana")
    print(mensaje)`,
    options: ['¡Hola, nombre!', '¡Hola!', 'Error', '¡Hola, Ana!'],
    correctAnswer: 3,
    topic: TOPICS.FUNCTIONS,
    difficulty: 'intermediate'
  },

  // Tema Listas
  {
    id: 'list-1',
    questionText: `¿Cuál es la diferencia principal entre una lista y una tupla en Python?`,
    options: ['L = inmutables',
      'L usan [ ], T ()',
      'Són iguales',
      'No hay diferencia'],
    correctAnswer: 1,
    topic: TOPICS.LIST,
    difficulty: 'intermediate'
  },
  {
    id: 'list-2',
    questionText: `¿Qué imprime este código?

    mi_lista = [1, 2, 3]
    mi_tupla = (4, 5, 6)
    mi_lista[0] = 10
    print(mi_tupla[0] + mi_lista[0])`,
    options: ['14', '5', 'Error', '11'],
    correctAnswer: 0,
    topic: TOPICS.LIST,
    difficulty: 'intermediate'
  },
  {
    id: 'list-3',
    questionText: `¿Qué imprime este código?

    a = (1, [2, 3])
    a[1][0] = 99
    print(a[1][0])`,
    options: ['Error', '10', '1', '[7]'],
    correctAnswer: 2,
    topic: TOPICS.LIST,
    difficulty: 'intermediate'
  },

  // Tema Diccionarios
  {
    id: 'dic-1',
    questionText: `¿Qué imprime este código?

    dic = {'a': 1, 'b': 2}
    dic['c'] = dic.pop('a')
    print(dic['c'])`,
    options: ['1', '2', 'Error', 'a'],
    correctAnswer: 0,
    topic: TOPICS.DICTIONARY,
    difficulty: 'intermediate'
  },
  {
    id: 'dic-2',
    questionText: `¿Qué método de diccionarios devuelve todas las claves y valores como tuplas?`,
    options: ['.keys()', '.values()', '.get()', '.items()'],
    correctAnswer: 3,
    topic: TOPICS.DICTIONARY,
    difficulty: 'intermediate'
  },
  {
    id: 'dic-3',
    questionText: `¿Qué imprime el siguiente código?

    thisdict =	{
      "brand": "Ford",
      "model": "Mustang",
      "year": 1964
    }
    x = thisdict.get("model")
    print(x)`,
    options: ['Ford', 'Mustang', '1964', 'model'],
    correctAnswer: 1,
    topic: TOPICS.DICTIONARY,
    difficulty: 'intermediate'
  },

  // Tema Manejo de errores
  {
    id: 'man-1',
    questionText: `¿Qué tipo de error captura este bloque?

    try:
      num = int("abc")
    except ValueError:
      print("Error convertido")`,
    options: ['TypeError', 'SyntaxError', 'ValueError', 'IndexError'],
    correctAnswer: 2,
    topic: TOPICS.ERROR_HANDLING,
    difficulty: 'intermediate'
  },
  {
    id: 'man-2',
    questionText: `¿Qué imprime este código?

    try:
        lista = [1, 2]
        print(lista[2])
    except IndexError:
        print("Fuera de rango")
    else:
        print("Todo bien")`,
    options: ['2', 'Todo bien', 'Error', 'Fuera de rango'],
    correctAnswer: 3,
    topic: TOPICS.ERROR_HANDLING,
    difficulty: 'intermediate'
  },
  {
    id: 'man-3',
    questionText: `¿Cuál es la diferencia principal entre 'except' y 'finally'?

    1. except captura errores, finally siempre se ejecuta
    2. except para sintaxis, finally para lógica
    3. Son lo mismo
    4. finally captura, except limpia`,
    options: ['1', '2', '3', '4'],
    correctAnswer: 0,
    topic: TOPICS.ERROR_HANDLING,
    difficulty: 'intermediate'
  },

  // Tema Archivos
  {
    id: 'file-1',
    questionText: `¿Cómo se lee TODO el contenido de un archivo en una sola cadena?`,
    options: ['read()', 'readline()', 'readlines()', 'readall()'],
    correctAnswer: 0,
    topic: TOPICS.FILES,
    difficulty: 'intermediate'
  },
  {
    id: 'file-2',
    questionText: `Para procesar archivos grandes, ¿cuál es la forma más eficiente?`,
    options: ['Hacer un push', 'read() + split()', 'Bucle for línea in archivo', 'readlines()'],
    correctAnswer: 2,
    topic: TOPICS.FILES,
    difficulty: 'intermediate'
  },
  {
    id: 'file-3',
    questionText: `Si el archivo tiene "Hola\nMundo", ¿qué devuelve read()?`,
    options: ['["Hola", "Mundo"]', '"Hola\\nMundo"', '"Hola Mundo"', 'Error'],
    correctAnswer: 1,
    topic: TOPICS.FILES,
    difficulty: 'intermediate'
  },

  // Tema POO
  {
    id: 'poo-1',
    questionText: `¿Qué patrón permite modificar la creación de clases en Python?`,
    options: ['Decoradores', 'Metaclases', 'Condicionales', 'Herencia múltiple'],
    correctAnswer: 1,
    topic: TOPICS.POO,
    difficulty: 'advanced'
  },
  {
    id: 'poo-2',
    questionText: `¿Qué principio POO permite que un objeto sea tratado como instancia de su clase padre?`,
    options: ['Herencia', 'Encapsulamiento', 'Abstracción', 'Polimorfismo'],
    correctAnswer: 3,
    topic: TOPICS.POO,
    difficulty: 'advanced'
  },
  {
    id: 'poo-3',
    questionText: `¿Qué método se usa en este código?

    class Perro:
       def __init__(self):
           self.nombre = "Fido"`,
    options: ['__init__', '__str__', '__add__', 'Ninguna'],
    correctAnswer: 0,
    topic: TOPICS.POO,
    difficulty: 'advanced'
  },

  // Tema Funciones Lambda
  {
    id: 'lam-1',
    questionText: `¿Qué imprime este código?

    f = lambda x: [x+i for i in range(3)]
    print(f(5))`,
    options: ['8', 'Error', '[0, 1, 2]', '[5, 6, 7]'],
    correctAnswer: 3,
    topic: TOPICS.LAMBDA,
    difficulty: 'advanced'
  },
  {
    id: 'lam-2',
    questionText: `¿Qué función lambda equivale a esta función?

    def duplicar(x):
        return x * 2`,
    options: ['lambda x: x * 2', 'lambda x: x + 2', 'lambda x: x ** 2', 'lambda: x * 2'],
    correctAnswer: 0,
    topic: TOPICS.LAMBDA,
    difficulty: 'advanced'
  },
  {
    id: 'lam-3',
    questionText: `¿Para qué se usan las funciones lambda?`,
    options: ['Herencia', 'Funciones simples', 'Variables globales', 'Clases complejas'],
    correctAnswer: 1,
    topic: TOPICS.LAMBDA,
    difficulty: 'advanced'
  },

  // Tema Manejo de archivos
  {
    id: 'mda-1',
    questionText: `Al usar "with open() as", ¿qué ventaja tiene sobre open()/close() manual?`,
    options: ['POO', 'Cierre automático', 'Soporte ZIP', 'Solo lectura'],
    correctAnswer: 1,
    topic: TOPICS.MANAGEMENT,
    difficulty: 'advanced'
  },
  {
    id: 'mda-2',
    questionText: `¿Por qué esto es seguro?

    with open('data.txt', 'r') as f:
         contenido = f.read()`,
    options: ['Auto-cierre', 'Mejor rendimiento', 'Soporte UTF-8', 'Auto-completado'],
    correctAnswer: 0,
    topic: TOPICS.MANAGEMENT,
    difficulty: 'advanced'
  },
  {
    id: 'mda-3',
    questionText: `¿Qué modo permite leer y escribir sin truncar el archivo?

    open('datos.txt', '__')`,
    options: ['"w+"', '"p+"', '"a+"', '"r+"'],
    correctAnswer: 3,
    topic: TOPICS.MANAGEMENT,
    difficulty: 'advanced'
  },

  // Tema Librerías
  {
    id: 'lib-1',
    questionText: `¿Para qué sirve el decorador @property?
    1. Convertir métodos en atributos
    2. Ejecutar código asíncrono
    3. Validar tipos de datos
    4.Serializar objetos`,
    options: ['1', '2', '3', '4'],
    correctAnswer: 0,
    topic: TOPICS.LIBRARIES,
    difficulty: 'advanced'
  },
  {
    id: 'lib-2',
    questionText: `¿Qué hace pathlib.Path('dir/file.txt').stem?`,
    options: ['Devuelve \'file.txt\'', 'Crea el archivo', 'Devuelve \'file\'', 'Nada'],
    correctAnswer: 2,
    topic: TOPICS.LIBRARIES,
    difficulty: 'advanced'
  },
  {
    id: 'lib-3',
    questionText: `¿Qué imprime json.loads('{"a": 1}')['a']?`,
    options: ['0', '1', '\'a\'', 'Error'],
    correctAnswer: 1,
    topic: TOPICS.LIBRARIES,
    difficulty: 'advanced'
  },

  // Tema API
  {
    id: 'ap-1',
    questionText: `¿Qué patrón de diseño es esencial para APIs RESTful?`,
    options: ['Singleton', 'Strategy', 'Stateless', 'Stage'],
    correctAnswer: 2,
    topic: TOPICS.API,
    difficulty: 'advanced'
  },
  {
    id: 'ap-2',
    questionText: `¿Qué verifica este código?
    response = requests.get(url, headers={'Authorization': 'Bearer token'})
    response.raise_for_status()`,
    options: ['Que el JSON sea válido', 'Que el status code sea 2XX', 'Que exista el header', 'Ninguna'],
    correctAnswer: 1,
    topic: TOPICS.API,
    difficulty: 'advanced'
  },
  {
    id: 'ap-3',
    questionText: `¿Qué hace @app.route() en Flask?`,
    options: ['Realiza validación', 'Inicia el servidor', 'Valida JSON', 'Configura una ruta API'],
    correctAnswer: 3,
    topic: TOPICS.API,
    difficulty: 'advanced'
  }

];
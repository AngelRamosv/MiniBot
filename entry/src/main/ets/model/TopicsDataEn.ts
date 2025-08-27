// TopicsDataEN.ts
import { TOPICS } from './TopicsData';

export const allQuestionsEN = [
  // Introduction Topic
  {
    id: 'intro_1',
    questionText: `Is Python a language?`,
    options: ['Interpreted', 'Compiled', 'Low-level', 'Dynamic'],
    correctAnswer: 0,
    topic: TOPICS.INTRO,
    difficulty: 'basic'
  },
  {
    id: 'intro-2',
    questionText: `What feature distinguishes Python?`,
    options: ['Execution', 'Readable syntax', 'Use of braces {}', 'Native compilation'],
    correctAnswer: 1,
    topic: TOPICS.INTRO,
    difficulty: 'basic'
  },
  {
    id: 'intro-3',
    questionText: `What is Python commonly used for?`,
    options: ['Web development', 'Data analysis', 'Automation', 'All of the above'],
    correctAnswer: 3,
    topic: TOPICS.INTRO,
    difficulty: 'basic'
  },

  // Variables Topic
  {
    id: 'var-1',
    questionText: `How do you define a variable in Python?`,
    options: ['var x', 'let x', 'x = 5', 'def x'],
    correctAnswer: 2,
    topic: TOPICS.VARIABLES,
    difficulty: 'basic'
  },
  {
    id: 'var-2',
    questionText: `What type is x = 3.14?`,
    options: ['int', 'str', 'float', 'bool'],
    correctAnswer: 2,
    topic: TOPICS.VARIABLES,
    difficulty: 'basic'
  },
  {
    id: 'var-3',
    questionText: `Which is a valid variable name in Python?`,
    options: ['1variable', 'variable-name', 'class', 'variable_name'],
    correctAnswer: 3,
    topic: TOPICS.VARIABLES,
    difficulty: 'basic'
  },

  // Operators Topic
  {
    id: 'ope-1',
    questionText: `Which operator is used to get the remainder of a division?`,
    options: ['/', '%', '//', '&'],
    correctAnswer: 1,
    topic: TOPICS.OPERATORS,
    difficulty: 'basic'
  },
  {
    id: 'ope-2',
    questionText: `What will be the result of this operation in Python? 5 + 3 * 2?`,
    options: ['11', '16', '10', '7'],
    correctAnswer: 0,
    topic: TOPICS.OPERATORS,
    difficulty: 'basic'
  },
  {
    id: 'ope-3',
    questionText: `What value will the variable "x" have after executing this code in Python?
    x = 5
    x += 3`,
    options: ['7', '1', '5', '8'],
    correctAnswer: 3,
    topic: TOPICS.OPERATORS,
    difficulty: 'basic'
  },

  // Conditionals Topic
  {
    id: 'cond-1',
    questionText: `x = 5
    if x > 3:
       print("Greater than 3")
    else:
       print("Less or equal to 3")`,
    options: ['Less or equal to 3', 'Greater than 3', 'Will show nothing', 'Syntax error'],
    correctAnswer: 1,
    topic: TOPICS.CONDITIONAL,
    difficulty: 'basic'
  },
  {
    id: 'cond-2',
    questionText: `number = 0
    if number:
       print("True")
    else:
       print("False")`,
    options: ['True', '0', 'False', 'Will show nothing'],
    correctAnswer: 2,
    topic: TOPICS.CONDITIONAL,
    difficulty: 'basic'
  },
  {
    id: 'cond-3',
    questionText: `Which logical operator indicates that one value is not equal to another?`,
    options: ['!=', '<', '+=', '%'],
    correctAnswer: 0,
    topic: TOPICS.CONDITIONAL,
    difficulty: 'basic'
  },

  // Cycles Topic
  {
    id: 'cyc-1',
    questionText: `Which loop can execute a set of statements as long as a condition is true?`,
    options: ['for', 'elif', 'range', 'while'],
    correctAnswer: 3,
    topic: TOPICS.CYCLES,
    difficulty: 'basic'
  },
  {
    id: 'cyc-2',
    questionText: `Which loop is used to iterate over a sequence (list, tuple, dictionary, etc)?`,
    options: ['for ', 'elif', 'range', 'while'],
    correctAnswer: 0,
    topic: TOPICS.CYCLES,
    difficulty: 'basic'
  },
  {
    id: 'cy-3',
    questionText: `What does the break statement do?`,
    options: ['Starts execution', 'Validates the loop', 'Stops a loop', 'Does nothing'],
    correctAnswer: 2,
    topic: TOPICS.CYCLES,
    difficulty: 'basic'
  },

  // Functions Topic
  {
    id: 'func-1',
    questionText: `How do you define a function?`,
    options: ['def test():', 'test() =>', 'func test()', 'function test()'],
    correctAnswer: 0,
    topic: TOPICS.FUNCTIONS,
    difficulty: 'intermediate'
  },
  {
    id: 'func-2',
    questionText: `What does the following code print?

    def operate(a, b = 5):
        return a * b + 2
    result = operate(3, 2)
    print(result)`,
    options: ['17', '8', '15', 'Error'],
    correctAnswer: 1,
    topic: TOPICS.FUNCTIONS,
    difficulty: 'intermediate'
  },
  {
    id: 'func-3',
    questionText: `What does the following code do?

    def greet(name):
        return f"Hello, {name}!"
    message = greet("Ana")
    print(message)`,
    options: ['Hello, name!', 'Hello!', 'Error', 'Hello, Ana!'],
    correctAnswer: 3,
    topic: TOPICS.FUNCTIONS,
    difficulty: 'intermediate'
  },

  // Lists Topic
  {
    id: 'list-1',
    questionText: `What is the main difference between a list and a tuple in Python?`,
    options: ['L = immutable', 'L uses [ ], T ()', 'They are the same', 'No difference'],
    correctAnswer: 1,
    topic: TOPICS.LIST,
    difficulty: 'intermediate'
  },
  {
    id: 'list-2',
    questionText: `What does this code print?

    my_list = [1, 2, 3]
    my_tuple = (4, 5, 6)
    my_list[0] = 10
    print(my_tuple[0] + my_list[0])`,
    options: ['14', '5', 'Error', '11'],
    correctAnswer: 0,
    topic: TOPICS.LIST,
    difficulty: 'intermediate'
  },
  {
    id: 'list-3',
    questionText: `What does this code print?

    a = (1, [2, 3])
    a[1][0] = 99
    print(a[1][0])`,
    options: ['Error', '10', '1', '[7]'],
    correctAnswer: 2,
    topic: TOPICS.LIST,
    difficulty: 'intermediate'
  },

  // Dictionaries Topic
  {
    id: 'dic-1',
    questionText: `What does this code print?

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
    questionText: `Which dictionary method returns all keys and values as tuples?`,
    options: ['.keys()', '.values()', '.get()', '.items()'],
    correctAnswer: 3,
    topic: TOPICS.DICTIONARY,
    difficulty: 'intermediate'
  },
  {
    id: 'dic-3',
    questionText: `What does the following code print?

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

  // Error Handling Topic
  {
    id: 'man-1',
    questionText: `What type of error does this block catch?

    try:
      num = int("abc")
    except ValueError:
      print("Conversion error")`,
    options: ['TypeError', 'SyntaxError', 'ValueError', 'IndexError'],
    correctAnswer: 2,
    topic: TOPICS.ERROR_HANDLING,
    difficulty: 'intermediate'
  },
  {
    id: 'man-2',
    questionText: `What does this code print?

    try:
        list = [1, 2]
        print(list[2])
    except IndexError:
        print("Out of range")
    else:
        print("Everything ok")`,
    options: ['2', 'Everything ok', 'Error', 'Out of range'],
    correctAnswer: 3,
    topic: TOPICS.ERROR_HANDLING,
    difficulty: 'intermediate'
  },
  {
    id: 'man-3',
    questionText: `What is the main difference between 'except' and 'finally'?

    1. except catches errors, finally always executes
    2. except for syntax, finally for logic
    3. They are the same
    4. finally catches, except cleans`,
    options: ['1', '2', '3', '4'],
    correctAnswer: 0,
    topic: TOPICS.ERROR_HANDLING,
    difficulty: 'intermediate'
  },

  // Files Topic
  {
    id: 'file-1',
    questionText: `How do you read ALL the content of a file into a single string?`,
    options: ['read()', 'readline()', 'readlines()', 'readall()'],
    correctAnswer: 0,
    topic: TOPICS.FILES,
    difficulty: 'intermediate'
  },
  {
    id: 'file-2',
    questionText: `For processing large files, what is the most efficient way?`,
    options: ['Make a push', 'read() + split()', 'For loop line in file', 'readlines()'],
    correctAnswer: 2,
    topic: TOPICS.FILES,
    difficulty: 'intermediate'
  },
  {
    id: 'file-3',
    questionText: `If the file has "Hello\nWorld", what does read() return?`,
    options: ['["Hello", "World"]', '"Hello\\nWorld"', '"Hello World"', 'Error'],
    correctAnswer: 1,
    topic: TOPICS.FILES,
    difficulty: 'intermediate'
  },

  // POO Topic
  {
    id: 'poo-1',
    questionText: `Which pattern allows modifying class creation in Python?`,
    options: ['Decorators', 'Metaclasses', 'Conditionals', 'Multiple inheritance'],
    correctAnswer: 1,
    topic: TOPICS.POO,
    difficulty: 'advanced'
  },
  {
    id: 'poo-2',
    questionText: `Which OOP principle allows an object to be treated as an instance of its parent class?`,
    options: ['Inheritance', 'Encapsulation', 'Abstraction', 'Polymorphism'],
    correctAnswer: 3,
    topic: TOPICS.POO,
    difficulty: 'advanced'
  },
  {
    id: 'poo-3',
    questionText: `Which method is used in this code?

    class Dog:
       def __init__(self):
           self.name = "Fido"`,
    options: ['__init__', '__str__', '__add__', 'None'],
    correctAnswer: 0,
    topic: TOPICS.POO,
    difficulty: 'advanced'
  },

  // Lambda Topic
  {
    id: 'lam-1',
    questionText: `What does this code print?

    f = lambda x: [x+i for i in range(3)]
    print(f(5))`,
    options: ['8', 'Error', '[0, 1, 2]', '[5, 6, 7]'],
    correctAnswer: 3,
    topic: TOPICS.LAMBDA,
    difficulty: 'advanced'
  },
  {
    id: 'lam-2',
    questionText: `Which lambda function is equivalent to this function?

    def double(x):
        return x * 2`,
    options: ['lambda x: x * 2', 'lambda x: x + 2', 'lambda x: x ** 2', 'lambda: x * 2'],
    correctAnswer: 0,
    topic: TOPICS.LAMBDA,
    difficulty: 'advanced'
  },
  {
    id: 'lam-3',
    questionText: `What are lambda functions used for?`,
    options: ['Inheritance', 'Simple functions', 'Global variables', 'Complex classes'],
    correctAnswer: 1,
    topic: TOPICS.LAMBDA,
    difficulty: 'advanced'
  },

  // File Management Topic
  {
    id: 'mda-1',
    questionText: `When using "with open() as", what advantage does it have over manual open()/close()?`,
    options: ['OOP', 'Automatic closing', 'ZIP support', 'Read only'],
    correctAnswer: 1,
    topic: TOPICS.MANAGEMENT,
    difficulty: 'advanced'
  },
  {
    id: 'mda-2',
    questionText: `Why is this safe?

    with open('data.txt', 'r') as f:
         content = f.read()`,
    options: ['Auto-close', 'Better performance', 'UTF-8 support', 'Auto-complete'],
    correctAnswer: 0,
    topic: TOPICS.MANAGEMENT,
    difficulty: 'advanced'
  },
  {
    id: 'mda-3',
    questionText: `Which mode allows reading and writing without truncating the file?

    open('data.txt', '__')`,
    options: ['"w+"', '"p+"', '"a+"', '"r+"'],
    correctAnswer: 3,
    topic: TOPICS.MANAGEMENT,
    difficulty: 'advanced'
  },

  // Libraries Topic
  {
    id: 'lib-1',
    questionText: `What is the @property decorator for?
    1. Convert methods to attributes
    2. Execute asynchronous code
    3. Validate data types
    4.Serialize objects`,
    options: ['1', '2', '3', '4'],
    correctAnswer: 0,
    topic: TOPICS.LIBRARIES,
    difficulty: 'advanced'
  },
  {
    id: 'lib-2',
    questionText: `What does pathlib.Path('dir/file.txt').stem do?`,
    options: ['Returns \'file.txt\'', 'Creates the file', 'Returns \'file\'', 'Nothing'],
    correctAnswer: 2,
    topic: TOPICS.LIBRARIES,
    difficulty: 'advanced'
  },
  {
    id: 'lib-3',
    questionText: `What does json.loads('{"a": 1}')['a'] print?`,
    options: ['0', '1', '\'a\'', 'Error'],
    correctAnswer: 1,
    topic: TOPICS.LIBRARIES,
    difficulty: 'advanced'
  },

  // API Topic
  {
    id: 'ap-1',
    questionText: `Which design pattern is essential for RESTful APIs?`,
    options: ['Singleton', 'Strategy', 'Stateless', 'Stage'],
    correctAnswer: 2,
    topic: TOPICS.API,
    difficulty: 'advanced'
  },
  {
    id: 'ap-2',
    questionText: `What does this code verify?
    response = requests.get(url, headers={'Authorization': 'Bearer token'})
    response.raise_for_status()`,
    options: ['That JSON is valid', 'That status code is 2XX', 'That header exists', 'None'],
    correctAnswer: 1,
    topic: TOPICS.API,
    difficulty: 'advanced'
  },
  {
    id: 'ap-3',
    questionText: `What does @app.route() do in Flask?`,
    options: ['Performs validation', 'Starts the server', 'Validates JSON', 'Configures an API route'],
    correctAnswer: 3,
    topic: TOPICS.API,
    difficulty: 'advanced'
  }
];
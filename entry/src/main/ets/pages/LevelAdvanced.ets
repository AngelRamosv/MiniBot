// Importaciones
import router from '@ohos.router';
import { BusinessError } from '@ohos.base';

// Interfaz para los temas
interface Topic {
  OOP: string;
  LAMBDA: string;
  MANAGEMENT: string;
  LIBRARIES: string;
  API: string;
}

// Objeto de la interfaz Topic
const TOPICS: Topic = {
  OOP: 'poo',
  LAMBDA: 'lambda',
  MANAGEMENT: 'manejo_archivos',
  LIBRARIES: 'librerias',
  API: 'api'
};

// Componente principal
@Entry
@Component
struct LevelAdvanced {
  @State selectedLanguage: string = 'es'; // Idioma seleccionado

  aboutToAppear() {
    // Carga idioma guardado
    const savedLanguage = AppStorage.get('appLanguage') as string;
    if (savedLanguage) {
      this.selectedLanguage = savedLanguage;
    }
  }

  // Función para obtener strings
  getString(key: string): string {
    // Strings en español
    if (this.selectedLanguage === 'es') {
      switch (key) {
        case 'Language': return 'Selecciona\nidioma';
        case 'Spanish': return 'Español';
        case 'English': return 'Inglés';
        case 'Go': return 'Ir';
        case 'Welcome': return 'Bienvenido a\nMiniBot';
        case 'Ok': return 'Bien';
        case 'Levelp': return 'Nivel';
        case 'Basicp': return 'Básico';
        case 'Intermediatep': return 'Intermedio';
        case 'Advancedp': return 'Avanzado';
        case 'Basicb': return 'Básico';
        case 'Introductionb': return 'Introducción';
        case 'Variablesb': return 'Variables';
        case 'Operatorsb': return 'Operadores';
        case 'Conditionalsb': return 'Condicionales';
        case 'Cyclesb': return 'Ciclos';
        case 'Intermediatei': return 'Intermedio';
        case 'Functionsi': return 'Funciones';
        case 'Listsandtuplesi': return 'Listas y tuplas';
        case 'Dictionariesi': return 'Diccionarios';
        case 'Errorhandlingi': return 'Manejo de errores';
        case 'Filesi': return 'Archivos';
        case 'Advanceda': return 'Avanzado';
        case 'POOa': return 'POO';
        case 'Functionslambda': return 'Funciones Lambda';
        case 'Filemanagementa': return 'Manejo de archivos';
        case 'Useoflibrariesa': return 'Uso de librerías';
        case 'APIa': return 'API de python';
        default: return key;
      }
    }
    // Strings en inglés
    else {
      switch (key) {
        case 'Language': return 'Language';
        case 'Spanish': return 'Spanish';
        case 'English': return 'English';
        case 'Go': return 'Go';
        case 'Welcome': return 'Welcome to\nMiniBot';
        case 'Ok': return 'Ok';
        case 'Levelp': return 'Level';
        case 'Basicp': return 'Basic';
        case 'Intermediatep': return 'Intermediate';
        case 'Advancedp': return 'Advanced';
        case 'Basicb': return 'Basic';
        case 'Introductionb': return 'Introduction';
        case 'Variablesb': return 'Variables';
        case 'Operatorsb': return 'Operators';
        case 'Conditionalsb': return 'Conditionals';
        case 'Cyclesb': return 'Cycles';
        case 'Intermediatei': return 'Intermediate';
        case 'Functionsi': return 'Functions';
        case 'Listsandtuplesi': return 'Lists and tuples';
        case 'Dictionariesi': return 'Dictionaries';
        case 'Errorhandlingi': return 'Error handling';
        case 'Filesi': return 'Files';
        case 'Advanceda': return 'Advanced';
        case 'POOa': return 'POO';
        case 'Functionslambda': return 'Functions Lambda';
        case 'Filemanagementa': return 'File management';
        case 'Useoflibrariesa': return 'Use of libraries';
        case 'APIa': return 'API';
        default: return key;
      }
    }
  }

  // Método de navegación a QuizPage
  private navigateToQuiz(topic: string, title: string): void {
    // Obtener el idioma guardado en AppStorage
    const currentLanguage = AppStorage.get('appLanguage') as string || 'es';

    router.pushUrl({
      url: 'pages/QuizPage',
      params: {
        topic: topic,
        title: title,
        difficulty: 'advanced',
        language: currentLanguage
      }
    }).catch((err: BusinessError) => {
      console.error(`Navigation failed: ${err.message}`);
    });
  }

  // Diseño de pantalla
  build() {
    Stack({ alignContent: Alignment.Center }) {
      // Imagen
      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      Scroll() {
        // Contenido principal
        Column() {
          // Título
          Text(this.getString('Advanceda'))
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 15 })
            .width('100%')
            .textAlign(TextAlign.Center)

          Column() {
            // Botón POO
            Button(this.getString('POOa'), { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.OOP, this.getString('POOa')))

            // Botón Funciones Lambda
            Button(this.getString('Functionslambda'), { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.LAMBDA, this.getString('Functionslambda')))

            // Botón Manejo de archivos
            Button(this.getString('Filemanagementa'), { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.MANAGEMENT, this.getString('Filemanagementa')))

            // Botón Uso de Librerías
            Button(this.getString('Useoflibrariesa'), { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.LIBRARIES, this.getString('Useoflibrariesa')))

            // Botón API
            Button(this.getString('APIa'), { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 45 })
              .onClick(() => this.navigateToQuiz(TOPICS.API, this.getString('APIa')))
          }
          // Contenedor de botones
          .width('100%')
          .borderRadius({ topLeft: 30, topRight: 30 })
          .clip(true)
          .backgroundColor('#00000055')
        }
        // Column()
        .width('100%')
        .alignItems(HorizontalAlign.Center)
      }
      // Scroll
      .width('100%')
      .height('100%')
      .scrollBar(BarState.Off)
    }
  }
}
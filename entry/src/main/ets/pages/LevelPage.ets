// Importaciones
import router from '@ohos.router';
import { BusinessError } from '@ohos.base';

// Componente principal
@Entry
@Component
struct LevelPage {
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

  // Método de navegación para nivel básico
  private navigateToBasic(): void {
    router.pushUrl({
      url: 'pages/LevelBasic'
    }).catch((err: BusinessError) => {
      console.error(`Navigation to Basic failed. Code: ${err.code}, Message: ${err.message}`);
    });
  }

  // Método de navegación para nivel intermedio
  private navigateToIntermediate(): void {
    router.pushUrl({
      url: 'pages/LevelIntermediate'
    }).catch((err: BusinessError) => {
      console.error(`Navigation to Intermediate failed. Code: ${err.code}, Message: ${err.message}`);
    });
  }

  // Método de navegación para nivel avanzado
  private navigateToAdvanced(): void {
    router.pushUrl({
      url: 'pages/LevelAdvanced'
    }).catch((err: BusinessError) => {
      console.error(`Navigation to Advanced failed. Code: ${err.code}, Message: ${err.message}`);
    });
  }

  // Diseño de la pantalla
  build() {
    Stack({ alignContent: Alignment.Center }) {
      // Imagen de fondo
      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      // Contenido principal
      Column() {

        Text(this.getString('Levelp'))
          .fontSize(22)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 15, bottom: 10 })
          .width('100%')
          .textAlign(TextAlign.Center)

        Button(this.getString('Basicp'), { type: ButtonType.Capsule })
          .width('70%')
          .height(40)
          .backgroundColor('#00000000')
          .border({ width: 2, color: Color.White })
          .fontColor(Color.White)
          .margin({ bottom: 15 })
          .onClick(() => this.navigateToBasic())

        Button(this.getString('Intermediatep'), { type: ButtonType.Capsule })
          .width('70%')
          .height(40)
          .backgroundColor('#00000000')
          .border({ width: 2, color: Color.White })
          .fontColor(Color.White)
          .margin({ bottom: 15 })
          .onClick(() => this.navigateToIntermediate())

        Button(this.getString('Advancedp'), { type: ButtonType.Capsule })
          .width('70%')
          .height(40)
          .backgroundColor('#00000000')
          .border({ width: 2, color: Color.White })
          .fontColor(Color.White)
          .margin({ bottom: 15 })
          .onClick(() => this.navigateToAdvanced())
      }
      // Column()
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Start)
      .alignItems(HorizontalAlign.Center)
    }
  }
}
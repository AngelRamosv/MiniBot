// Importaciones
import router from '@ohos.router';
import { BusinessError } from '@ohos.base';

// Componente principal
@Entry
@Component
struct Index {
  // Valores reactivos
  @State opacityValue: number = 0; // Opacidad
  @State scaleValue: number = 0.5; // Tamaño
  @State selectedLanguage: string = 'es'; // Idioma seleccionado

  // Método interactivo
  onPageShow() {
    this.opacityValue = 1;
    this.scaleValue = 1;
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

  // Función de navegación
  private navigateToLevelPage(): void {
    router.pushUrl({
      url: 'pages/LevelPage'
    }).catch((err: BusinessError) => {
      console.error(`Navigation failed. Code: ${err.code}, Message: ${err.message}`);
    });
  }

  // Método build (Diseño de la pantalla)
  build() {
    Stack({ alignContent: Alignment.Center }) {
      // Imagen de fondo
      Image($r('app.media.fondo'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      // Contenido principal
      Column() {

        Text(this.getString('Welcome'))
          .fontSize(20)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 25, bottom: 5 })
          .opacity(this.opacityValue)
          .scale({ x: this.scaleValue, y: this.scaleValue })
          .animation({
            duration: 1000,
            curve: Curve.EaseOut
          })

        // Imagen principal de MiniBot
        Image($r('app.media.roboco'))
          .width(100)
          .height(100)
          .margin({ top: 0, bottom: 5 })
          .opacity(this.opacityValue)
          .scale({ x: this.scaleValue, y: this.scaleValue })
          .animation({
            duration: 1000,
            curve: Curve.EaseOut,
            delay: 200
          })

        Button(this.getString('Ok'), { type: ButtonType.Capsule })
          .width(110)
          .height(30)
          .backgroundColor('#77DD77')
          .fontColor(Color.Black)
          .margin({ top: 0, bottom: 30 })
          .opacity(this.opacityValue)
          .animation({
            duration: 3000,
            curve: Curve.EaseOut,
            delay: 400
          })
          .onClick(() => {
            this.navigateToLevelPage();
          })
      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
    }
    .onAppear(() => {
      this.onPageShow();
    })
  }
}
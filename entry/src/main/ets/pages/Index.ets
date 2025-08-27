// Versión completa
import router from '@ohos.router';
import { BusinessError } from '@ohos.base';

//Componente principal
@Entry
@Component
struct LanguageSelector {
  @State selectedLanguage: string = 'es';

  aboutToAppear() {
    // Cargar idioma
    const savedLanguage = AppStorage.get('appLanguage') as string;
    if (savedLanguage) {
      this.selectedLanguage = savedLanguage;
    }
  }
  // Función simple para obtener strings
  getString(key: string): string {
    // Strings en español
    if (this.selectedLanguage === 'es') {
      switch (key) {
        case 'Language': return 'Idioma';
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
    // Strings en inglés (base)
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

  private navigateToMain() {
    // Guardar el idioma seleccionado
    AppStorage.setOrCreate('appLanguage', this.selectedLanguage);

    // Navega a la página principal
    router.pushUrl({
      url: 'pages/Main',
      params: { language: this.selectedLanguage }
    }).catch((err: BusinessError) => {
      console.error('Navigation failed:', err);
    });
  }

  build() {
    Stack({ alignContent: Alignment.Center }) {
      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      Scroll() {
        Column() {
          Text(this.getString('Language'))
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 30 })
            .width('100%')
            .textAlign(TextAlign.Center)

          Column() {
            // Opción Español
            Row() {
              Text(this.getString('Spanish'))
                .fontSize(18)
                .fontColor(Color.White)
                .margin({ right: 15 })

              Image($r('app.media.spanish'))
                .width(30)
                .height(30)
            }
            .width('80%')
            .height(60)
            .backgroundColor(this.selectedLanguage === 'es' ? '#00000033' : '#00000000')
            .border({
              width: this.selectedLanguage === 'es' ? 2 : 1,
              color: this.selectedLanguage === 'es' ? Color.White : Color.Gray
            })
            .borderRadius(12)
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({ left: 20, right: 20 })
            .margin({ bottom: 15 })
            .onClick(() => {
              this.selectedLanguage = 'es';
            })

            // Opción Inglés
            Row() {
              Text(this.getString('English'))
                .fontSize(18)
                .fontColor(Color.White)
                .margin({ right: 15 })

              Image($r('app.media.english'))
                .width(30)
                .height(30)
            }
            .width('80%')
            .height(60)
            .backgroundColor(this.selectedLanguage === 'en' ? '#00000033' : '#00000000')
            .border({
              width: this.selectedLanguage === 'en' ? 2 : 1,
              color: this.selectedLanguage === 'en' ? Color.White : Color.Gray
            })
            .borderRadius(12)
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({ left: 20, right: 20 })
            .margin({ bottom: 30 })
            .onClick(() => {
              this.selectedLanguage = 'en';
            })

            Button(this.getString('Go'), { type: ButtonType.Capsule })
              .width('70%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 45 })
              .onClick(() => this.navigateToMain())
          }
          .width('100%')
          .borderRadius({ topLeft: 30, topRight: 30 })
          .clip(true)
          .backgroundColor('#00000055')
        }
        .width('100%')
        .alignItems(HorizontalAlign.Center)
      }
      .width('100%')
      .height('100%')
      .scrollBar(BarState.Off)
    }
  }
}
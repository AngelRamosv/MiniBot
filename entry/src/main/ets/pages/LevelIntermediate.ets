import router from '@ohos.router';
import { BusinessError } from '@ohos.base';

interface Topic {
  FUNCTIONS: string;
  LISTS_TUPLES: string;
  DICTIONARIES: string;
  ERROR_HANDLING: string;
  FILES: string;
}

const TOPICS: Topic = {
  FUNCTIONS: 'funciones',
  LISTS_TUPLES: 'listas',
  DICTIONARIES: 'diccionarios',
  ERROR_HANDLING: 'manejo_errores',
  FILES: 'archivos'
};

@Entry
@Component
struct LevelIntermediate {
  // Método unificado para navegar al Quiz
  private navigateToQuiz(topic: string, title: string): void {
    router.pushUrl({
      url: 'pages/QuizPage',
      params: {
        topic: topic,
        title: title,
        difficulty: 'intermediate' // Asegura que se pase la dificultad
      }
    }).catch((err: BusinessError) => {
      console.error(`Navigation failed: ${err.message}`);
    });
  }

  build() {
    Stack({ alignContent: Alignment.Center }) {
      // Imagen de fondo (misma estructura que LevelBasic)
      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      Scroll() {
        Column() {
          // Título (mismo estilo)
          Text('Intermedio')
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 15 })
            .width('100%')
            .textAlign(TextAlign.Center)

          Column() {
            // Botones con la misma estructura que LevelBasic
            Button('Funciones', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.FUNCTIONS, 'Funciones'))

            Button('Listas y Tuplas', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.LISTS_TUPLES, 'Listas y Tuplas'))

            Button('Diccionarios', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.DICTIONARIES, 'Diccionarios'))

            Button('Manejo de Errores', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.ERROR_HANDLING, 'Manejo de\nErrores'))

            Button('Archivos', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 45 })
              .onClick(() => this.navigateToQuiz(TOPICS.FILES, 'Archivos'))
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
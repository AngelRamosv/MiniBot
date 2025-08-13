import router from '@ohos.router';
import { BusinessError } from '@ohos.base';

// Definimos el tipo Topic para los temas avanzados
interface AdvancedTopic {
  OOP: string;
  LAMBDA: string;
  MANAGEMENT: string;
  LIBRARIES: string;
  API: string;
}

// Constantes para los temas avanzados
const ADVANCED_TOPICS: AdvancedTopic = {
  OOP: 'poo',
  LAMBDA: 'lambda',
  MANAGEMENT: 'manejo_archivos',
  LIBRARIES: 'librerias',
  API: 'api'
};

@Entry
@Component
struct LevelAdvanced {
  // Método de navegación (igual que en LevelBasic)
  private navigateToQuiz(topic: string, title: string): void {
    router.pushUrl({
      url: 'pages/QuizPage',
      params: {
        topic: topic,
        title: title,
        difficulty: 'advanced'
      }
    }).catch((err: BusinessError) => {
      console.error(`Navigation failed: ${err.message}`);
    });
  }

  build() {
    Stack({ alignContent: Alignment.Center }) {
      // Imagen de fondo (igual que en LevelBasic)
      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      Scroll() {
        Column() {
          // Título (igual que en LevelBasic)
          Text('Avanzado')
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 15 })
            .width('100%')
            .textAlign(TextAlign.Center)

          Column() {
            // Botones con la misma estructura que LevelBasic
            Button('POO', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(ADVANCED_TOPICS.OOP, 'Programación Orientada a\nObjetos'))

            Button('Funciones Lambda', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(ADVANCED_TOPICS.LAMBDA, 'Funciones\nLambda'))

            Button('Manejo de archivos', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(ADVANCED_TOPICS.MANAGEMENT, 'Manejo de\nArchivos'))

            Button('Uso de librerías', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(ADVANCED_TOPICS.LIBRARIES, 'Uso de\nLibrerías'))

            Button('API Python', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 45 })
              .onClick(() => this.navigateToQuiz(ADVANCED_TOPICS.API, 'API Python'))
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
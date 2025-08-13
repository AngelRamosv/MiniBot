import router from '@ohos.router';
import { BusinessError } from '@ohos.base';

// Versión corregida sin 'as const' y con tipado explícito
interface Topic {
  INTRO: string;
  VARIABLES: string;
  OPERATORS: string;
  CONDITIONALS: string;
  LOOPS: string;
}

const TOPICS: Topic = {
  INTRO: 'introduccion',
  VARIABLES: 'variables',
  OPERATORS: 'operadores',
  CONDITIONALS: 'condicionales',
  LOOPS: 'ciclos'
};

@Entry
@Component
struct LevelBasic {
  // Método original sin cambios
  private navigateToQuiz(topic: string, title: string): void {
    router.pushUrl({
      url: 'pages/QuizPage',
      params: {
        topic: topic,
        title: title,
        difficulty: 'basic'
      }
    }).catch((err: BusinessError) => {
      console.error(`Navigation failed: ${err.message}`);
    });
  }

  build() {
    Stack({ alignContent: Alignment.Center }) {
      // Imagen de fondo (original)
      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      Scroll() {
        Column() {
          // Título (original)
          Text('Básico')
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 15 })
            .width('100%')
            .textAlign(TextAlign.Center)

          Column() {
            // Botones con constantes corregidas
            Button('Introducción', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.INTRO, 'Introducción'))

            Button('Variables', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.VARIABLES, 'Variables'))

            Button('Operadores', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.OPERATORS, 'Operadores'))

            Button('Condicionales', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.CONDITIONALS, 'Condicionales'))

            Button('Ciclos', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 45 })
              .onClick(() => this.navigateToQuiz(TOPICS.LOOPS, 'Ciclos'))
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
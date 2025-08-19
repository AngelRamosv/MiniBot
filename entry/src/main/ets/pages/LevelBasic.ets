// Importaciones
import router from '@ohos.router';
import { BusinessError } from '@ohos.base';

// Interfaz para los temas
interface Topic {
  INTRO: string;
  VARIABLES: string;
  OPERATORS: string;
  CONDITIONALS: string;
  LOOPS: string;
}
// Objeto de la interfaz Topic
const TOPICS: Topic = {
  INTRO: 'introduccion',
  VARIABLES: 'variables',
  OPERATORS: 'operadores',
  CONDITIONALS: 'condicionales',
  LOOPS: 'ciclos'
};
// Componente principal
@Entry
@Component
// Estructura de la página
struct LevelBasic {
  // Método de navegación a QuizPage
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
  // Diseño de pantalla
  build() {
    Stack({ alignContent: Alignment.Center }) {
      // Imagen de fondo
      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      Scroll() {
        // Contenido principal
        Column() {
          // Título
          Text('Básico')
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 15 })
            .width('100%')
            .textAlign(TextAlign.Center)

          Column() {
            // Botón Introducción
            Button('Introducción', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.INTRO, 'Introducción'))

            // Botón Variables
            Button('Variables', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.VARIABLES, 'Variables'))

            // Botón Operadores
            Button('Operadores', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.OPERATORS, 'Operadores'))

            // Botón Condicionales
            Button('Condicionales', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.CONDITIONALS, 'Condicionales'))

            // Botón Ciclos
            Button('Ciclos', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 45 })
              .onClick(() => this.navigateToQuiz(TOPICS.LOOPS, 'Ciclos'))
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
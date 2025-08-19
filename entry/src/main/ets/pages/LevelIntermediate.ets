// Importaciones
import router from '@ohos.router';
import { BusinessError } from '@ohos.base';

// Interfaz para los temas
interface Topic {
  FUNCTIONS: string;
  LISTS_TUPLES: string;
  DICTIONARIES: string;
  ERROR_HANDLING: string;
  FILES: string;
}
// Objeto de la interfaz Topic
const TOPICS: Topic = {
  FUNCTIONS: 'funciones',
  LISTS_TUPLES: 'listas',
  DICTIONARIES: 'diccionarios',
  ERROR_HANDLING: 'manejo_errores',
  FILES: 'archivos'
};
// Componente principal
@Entry
@Component
// Estructura de la página
struct LevelIntermediate {
  // Método de navegación a QuizPage
  private navigateToQuiz(topic: string, title: string): void {
    router.pushUrl({
      url: 'pages/QuizPage',
      params: {
        topic: topic,
        title: title,
        difficulty: 'intermediate'
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
          Text('Intermedio')
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 15 })
            .width('100%')
            .textAlign(TextAlign.Center)

          Column() {
            // Botón Funciones
            Button('Funciones', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.FUNCTIONS, 'Funciones'))

            // Botón Listas y Tuplas
            Button('Listas y Tuplas', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.LISTS_TUPLES, 'Listas y Tuplas'))

            // Botón Diccionarios
            Button('Diccionarios', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.DICTIONARIES, 'Diccionarios'))

            // Botón Manejo de Errores
            Button('Manejo de Errores', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => this.navigateToQuiz(TOPICS.ERROR_HANDLING, 'Manejo de\nErrores'))

            // Botón Archivos
            Button('Archivos', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 45 })
              .onClick(() => this.navigateToQuiz(TOPICS.FILES, 'Archivos'))
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
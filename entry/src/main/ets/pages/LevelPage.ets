// Importaciones
import router from '@ohos.router';
import { BusinessError } from '@ohos.base';

// Componente principal
@Entry
@Component
  // Estructura de la página
struct LevelPage {
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
        // Título
        Text($r('app.string.Levelp'))
          .fontSize(22)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 15, bottom: 10 })
          .width('100%')
          .textAlign(TextAlign.Center)

        // Botón Básico
        Button($r('app.string.Basicp'), { type: ButtonType.Capsule })
          .width('70%')
          .height(40)
          .backgroundColor('#00000000')
          .border({ width: 2, color: Color.White })
          .fontColor(Color.White)
          .margin({ bottom: 15 })
          .onClick(() => this.navigateToBasic())

        // Botón Intermedio
        Button($r('app.string.Intermediatep'), { type: ButtonType.Capsule })
          .width('70%')
          .height(40)
          .backgroundColor('#00000000')
          .border({ width: 2, color: Color.White })
          .fontColor(Color.White)
          .margin({ bottom: 15 })
          .onClick(() => this.navigateToIntermediate())

        // Botón Avanzado
        Button($r('app.string.Advancedp'), { type: ButtonType.Capsule })
          .width('70%')
          .height(40)
          .backgroundColor('#00000000')
          .border({ width: 2, color: Color.White })
          .fontColor(Color.White)
          .margin({ bottom: 15 })
          .onClick(() => this.navigateToAdvanced())
      }
      // Propiedades que corresponden a Column()
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Start)
      .alignItems(HorizontalAlign.Center)
    }
  }
}
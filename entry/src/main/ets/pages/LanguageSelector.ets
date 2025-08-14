import router from '@ohos.router';
import { LanguageController } from '../controller/LanguageController';
import { BusinessError } from '@ohos.base';

@Entry
@Component
struct LanguageSelector {
  @State private selectedLanguage: string = '';

  private navigateToLevelPage(): void {
    if (this.selectedLanguage) {
      router.pushUrl({
        url: 'pages/LevelPage'
      }).catch((err: BusinessError) => {
        console.error(`Navigation failed. Code: ${err.code}, Message: ${err.message}`);
      });
    }
  }

  build() {
    Stack({ alignContent: Alignment.Top }) {
      // Imagen de fondo
      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      // Contenido principal con Scroll
      Scroll() {
        Column() {
          // Título compacto
          Text('Seleccione\nIdioma')
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 20, bottom: 30 })
            .width('100%')
            .textAlign(TextAlign.Center)

          // Opción Español
          Row() {
            Button('Español', { type: ButtonType.Normal })
              .width('65%')
              .height(48)
              .backgroundColor(this.selectedLanguage === 'es' ? '#77DD77' : '#33333399')
              .fontColor(Color.White)
              .fontSize(18)

            Image($r('app.media.spanish'))
              .width(40)
              .height(40)
              .margin({ left: 10 })
          }
          .width('80%')
          .borderRadius(10)
          .padding(8)
          .margin({ bottom: 15 })
          .onClick(() => {
            this.selectedLanguage = 'es';
            LanguageController.setLanguage('es');
          })

          // Opción English
          Row() {
            Button('English', { type: ButtonType.Normal })
              .width('65%')
              .height(48)
              .backgroundColor(this.selectedLanguage === 'en' ? '#77DD77' : '#33333399')
              .fontColor(Color.White)
              .fontSize(18)

            Image($r('app.media.english'))
              .width(40)
              .height(40)
              .margin({ left: 10 })
          }
          .width('80%')
          .borderRadius(10)
          .padding(8)
          .margin({ bottom: 30 })
          .onClick(() => {
            this.selectedLanguage = 'en';
            LanguageController.setLanguage('en');
          })

          // Botón de confirmación compacto
          Button('Continuar', { type: ButtonType.Capsule })
            .width(130)
            .height(42)
            .backgroundColor('#77DD77')
            .fontColor(Color.Black)
            .fontSize(18)
            .margin({ top: 10, bottom: 30 }) // Margen inferior agregado
            .enabled(this.selectedLanguage !== '')
            .onClick(() => {
              this.navigateToLevelPage();
            })
        }
        .width('100%')
        .alignItems(HorizontalAlign.Center)
      }
      .scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .margin({ top: '8%' }) // Ajuste fino de posición
    }
    .width('100%')
    .height('100%')
  }
}
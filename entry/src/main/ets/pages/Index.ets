import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State opacityValue: number = 0;
  @State scaleValue: number = 0.5;

  onPageShow() {
    this.opacityValue = 1;
    this.scaleValue = 1;
  }

  build() {
    Stack({ alignContent: Alignment.Center }) {

      // Imagen de fondo que ocupa toda la pantalla
      Image($r('app.media.fondo'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover) // Ajusta sin deformar
        .opacity(1) // 1 = visible

      // Contenido principal
      Column() {
        Text('Bienvenido a \nMiniBoti')
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

        Button('Ok', { type: ButtonType.Capsule })
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
            router.pushUrl({ url: 'pages/LevelPage' });
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

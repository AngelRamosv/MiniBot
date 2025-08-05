import router from '@ohos.router';

@Entry
@Component
struct LevelPage {
  build() {
    Stack({ alignContent: Alignment.Center }) {

      // Imagen de fondo
      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover) // Ajusta sin deformar
        .opacity(1)

      // Contenido principal
      Column() {
        // Título centrado
        Text('Nivel')
          .fontSize(22)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 15, bottom: 10 })
          .width('100%')
          .textAlign(TextAlign.Center)

        // Botón Básico
        Button('Básico', { type: ButtonType.Capsule })
          .width('70%')
          .height(40)
          .backgroundColor('#00000000') // Transparente
          .border({ width: 2, color: Color.White })
          .fontColor(Color.White)
          .margin({ bottom: 15 })
          .onClick(() => router.pushUrl({ url: 'pages/LevelBasic' }))

        // Botón Intermedio
        Button('Intermedio', { type: ButtonType.Capsule })
          .width('70%')
          .height(40)
          .backgroundColor('#00000000')
          .border({ width: 2, color: Color.White })
          .fontColor(Color.White)
          .margin({ bottom: 15 })
          .onClick(() => router.pushUrl({ url: 'pages/LevelIntermediate' }))

        // Botón Avanzado
        Button('Avanzado', { type: ButtonType.Capsule })
          .width('70%')
          .height(40)
          .backgroundColor('#00000000')
          .border({ width: 2, color: Color.White })
          .fontColor(Color.White)
          .margin({ bottom: 15 })
          .onClick(() => router.pushUrl({ url: 'pages/LevelAdvanced' }))
      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Start)
      .alignItems(HorizontalAlign.Center)
    }
  }
}

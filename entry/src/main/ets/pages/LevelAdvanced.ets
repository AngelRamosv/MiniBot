import router from '@ohos.router';

@Entry
@Component
struct LevelAdvanced {
  build() {
    Stack({ alignContent: Alignment.Center }) {

      // Imagen de fondo
      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover) // Ajusta sin deformar
        .opacity(1)

      // Contenido principal
      Scroll() {
        Column() {
          // Título
          Text('Avanzado')
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 15 })
            .width('100%')
            .textAlign(TextAlign.Center)

          // Contenedor curvo para los botones
          Column() {
            // Botón Poo
            Button('Poo', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => router.pushUrl({ url: 'pages/IntroductionPage' }))

            // Botón Función Lambda
            Button('Función Lambda', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => router.pushUrl({ url: 'pages/VariablesPage' }))

            // Botón Manejo de archivos
            Button('Manejo de archivos', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => router.pushUrl({ url: 'pages/OperatorsPage' }))

            // Botón Uso de librerías
            Button('Uso de librerías', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => router.pushUrl({ url: 'pages/ConditionalsPage' }))

            // Botón API Python
            Button('Api Python', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 45 })
              .onClick(() => router.pushUrl({ url: 'pages/LoopsPage' }))
          }
          .width('100%')
          .borderRadius({ topLeft: 30, topRight: 30 }) // Curvatura superior
          .clip(true)
          .backgroundColor('#00000055') // Semitransparente para ver imagen
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

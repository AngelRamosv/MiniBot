import router from '@ohos.router';

@Entry
@Component
struct LevelIntermediate {
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
          Text('Intermedio')
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 15 })
            .width('100%')
            .textAlign(TextAlign.Center)

          // Contenedor curvo para los botones
          Column() {
            // Botón Funciones
            Button('Funciones', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => router.pushUrl({ url: 'pages/IntroductionPage' }))

            // Botón Listas y tuplas
            Button('Listas y tuplas', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => router.pushUrl({ url: 'pages/VariablesPage' }))

            // Botón Diccionarios
            Button('Diccionarios', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => router.pushUrl({ url: 'pages/OperatorsPage' }))

            // Botón Manejo de errores
            Button('Manejo de errores', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => router.pushUrl({ url: 'pages/ConditionalsPage' }))

            // Botón Archivos
            Button('Archivos', { type: ButtonType.Capsule })
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

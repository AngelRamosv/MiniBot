import router from '@ohos.router';

@Entry
@Component
struct LevelBasic {
  build() {
    Stack({ alignContent: Alignment.Center }) {

      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      Scroll() {
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
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/QuizPage',
                  params: {
                    topic: 'introduccion',
                    title: 'Introducción a Python',
                    difficulty: 'basic'
                  }
                });
              })

            // Botón Variables
            Button('Variables', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/QuizPage',
                  params: {
                    topic: 'variables',
                    title: 'Variables en Python',
                    difficulty: 'basic'
                  }
                });
              })

            // Botón Operadores
            Button('Operadores', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/QuizPage',
                  params: {
                    topic: 'operadores',
                    title: 'Operadores en Python',
                    difficulty: 'basic'
                  }
                });
              })

            // Botón Condicionales
            Button('Condicionales', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 12 })
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/QuizPage',
                  params: {
                    topic: 'condicionales',
                    title: 'Condicionales en Python',
                    difficulty: 'basic'
                  }
                });
              })

            // Botón Ciclos
            Button('Ciclos', { type: ButtonType.Capsule })
              .width('80%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 45 })
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/QuizPage',
                  params: {
                    topic: 'ciclos',
                    title: 'Ciclos en Python',
                    difficulty: 'basic'
                  }
                });
              })
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
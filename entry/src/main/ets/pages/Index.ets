// Versión Multilenguage en ramad
// Importaciones
import router from '@ohos.router';
import { BusinessError } from '@ohos.base';

// Componente principal
@Entry
@Component
struct LanguageSelector {
  @State selectedLanguage: string = 'es';

  // Evento para idioma
  aboutToAppear() {
    // Cargar idioma si ya se guardó antes
    this.selectedLanguage = AppStorage.get('appLanguage') as string || 'es';
  }

  private navigateToMain() {
    // Guardar el idioma seleccionado
    AppStorage.setOrCreate('appLanguage', this.selectedLanguage);

    // Navegar a la página principal
    router.pushUrl({
      url: 'pages/Main',
      params: { language: this.selectedLanguage }
    }).catch((err: BusinessError) => {
      console.error('Navigation failed:', err);
    });
  }

  build() {
    Stack({ alignContent: Alignment.Center }) {
      Image($r('app.media.vale'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      Scroll() {
        Column() {
          Text($r('app.string.Language'))
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 30 })
            .width('100%')
            .textAlign(TextAlign.Center)

          Column() {
            // Opción Español
            Row() {
              Text($r('app.string.Spanish'))
                .fontSize(18)
                .fontColor(Color.White)
                .margin({ right: 15 })

              Image($r('app.media.spanish'))
                .width(30)
                .height(30)
            }
            .width('80%')
            .height(60)
            .backgroundColor(this.selectedLanguage === 'es' ? '#00000033' : '#00000000')
            .border({
              width: this.selectedLanguage === 'es' ? 2 : 1,
              color: this.selectedLanguage === 'es' ? Color.White : Color.Gray
            })
            .borderRadius(12)
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({ left: 20, right: 20 })
            .margin({ bottom: 15 })
            .onClick(() => {
              this.selectedLanguage = 'es';
            })

            // Opción English
            Row() {
              Text($r('app.string.English'))
                .fontSize(18)
                .fontColor(Color.White)
                .margin({ right: 15 })

              Image($r('app.media.english'))
                .width(30)
                .height(30)
            }
            .width('80%')
            .height(60)
            .backgroundColor(this.selectedLanguage === 'en' ? '#00000033' : '#00000000')
            .border({
              width: this.selectedLanguage === 'en' ? 2 : 1,
              color: this.selectedLanguage === 'en' ? Color.White : Color.Gray
            })
            .borderRadius(12)
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({ left: 20, right: 20 })
            .margin({ bottom: 30 })
            .onClick(() => {
              this.selectedLanguage = 'en';
            })

            Button($r('app.string.Go'), { type: ButtonType.Capsule })
              .width('70%')
              .height(45)
              .backgroundColor('#00000000')
              .border({ width: 2, color: Color.White })
              .fontColor(Color.White)
              .margin({ bottom: 45 })
              .onClick(() => this.navigateToMain())
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
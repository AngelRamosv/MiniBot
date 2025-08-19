// Importaciones
import router from '@ohos.router'; // Navegación
import { BusinessError } from '@ohos.base'; // Manejo de errores

// Estructura del componente principal
@Entry // Componente como punto de entrada
@Component // Componente visual
struct Index { // Estructura de la página
  // Estados del componente
  @State opacityValue: number = 0; // Opacidad
  @State scaleValue: number = 0.5; // Tamaño (Escala)
  // Método para mostrar los elementos
  onPageShow() {
    this.opacityValue = 1;
    this.scaleValue = 1;
  }
  // Función de navegación
  private navigateToLevelPage(): void {
    router.pushUrl({
      url: 'pages/LevelPage'
    }).catch((err: BusinessError) => {
      console.error(`Navigation failed. Code: ${err.code}, Message: ${err.message}`);
    });
  }
  // Método build (Diseño de la pantalla)
  build() {
    Stack({ alignContent: Alignment.Center }) { // Contenedor que superpone elementos
      // Imagen de fondo
      Image($r('app.media.fondo'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover) // Ajusta la imagen para cubrir el espacio manteniendo proporciones
        .opacity(1)

      // Contenido principal
      Column() {
        Text($r('app.string.Welcome'))
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
        // Imagen principal de MiniBot
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
        // Botón principal
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
          // Evento Método del componente button
          .onClick(() => {
            this.navigateToLevelPage();
          })
      }
      // Propiedades aplicadas a column (texto, imagen, boton)
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Center) // Centra verticalemnte
      .alignItems(HorizontalAlign.Center) // Centra horizontalmente
    }
    // Evento del sistema cuando la pantalla aparece
    .onAppear(() => {
      this.onPageShow();
    })
  }
}
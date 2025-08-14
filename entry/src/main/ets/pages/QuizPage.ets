import { QuizController } from '../controller/QuizController';
import router from '@ohos.router';
import { Question, DifficultyLevel } from '../model/TopicsData';

interface QuizParams {
  topic: string;
  title: string;
  difficulty: DifficultyLevel;
}

@Entry
@Component
struct QuizPage {
  private quizController: QuizController = new QuizController('introduccion', 'basic');
  @State currentQuestions: Question[] = [];
  @State currentQuestionIndex: number = 0;
  @State selectedAnswer: number | null = null;
  @State showResult: boolean = false;
  @State score: number = 0;
  @State quizTitle: string = 'Quiz Python';
  @State isAnswerCorrect: boolean = false;
  private scroller: Scroller = new Scroller();

  aboutToAppear() {
    const params = router.getParams() as QuizParams;
    if (params) {
      this.initializeQuiz(params);
    }
  }

  private initializeQuiz(params: QuizParams): void {
    this.quizTitle = params.title;
    this.quizController = new QuizController(params.topic, params.difficulty);
    this.currentQuestions = this.quizController.getRandomQuestionSet(5);
    this.resetQuizState();
  }

  private resetQuizState(): void {
    this.currentQuestionIndex = 0;
    this.selectedAnswer = null;
    this.showResult = false;
    this.score = 0;
    this.isAnswerCorrect = false;
    this.scrollToTop();
  }

  private handleAnswerSelection(optionIndex: number): void {
    if (this.showResult) return;

    this.selectedAnswer = optionIndex;
    this.showResult = true;

    const currentQuestion = this.currentQuestions[this.currentQuestionIndex];
    this.isAnswerCorrect = this.quizController.validateAnswer(currentQuestion.id, optionIndex);

    if (this.isAnswerCorrect) {
      this.score += 1;
    }
  }

  private goToNextQuestion(): void {
    if (this.currentQuestionIndex < this.currentQuestions.length - 1) {
      this.currentQuestionIndex += 1;
      this.selectedAnswer = null;
      this.showResult = false;
      this.isAnswerCorrect = false;
      this.scrollToTop();
    }
  }

  private scrollToTop(): void {
    this.scroller.scrollTo({
      xOffset: 0,
      yOffset: 0,
      animation: { duration: 300, curve: Curve.EaseOut }
    });
  }

  build() {
    Stack({ alignContent: Alignment.Center }) {
      Image($r('app.media.ok'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .opacity(1)

      Scroll(this.scroller) {
        Column() {
          Text(this.quizTitle)
            .fontSize(22)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 15 })
            .width('100%')
            .textAlign(TextAlign.Center)

          Column() {
            Text(this.currentQuestions[this.currentQuestionIndex]?.questionText ?? '')
              .fontSize(18)
              .fontColor(Color.White)
              .margin({ bottom: 20 })
              .maxLines(15)
              .textOverflow({ overflow: TextOverflow.Ellipsis })

            ForEach(this.currentQuestions[this.currentQuestionIndex]?.options ?? [], (option: string, index: number) => {
              Button(option, { type: ButtonType.Capsule })
                .width('80%')
                .height(45)
                .backgroundColor('#00000000')
                .border({
                  width: 2,
                  color: this.showResult ?
                    (this.selectedAnswer === index ?
                      (this.isAnswerCorrect ? '#4CAF50' : '#F44336') :
                    Color.White) :
                  Color.White
                })
                .fontColor(Color.White)
                .margin({ bottom: 12 })
                .onClick(() => {
                  if (!this.showResult) {
                    this.handleAnswerSelection(index);
                  }
                })
            })

            if (this.showResult) {
              Column() {
                Row() {
                  Image(this.isAnswerCorrect ? $r('app.media.check') : $r('app.media.equis'))
                    .width(24)
                    .height(24)
                    .margin({ right: 8 })
                  Text(this.isAnswerCorrect ? '¡Correcto!' : '¡Incorrecto!')
                    .fontSize(18)
                    .fontColor(this.isAnswerCorrect ? '#4CAF50' : '#F44336')
                    .fontWeight(FontWeight.Bold)
                }
                .justifyContent(FlexAlign.Center)
                .margin({ bottom: 20 })

                if (this.currentQuestionIndex < this.currentQuestions.length - 1) {
                  Button('Siguiente', { type: ButtonType.Capsule })
                    .width('50%')
                    .height(45)
                    .backgroundColor(this.isAnswerCorrect ? '#4CAF50' : '#F44336')
                    .fontColor(Color.White)
                    .fontWeight(FontWeight.Bold)
                    .margin({ top: 10, bottom: 20 })
                    .onClick(() => {
                      this.goToNextQuestion();
                    })
                } else {
                  Column() {
                    if (this.score === this.currentQuestions.length) {
                      Image($r('app.media.meta'))
                        .width(60)
                        .height(60)
                        .margin({ bottom: 10 })
                      Text('¡Felicidades, eres un crack!')
                        .fontSize(18)
                        .fontColor('#4CAF50')
                        .fontWeight(FontWeight.Bold)
                        .margin({ bottom: 10 })
                    } else {
                      Image($r('app.media.objetivo'))
                        .width(60)
                        .height(60)
                        .margin({ bottom: 10 })
                      Text('¡Buen intento, sigue practicando!')
                        .fontSize(18)
                        .fontColor('#FFC107')
                        .fontWeight(FontWeight.Bold)
                        .margin({ bottom: 10 })
                    }

                    Text(`Puntuación final: ${this.score}/${this.currentQuestions.length}`)
                      .fontSize(20)
                      .fontColor(Color.White)
                      .margin({ top: 10, bottom: 20 })

                    Button('Finalizar', { type: ButtonType.Capsule })
                      .width('50%')
                      .height(45)
                      .backgroundColor('#2196F3')
                      .fontColor(Color.White)
                      .fontWeight(FontWeight.Bold)
                      .margin({ top: 10, bottom: 20 })
                      .onClick(() => {
                        router.back();
                      })
                  }
                  .width('100%')
                  .alignItems(HorizontalAlign.Center)
                }
              }
              .width('100%')
              .alignItems(HorizontalAlign.Center)
            }
          }
          .width('100%')
          .borderRadius(20)
          .backgroundColor('#00000055')
          .padding(20)
          .margin({ bottom: 30 })
        }
        .width('100%')
        .alignItems(HorizontalAlign.Center)
      }
      .width('100%')
      .height('100%')
      .scrollBar(BarState.Off)
    }
    .width('100%')
    .height('100%')
    .gesture(
      GestureGroup(GestureMode.Sequence,
        PanGesture({ direction: PanDirection.Right })
          .onActionEnd(() => {
            router.back();
          })
      )
    )
  }
}
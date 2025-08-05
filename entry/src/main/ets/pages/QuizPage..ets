import { QuizController } from '../controller/QuizController';
import { Question } from '../model/TopicsData';

@Entry
@Component
struct QuizPage {
  private quizController: QuizController = new QuizController('introduccion');
  @State currentQuestions: Question[] = [];
  @State selectedAnswer: number | null = null;
  @State showResult: boolean = false;
  @State isCorrect: boolean = false;

  onPageShow(): void {
    this.currentQuestions = this.quizController.getRandomQuestionSet(5);
  }

  build() {
    Column() {
      ForEach(this.currentQuestions, (question: Question, index: number) => {
        Column() {
          Text(question.questionText)
            .fontSize(18)
            .margin({ bottom: 20 });

          ForEach(question.options, (option: string, optionIndex: number) => {
            Button(option)
              .width('90%')
              .margin({ bottom: 10 })
              .stateEffect(true)
              .backgroundColor(
                this.showResult && index === this.selectedAnswer
                  ? (optionIndex === question.correctAnswer ? '#4CAF50' : '#F44336')
                  : '#2196F3'
              )
              .onClick(() => {
                this.selectedAnswer = optionIndex;
                this.isCorrect = this.quizController.validateAnswer(question.id, optionIndex);
                this.showResult = true;
              });
          }, (option: string) => option) // KeyGenerator necesario para ForEach
        }
        .padding(20)
        .margin({ bottom: 20 })
        .borderRadius(10)
        .backgroundColor('#FFFFFF20')
      }, (question: Question) => question.id) // KeyGenerator necesario para ForEach
    }
    .padding(20)
  }
}
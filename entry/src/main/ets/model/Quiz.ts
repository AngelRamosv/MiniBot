import { Question } from './TopicsData';

export class Quiz {
  private questions: Question[];

  constructor(questions: Question[]) {
    this.questions = questions;
  }

  getRandomQuestions(count: number): Question[] {
    const shuffled = [...this.questions].sort(() => 0.5 - Math.random());
    return shuffled.slice(0, count);
  }

  // Nueva implementación que acepta questionId
  checkAnswer(questionId: string, selectedOption: number): boolean {
    const question = this.questions.find(q => q.id === questionId);
    return question?.correctAnswer === selectedOption;
  }
}
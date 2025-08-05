import { Question } from '../model/TopicsData';
import { Quiz } from '../model/Quiz';
import { allQuestions } from '../model/TopicsData';

export class QuizController {
  private quiz: Quiz;
  private topic: string;

  constructor(topic: string) {
    this.topic = topic;
    const questions: Question[] = this.getQuestionsByTopic(topic);
    this.quiz = new Quiz(questions);
  }

  private getQuestionsByTopic(topic: string): Question[] {
    return allQuestions.filter((q: Question) => q.topic === topic);
  }

  getRandomQuestionSet(count: number): Question[] {
    return this.quiz.getRandomQuestions(count);
  }

  validateAnswer(questionId: string, selectedOption: number): boolean {
    return this.quiz.checkAnswer(questionId, selectedOption);
  }

  saveProgress(userId: string, isCorrect: boolean): void {
    // Implementa lógica para guardar progreso
  }
}
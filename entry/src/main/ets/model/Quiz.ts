// Importación de TopicData (id, texto, opciones, respuesta correcta, etc)
import { Question } from './TopicsData';
// Clase Quiz
export class Quiz {
  private questions: Question[]; // Arreglo de preguntas

  // Costructor
  constructor(questions: Question[]) {
    this.questions = questions;
  }
  // Método que da preguntas al azar
  getRandomQuestions(count: number): Question[] {
    const shuffled = [...this.questions].sort(() => 0.5 - Math.random());
    return shuffled.slice(0, count);
  }
  // Método para saber si una respuesta es correcta
  checkAnswer(questionId: string, selectedOption: number): boolean {
    const question = this.questions.find(q => q.id === questionId);
    return question?.correctAnswer === selectedOption;
  }
}
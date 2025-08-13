// Importaciones
import { Question, DifficultyLevel, allQuestions } from '../model/TopicsData'; // Importación añadida
import { Quiz } from '../model/Quiz';

// Definimos la clase
export class QuizController {
  // Propiedades privadas
  private quiz: Quiz; // Quiz
  private topic: string; // Tema
  private difficulty: DifficultyLevel; // Dificultad

  // Constructor
  constructor(topic: string, difficulty: DifficultyLevel = 'basic') {
    this.topic = topic;
    this.difficulty = difficulty;
    const questions = this.getQuestionsByTopicAndDifficulty();
    this.quiz = new Quiz(questions);
  }

  // Método para filtrar preguntas por tema y dificultad
  private getQuestionsByTopicAndDifficulty(): Question[] {
    return allQuestions.filter(q =>
    q.topic === this.topic &&
      q.difficulty === this.difficulty
    );
  }

  /**
   * Conjunto aleatorio de preguntas
   * @param count Número de preguntas a obtener
   */
  getRandomQuestionSet(count: number): Question[] {
    const availableQuestions = this.getQuestionsByTopicAndDifficulty();

    // Si hay menos preguntas que las solicitadas, devuelve todas disponibles
    if (availableQuestions.length <= count) {
      return [...availableQuestions].sort(() => Math.random() - 0.5);
    }

    // Algoritmo Fisher-Yates para mostrar las preguntas aleatorias
    const shuffled = [...availableQuestions];
    for (let i = shuffled.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
    }
    return shuffled.slice(0, count);
  }

  /**
   * Valida una respuesta seleccionada
   * @param questionId ID de la pregunta
   * @param selectedOption Índice de la opción seleccionada
   */
  validateAnswer(questionId: string, selectedOption: number): boolean {
    return this.quiz.checkAnswer(questionId, selectedOption);
  }

  /**
   * Verifica si hay suficientes preguntas disponibles
   * @param count Número de preguntas requeridas
   */
  hasEnoughQuestions(count: number): boolean {
    return this.getQuestionsByTopicAndDifficulty().length >= count;
  }
}
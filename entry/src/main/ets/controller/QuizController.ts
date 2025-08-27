// Importaciones
import { Question, DifficultyLevel, allQuestions } from '../model/TopicsData';
import { allQuestionsEN } from '../model/TopicsDataEn';
import { Quiz } from '../model/Quiz';

// Clase principal
export class QuizController {
  // Propiedades privadas
  private quiz: Quiz;
  private topic: string;
  private difficulty: DifficultyLevel;
  private language: string;

  // Constructor
  constructor(topic: string, difficulty: DifficultyLevel = 'basic', language: string = 'es') {
    this.topic = topic;
    this.difficulty = difficulty;
    this.language = language;
    const questions = this.getQuestionsByTopicAndDifficulty();
    this.quiz = new Quiz(questions);
  }

  // Método para filtrar preguntas por tema y dificultad
  private getQuestionsByTopicAndDifficulty(): any[] {
    // Selecciona el conjunto de preguntas según el idioma
    const questionSet = this.language === 'es' ? allQuestions : allQuestionsEN;

    // Filtrar manualmente para evitar problemas de tipos
    const filteredQuestions: any[] = [];

    for (const question of questionSet) {
      if (question.topic === this.topic && question.difficulty === this.difficulty) {
        filteredQuestions.push({
          id: question.id,
          questionText: question.questionText,
          options: question.options,
          correctAnswer: question.correctAnswer,
          topic: question.topic,
          difficulty: question.difficulty
        });
      }
    }

    return filteredQuestions;
  }

  /**
   * Conjunto aleatorio de preguntas
   * @param count Número de preguntas a obtener
   */
  getRandomQuestionSet(count: number): any[] {
    const availableQuestions = this.getQuestionsByTopicAndDifficulty();

    if (availableQuestions.length <= count) {
      return [...availableQuestions].sort(() => Math.random() - 0.5);
    }

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
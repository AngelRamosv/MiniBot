export type DifficultyLevel = 'basic' | 'intermediate' | 'advanced';

export interface Question {
  id: string;
  questionText: string;
  options: string[];
  correctAnswer: number;
  topic: string;
  difficulty: DifficultyLevel; // Cambiado de string a tipo específico
}

export const allQuestions: Question[] = [
  {
    id: 'intro-1',
    questionText: '¿Python es un lenguaje...?',
    options: ['Interpretado', 'Compilado', 'De bajo nivel'],
    correctAnswer: 0,
    topic: 'introduccion',
    difficulty: 'basic' // Ahora debe coincidir con DifficultyLevel
  },
// ... otras preguntas
];
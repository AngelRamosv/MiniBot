import { languages, LanguageKey } from '../model/Language';

export class LanguageController {
  private static currentLanguage: LanguageKey = 'es'; // Default: español

  static setLanguage(lang: LanguageKey) {
    this.currentLanguage = lang;
    // Opcional: Guardar en Preferences para persistencia
    // preferences.put('userLanguage', lang);
  }

  static getText(key: keyof typeof languages['en']) {
    return languages[this.currentLanguage][key];
  }
}
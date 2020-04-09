class BaseQuestion {
  /* クイズのすべての形式に共通する雛形 */
  String questionText;

  BaseQuestion(String q) {
    questionText = q;
  }
}

class TrueFalseQuestion extends BaseQuestion {
  /* 正誤問題の形式の雛形 */
  bool answer;

  TrueFalseQuestion(String q, bool a) :
    answer = a,
    super(q);
}

class ThreeChoiceQuestion extends BaseQuestion {
  /* 3択問題の形式の雛形 */
  String answer1;
  String answer2;
  String answer3;
  int answerNumber;

  ThreeChoiceQuestion(String q, String a1, String a2, String a3, int aNumber) :
      answer1 = a1,
      answer2 = a2,
      answer3 = a3,
      answerNumber = aNumber,
      super(q);
}

List questionList = [
  TrueFalseQuestion('犬にたまねぎをたべさせてはいけない', true),
  ThreeChoiceQuestion('秀吉の幼名は何か？', '日吉丸', '藤吉郎', 'ガルマ・ザビ', 1),
];
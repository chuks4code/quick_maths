
    /*'✅ Correct!',
     '❌ Wrong! Answer: \${state.question.correctAnswer}',
  */
    String evaluateAnswers(List<dynamic> userAnswers, List<dynamic> correctAnswers) {
      int correctCount = 0;
      List<int> wrongIndices = [];

      for (int i = 0; i < 4; i++) {
        int userAns = int.tryParse(userAnswers[i].toString().trim()) ?? -9999;
        int correctAns = int.tryParse(correctAnswers[i].toString().trim()) ?? -9999;
        if(userAns == correctAns) {
          correctCount= correctCount +1;
        } else {
          wrongIndices.add(i + 1);
        }
        /*print(userAns);
        print(correctAns);*/
        //print('this first');
      }
      /*print(correctAnswers);
      print(userAnswers);
      print(correctCount);
      print(wrongIndices);*/
      if (correctCount == userAnswers.length) {
        return 'Wow! You got all correct!!\n\nYou may keep practising';
      } else if (correctCount > 0) {
        return 'You got $correctCount out of ${userAnswers.length} correct✅.\n\nYou missed question(s): ${wrongIndices.join(', ')} Keep practising';
      } else {
        return 'You got all incorrect❌. Continue trying!';

      }

    }
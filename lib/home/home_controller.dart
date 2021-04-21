import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_models.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;
  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Tamy Vial",
      photoUrl: 'https://avatars.githubusercontent.com/u/38055818?v=4',
      score: 75,
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
          title: "NLW 5 Flutter",
          questions: [
            QuestionModel(title: 'Está curtindo o flutter?', awnsers: [
              AwnserModel(title: 'Sim, estou curtindo'),
              AwnserModel(title: 'Não muito'),
              AwnserModel(title: 'Está demais'),
              AwnserModel(title: 'Amando isso', isRight: true)
            ]),
          ],
          image: AppImages.blocks,
          level: Level.facil),
    ];
  }
}

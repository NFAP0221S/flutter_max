
import 'package:quizapp/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'Flutter UI의 주요 구성 요소는 무엇인가요?',
    [
      '위젯',
      '컴포넌트',
      '블록',
      '함수',
    ],
  ),
  QuizQuestion('Flutter UI는 어떻게 구성되나요?', [
    '코드에서 위젯을 조합하여',
    '시각적 편집기에서 위젯을 조합하여',
    '구성 파일에서 위젯을 정의하여',
    'iOS는 XCode, 안드로이드는 Android Studio를 사용하여',
  ]),
  QuizQuestion(
    'StatefulWidget의 목적은 무엇인가요?',
    [
      '데이터 변경에 따라 UI를 업데이트',
      'UI 변경에 따라 데이터를 업데이트',
      '데이터 변경을 무시',
      '데이터에 의존하지 않는 UI를 렌더링',
    ],
  ),
  QuizQuestion(
    'StatelessWidget과 StatefulWidget 중 어느 것을 더 자주 사용해야 하나요?',
    [
      'StatelessWidget',
      'StatefulWidget',
      '둘 다 동일하게 좋음',
      '위의 어느 것도 아님',
    ],
  ),
  QuizQuestion(
    'StatelessWidget에서 데이터를 변경하면 어떻게 되나요?',
    [
      'UI가 업데이트되지 않음',
      'UI가 업데이트됨',
      '가장 가까운 StatefulWidget이 업데이트됨',
      '중첩된 모든 StatefulWidget이 업데이트됨',
    ],
  ),
  QuizQuestion(
    'StatefulWidgets 내에서 데이터를 어떻게 업데이트해야 하나요?',
    [
      'setState()를 호출하여',
      'updateData()를 호출하여',
      'updateUI()를 호출하여',
      'updateState()를 호출하여',
    ],
  ),
];
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новости'),
      ),
      body: const Center(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            children: [
          Text(
              'В день озеленения во Владивостоке стало на 600 деревьев и кустарников больше',
              style: TextStyle(
                fontSize: 20.0, // Размер шрифта
                color: Colors.purple, // Цвет текста
            ),
          ),
          Text(
            'В нем активно приняли участие сотни активных горожан и представителей различных организаций, ',
            style: TextStyle(
              fontSize: 15.0, // Размер шрифта
              color: Colors.black, // Цвет текста
            ),
          ),
          Text(
            'в том числе и закупавшие саженцы. Более 600 саженцев высадили на семи участках.',
             style: TextStyle(
               fontSize: 15.0, // Размер шрифта
               color: Colors.black, // Цвет текста
                ),
              ),
          Text(
                'Сегодня во Владивостоке от +17 до +19°С',
                style: TextStyle(
                  fontSize: 20.0, // Размер шрифта
                  color: Colors.purple, // Цвет текста
                ),
              ),
           Text(
                'В воскресенье, 28 апреля, во Владивостоке переменная облачность, утром возможен'
                 'небольшой дождь. Ветер юго-западный умеренный. Температура воздуха 17…19°С.',
                style: TextStyle(
                  fontSize: 15.0, // Размер шрифта
                  color: Colors.black, // Цвет текста
                ),
              ),
          Text(
                'В Приморье орлана с огнестрельным ранением выходили и выпустили в дикую природу',
                style: TextStyle(
                  fontSize: 20.0, // Размер шрифта
                  color: Colors.purple, // Цвет текста
                ),
              ),
          Text(
                'Орлана, который попал в реабилитационный центр «Тигр» из-за огнестрельного ранения,',
                style: TextStyle(
                  fontSize: 15.0, // Размер шрифта
                  color: Colors.black, // Цвет текста
                ),
              ),
          Text(
                'вылечили и выпустили в дикую природу. С начала февраля он перенёс операцию,'
                'несколько осмотров и теперь готов к самостоятельной жизни.',
                style: TextStyle(
                  fontSize: 15.0, // Размер шрифта
                  color: Colors.black, // Цвет текста
                ),
              ),
        ],
      ),
    ],
    ),
      ),
    );
  }
}
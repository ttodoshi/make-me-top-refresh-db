INSERT INTO course_rating_offer(explorer_id, offer_valid)
VALUES (1, false),
       (2, false),
       (3, false),
       (4, false),
       (5, false),
       (6, false),
       (7, false),
       (8, false),
       (9, false),
       (10, false),
       (13, false),
       (14, false),
       (15, false),
       (16, false),
       (17, false);
INSERT INTO course_rating(explorer_id, rating)
VALUES (1, 1),
       (2, 3),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 1),
       (7, 2),
       (8, 3),
       (9, 4),
       (10, 5),
       (13, 3),
       (14, 4),
       (15, 5),
       (16, 4),
       (17, 3);

INSERT INTO explorer_feedback_offer(explorer_id, keeper_id, offer_valid)
VALUES (1, 11, false),
       (2, 11, false),
       (3, 11, false),
       (4, 11, false),
       (5, 11, false),
       (6, 11, false),
       (7, 11, false),
       (8, 11, false),
       (9, 11, false),
       (10, 11, false),
       (13, 15, false),
       (14, 2, false),
       (15, 3, false),
       (16, 4, false),
       (17, 5, false);
INSERT INTO explorer_feedback(explorer_id, rating, comment)
VALUES (1, 1,
        'Преподаватель был очень отзывчивым и заботился о нашем понимании материала. dfkjg jldgkjobi moiw4tgj vmoirdjg mwtoiwj vkdgok wetmp vj wgpk pwekg. ogdsjg, owjg vbdbvi lsdkjgoi jovi. owejgkd josgjwe. ogiwmeigj.'),
       (2, 2, 'Уроки были хорошо структурированы и интересными'),
       (3, 3,
        'Преподаватель использовал разнообразные методы обучения. dfkjg jldgkjobi moiw4tgj vmoirdjg mwtoiwj vkdgok wetmp vj wgpk pwekg. ogdsjg, owjg vbdbvi lsdkjgoi jovi. owejgkd josgjwe. ogiwmeigj.owij omsidgm owejt mgsoiwjtwetj.'),
       (4, 4, 'Он давал нам полезные советы и помогал решать наши проблемы'),
       (5, 5,
        'Очень четкие объяснения и понятные примеры. dfkjg jldgkjobi moiw4tgj vmoirdjg mwtoiwj vkdgok wetmp vj wgpk pwekg. ogdsjg, owjg vbdbvi lsdkjgoi jovi. owejgkd josgjwe. ogiwmeigj. dfkjg jldgkjobi moiw4tgj vmoirdjg mwtoiwj vkdgok wetmp vj wgpk pwekg. ogdsjg, owjg vbdbvi lsdkjgoi jovi. owejgkd josgjwe. ogiwmeigj.'),
       (6, 1, 'Преподаватель был энтузиастом своей предметной области и передавал свою страсть студентам'),
       (7, 2, 'Отличная коммуникация и внимание к индивидуальным потребностям студентов'),
       (8, 3, 'Преподаватель обладал глубокими знаниями и опытом в данной области.'),
       (9, 4, 'Всегда готов ответить на вопросы и разъяснить непонятные моменты'),
       (10, 5, 'Очень дружелюбный и поддерживающий атмосферу в классе'),
       (13, 4, 'НОРМ, хороший чел, позитивный'),
       (14, 5, 'Пойдёт, умный чел, помогает'),
       (15, 5, 'Пойдёт, умный чел, помогает'),
       (16, 5, 'Пойдёт, умный чел, помогает'),
       (17, 5, 'Пойдёт, умный чел, помогает');

INSERT INTO keeper_feedback_offer(keeper_id, explorer_id, offer_valid)
VALUES (11, 1, false),
       (11, 2, false),
       (11, 3, false),
       (11, 4, false),
       (11, 5, false),
       (11, 6, false),
       (11, 7, false),
       (11, 8, false),
       (11, 9, false),
       (11, 10, false),
       (15, 13, false),
       (2, 14, false),
       (3, 15, false),
       (4, 16, false),
       (5, 17, false);
INSERT INTO keeper_feedback(explorer_id, rating, comment)
VALUES (1, 1, 'Отличный студент, активно участвует на занятиях.'),
       (2, 2, 'Всегда выполняет домашние задания вовремя.'),
       (3, 3, 'Проявляет хороший интерес к предмету.'),
       (4, 4, 'Стремится к постоянному улучшению своих навыков.'),
       (5, 5, 'Отлично справляется с трудными заданиями.'),
       (6, 1, 'Предлагает интересные идеи и решения на уроках.'),
       (7, 2, 'Хорошо работает в команде и проявляет лидерские качества.'),
       (8, 3, 'Весьма ответственный и преданный ученик.'),
       (9, 4, 'Отмечаю хороший прогресс в учебе.'),
       (10, 5, 'Рад преподавать столь способного студента.'),
       (13, 4, 'непл0X, хороший чел, позитивный'),
       (14, 3,
        'грр, такой себе чел, не хочу его учить больше, не делает ниче ldfkjg jldgkjobi moiw4tgj vmoirdjg mwtoiwj vkdgok wetmp vj wgpk pwekg. ogdsjg, owjg vbdbvi lsdkjgoi jovi. owejgkd josgjwe. ogiwmeigj.  ощкпо цщоупщш мьщцшуь щьцуп ыщофзйщ щыовп ьцщшп щшыопцщуь щишмоцпщшь цщушпь щшмоуц ьцущшпочзщм.'),
       (15, 5, 'Хорошо работает в команде и проявляет лидерские качества.'),
       (16, 5, 'Стремится к постоянному улучшению своих навыков.'),
       (17, 5,
        'Всегда выполняет домашние задания вовремя. dfkjg jldgkjobi moiw4tgj vmoirdjg mwtoiwj vkdgok wetmp vj wgpk pwekg. ogdsjg, owjg vbdbvi lsdkjgoi jovi. owejgkd josgjwe. ogiwmeigj. sdlkgpow skpdogj pwmetpoigj pwmetgm vposxdjgw');

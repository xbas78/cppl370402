/*------------------------------------------------------------------------------
    Задача (37.4.) 2. Видеопроигрыватель на QML
--------------------------------------------------------------------------------
  Что нужно сделать
  Требуется составить интерфейс простого видеопроигрывателя на языке QML.
  Основную верхнюю зону интерфейса составляет сам экран проигрывателя. Снизу
расположены средства управления воспроизведением, а именно: кнопка начала
воспроизведения (Play), кнопка паузы воспроизведения (Pause), кнопка остановки
воспроизведения (Stop), перемотка (Rewind), быстрое воспроизведение (Forward).
Далее за ними расположен горизонтальный ползунок текущего места воспроизведения.

  Советы и рекомендации
  Для отображения элементов управления вы можете использовать Unicode-символы:
    ▶️,⏸,⏹,⏪︎,⏩︎. Ползунок воспроизведения вы можете реализовать с помощью
элемента ProgressBar.

  Что оценивается
  Полнота интерфейса видеопроигрывателя. Логику реализовывать не требуется.
------------------------------------------------------------------------------*/
#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}

#ifndef ZDBACKEND_H
#define ZDBACKEND_H

#include <QObject>
#include <QString>
#include <qqml.h>

class ZDBackEnd : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString m_username READ username WRITE setUsername  NOTIFY userNameChanged)
    QML_ELEMENT
public:
    explicit ZDBackEnd(QObject *parent = nullptr);


    QString username();
    void setUsername(QString &username);

    void zdTest();
private:
    QString m_username;
signals:
    void userNameChanged();


};

#endif // ZDBACKEND_H

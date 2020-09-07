#include "zdbackend.h"
#include<iostream>
using namespace std;

ZDBackEnd::ZDBackEnd(QObject *parent)
    : QObject(parent)
{
    //qmlRegisterType<ZDBackEnd>("io.qt.examples.backend", 1, 0, "ZDBackEnd");
}

QString ZDBackEnd::username()
{
    cout<<"username"<<endl;
    return m_username;
}

void ZDBackEnd::setUsername(QString &username)
{
    cout <<"setUsername"<<endl;
    if(username == m_username)
        return;
    m_username = username;
    emit userNameChanged();
}

void ZDBackEnd::zdTest()
{
    cout <<"zd test "<<endl;
    printf("%s",this->m_username.toStdWString().c_str());
}
//void ZDBackEnd::userNameChanged()
//{
//    printf("userNameChanged");
//}

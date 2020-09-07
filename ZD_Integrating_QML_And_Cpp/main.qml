import QtQuick 2.15
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import io.qt.examples.backend 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ZDBackEnd{
        id:backend
    }
    TextField{
        text:backend.m_username
        placeholderText: qsTr("User name")
        anchors.centerIn: parent

        onTextChanged: backend.m_username = text
    }




    Button {
        id: button
        x: 270
        y: 289
        text: backend.m_username
    }



}

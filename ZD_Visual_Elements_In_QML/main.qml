import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item{
        width:320
        height: 480

        Rectangle{
            color:"#272822"
            width:320
            height: 480
        }

        Rectangle{
            x:160
            y:20
            width:100
            height:100
            radius:8
            gradient: Gradient{
                GradientStop{position:0.0;color:"aqua"}
                GradientStop{position:1.0;color:"teal"}
            }
            border{width:3;color:"white"}
        }

        Rectangle{
            x:40
            y:20
            width:100
            height:100
            color:"red"

        }

        Image{
            x:40
            y:20
            width:61
            height:73
            source:"http://codereview.qt-project.org/static/logo_qt.png"
        }

        Image{
            x:120
            y:20
            width:61
            height:73
            source:"/pics/timg.jpg"
        }

    }


}

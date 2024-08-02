import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.4

Window {
    id:mainwindow
    width: Screen.width
    height: Screen.height
    visible: false
    title: qsTr("Graph")

    StackView{
        id:mystackview
        anchors.fill: parent
        initialItem: "touchFlick.qml"
    }

    Component.onCompleted: {
        console.debug("Screen.width ==> "+Screen.width)
        console.debug("Screen.height ==> "+Screen.height)
    }
}


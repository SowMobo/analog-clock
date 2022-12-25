import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    //title: qsTr("Hello World")
    Rectangle {
        width: 640
        height: 480

        Text {
            text: qsTr("Press me")
            font.pixelSize: 45
            anchors.horizontalCenter: parent.horizontalCenter


            MouseArea {
                anchors.fill: parent
                onPressed: parent.color = "green"
                onReleased: parent.color = "black"
            }
        }

        Text {
            text: "Hit me"
            anchors.centerIn: parent
            font.pixelSize: 45
            color: mouseArea.pressed ? "blue" : "red" // text property color is handled

            MouseArea {
                id: mouseArea
                anchors.fill: parent

            }
        }

        Text {
            text: qsTr("Click me")
            font.pixelSize: 45
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom

            MouseArea {
                anchors.fill: parent
                onClicked: parent.font.bold = !parent.font.bold

            }
        }

        Rectangle {
            id: focusBox
            anchors {
                top: parent.top
                left: parent.left
            }


            width: 100; height: 100
            color:   "magenta"

            MouseArea {
                id: focusArea
                anchors.fill: parent
                hoverEnabled: true
            }

            Text {
                anchors.centerIn: parent
                text: qsTr("Change flag")
                font.pixelSize: 10
            }
        }

        Rectangle {
            anchors {
                top: parent.top
                right: parent.right
            }


            width: 100; height: 100
            color: focusArea.containsMouse ? "#800000FF" : "#8000FF00"

//            Text {
//                anchors.centerIn: parent
//                text: qsTr("Move into me")
//                font.pixelSize: 10
//            }
        }

        Rectangle {
            anchors {
                bottom: parent.bottom
                right: parent.right
            }


            width: 100; height: 100
            color: focusArea.containsMouse ? "white" : "yellow"

//            Text {
//                anchors.centerIn: parent
//                text: qsTr("Change me")
//                font.pixelSize: 10
//            }
        }

        Rectangle {
            anchors {
                bottom: parent.bottom
                left: parent.left
            }


            width: 100; height: 100
            color: "#80FF0000"

//            Text {
//                anchors.centerIn: parent
//                text: qsTr("Read me")
//                font.pixelSize: 10
//            }
        }
    }

}

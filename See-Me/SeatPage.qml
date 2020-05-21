import QtQuick 2.0

Item {
    width: 1240
    height: 843

    Image {
        id: backnavigation
        x: 43
        y: 64
        width: 74
        height: 70
        source: "poto/left-arrow.png"
        MouseArea{
            anchors.fill:parent
            cursorShape: Qt.PointingHandCursor
            onClicked:{console.log("back");stackView.replace("MovPage.qml")}
        }
    }

    Rectangle {
        id: rectangle
        x: 113
        y: 179
        width: 1065
        height: 676
        color: "#000000"
        radius: 20

        Grid{
            x : 130
            y : 114
            columns: 4
            rows: 5
            spacing: 25
                Repeater{
                    model : 20
                    Rectangle{
                        id : rect
                        width: 60
                        property bool isgrey: true
                        height: 60
                        radius :10
                        color: isgrey? "#C4C4C4" : "#7FD6FF"
                            MouseArea{
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: rect.isgrey = !rect.isgrey}
                    }
                }
            }

        Grid{
            x : 586
            y : 114
            columns: 4
            rows: 5
            spacing: 25
                Repeater{
                    model : 20
                    Rectangle{
                        id : rect1
                        width: 60
                        property bool isgrey: true
                        height: 60
                        radius :10
                        color: isgrey? "#C4C4C4" : "#7FD6FF"
                            MouseArea{
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: {console.log("chosen")
                                            //seat.cpp
                                            rect1.isgrey = !rect1.isgrey}}
                    }
                }
            }

        Image {
            id: image1
            x: 463
            y: 119
            width: 100
            height: 395
            fillMode: Image.PreserveAspectFit
            source: "poto/A B C D E.png"}
        Rectangle{
            x:317
            y: 564
            width: 180
            height: 50
            radius: 20
            color: "#e2ff71"
            Text {
                text: qsTr("Proceed")
                font.family: "Tahoma"
                font.bold: true
                font.pixelSize: 30
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {console.log("proceed");stackView.replace("PaymentPage.qml")}
            }}

            Text {
                id: element2
                x: 557
                y: 545
                width: 88
                height: 39
                color: "#ffffff"
                text: qsTr("Total")
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 30
            }

            Text {
                id: element3
                x: 557
                y: 590
                width: 88
                height: 24
                color: "#ffffff"
                text: qsTr("Rp 0,-")
                font.bold: true
                font.family: "tahoma"
                font.pixelSize: 25
            }
    }

    Text {
        id: element
        x: 209
        y: 128
        color: "#ffffff"
        text: qsTr("Pick Your Seat")
        font.bold: true
        font.family: "Tahoma"
        font.pixelSize: 70
    }

    Image {
        id: image
        x: 124
        y: 137
        width: 85
        height: 75
        fillMode: Image.PreserveAspectFit
        source: "poto/office-chair 2.png"
    }

}

/*##^##
Designer {
    D{i:5;anchors_height:60;anchors_width:60}D{i:4;anchors_height:60;anchors_width:60}
}
##^##*/

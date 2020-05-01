import QtQuick 2.0

Item {
    width: 1240
    height: 843
    Rectangle{
        x:113
        y:179
        width:1065
        height: 676
        color: "black"
        radius:20
        Rectangle{
            x: 0
            y: 0
            width: 533
            height: 676
            radius: 20

            gradient: Gradient {
                GradientStop {
                    position: 0.0
                    color: "#F15F79"}

                GradientStop {
                    position: 1.0
                    color: "#C84E89"}}

            Image {
                id: image
                x: 43
                y: 506
                width: 447
                height: 182
                fillMode: Image.PreserveAspectFit
                source: "poto/Bayar.png"
            }

            Text {
                id: element
                x: 43
                y: 85
                color: "#ffffff"
                text: qsTr("Your Information")
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 30
            }

            Text {
                id: element1
                x: 43
                y: 259
                color: "#ffffff"
                text: qsTr("Card Information")
                font.bold: true
                font.pixelSize: 30
                font.family: "Tahoma"
            }

            Rectangle{
                x: 68
                y: 141
                width: 482
                height: 68
                color: "#000000"
                radius: 20
                TextEdit {
                    id: textEdit
                    x: 24
                    y: 10
                    height: 50
                    width:439
                    color: "#e3ff71"
                    //anchors.left: parent
                    text: qsTr("Owner of the Card")
                    font.bold: true
                    font.pixelSize: 20}
            }

            Rectangle {
                x: 68
                y: 317
                width: 482
                height: 68
                color: "#000000"
                radius: 20
                TextEdit {
                    id: textEdit1
                    x: 24
                    y: 10
                    height: 50
                    width:441
                    color: "#e3ff71"
                    text: qsTr("Card Number")
                    //anchors.left: parent
                    font.bold: true
                    font.pixelSize: 20
                }
            }

            Rectangle {
                x: 68
                y: 406
                width: 482
                height: 68
                color: "#000000"
                radius: 20
                TextEdit {
                    id: textEdit2
                    x: 20
                    y: 10
                    height: 50
                    width:445
                    color: "#e3ff71"
                    text: qsTr("Expired Date (00/00/00)")
                    //anchors.left: parent
                    font.bold: true
                    font.pixelSize: 20
                }
            }
        }

        Image {
            id: image1
            x: 654
            y: 35
            width: 282
            height: 280
            fillMode: Image.PreserveAspectFit
            source: "poto/cinema(1) 1.png"
        }

        Text {
            id: element2
            x: 703
            y: 418
            color: "#ffffff"
            text: qsTr("Rp. 0,-")
            font.bold: true
            font.pixelSize: 55
        }

        Text {
            id: element3
            x: 725
            y: 334
            color: "#ffffff"
            text: qsTr("Total")
            font.bold: true
            font.pixelSize: 55
        }

        Rectangle {
            id: rectangle
            x: 669
            y: 551
            width: 253
            height: 41
            color: "#e3ff71"
            radius: 20

            Text {
                text: qsTr("Pay")
                font.bold: true
                font.pixelSize: 25
                font.family: "Tahoma"
                color: "black"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: console.log("Payed")}
        }}
    Text {
        id: paymentt
        x: 209
        y: 128
        color: "#ffffff"
        text: qsTr("Payment")
        font.bold: true
        font.family: "Tahoma"
        font.pixelSize: 70}
    Image {
        id: imagee
        x: 132
        y: 149
        width: 65
        height: 54
        fillMode: Image.PreserveAspectFit
        source: "poto/wallet 2.png"}

}


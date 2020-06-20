import QtQuick 2.0
import QtQuick.Controls 2.14

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
            onClicked:{console.log("back");stackView.replace("SeatPage.qml")}
        }
    }

    Rectangle{
        x:113
        y:179
        width:1065
        height: 676
        color: "black"
        radius:20
        Rectangle{
            id: rectangle1
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

            Text {
                id: element
                x: 43
                y: 85
                color: "#ffffff"
                text: qsTr("Your Name")
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 30
            }

            /*Text {
                id: element1
                x: 43
                y: 259
                color: "#ffffff"
                text: qsTr("Card Information")
                font.bold: true
                font.pixelSize: 30
                font.family: "Tahoma"
            }*/
            
            Text {
                id: element4
                x: 59
                y: 330
                color: "#ffffff"
                text: qsTr("We have 2 method payment")
                font.family: "Tahoma"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30
            }
            
            Rectangle{
                x: 68
                y: 141
                width: 482
                height: 68
                color: "#000000"
                radius: 20
                TextArea {
                    id: textArea
                    x: 24
                    y: 10
                    height: 50
                    width:439
                    color: "#e3ff71"
                    //anchors.left: parent
                    placeholderText: qsTr("Write here")
                    font.bold: true
                    font.pixelSize: 20
                    focus: true
                    }
            }
            

            Rectangle {
                x: 68
                y: 393
                width: 405
                height: 68
                color: "#000000"
                radius: 20
                Text {
                    id: text1
                    x: 24
                    y: 10
                    height: 50
                    width:358
                    color: "#e3ff71"
                    text: qsTr("Via Barcode (QR code)")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.bold: true
                    font.pixelSize: 20
                    focus: true
                }
            }

            Rectangle {
                x: 68
                y: 502
                width: 405
                height: 68
                color: "#000000"
                radius: 20
                Text {
                    id: text2
                    x: 20
                    y: 10
                    height: 50
                    width:358
                    color: "#e3ff71"
                    text: qsTr("Via Virtual Bank Account")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.bold: true
                    font.pixelSize: 20
                    focus: true
                }
            }
            
            Text {
                x: 241
                y: 463
                width: 59
                height: 37
                color: "#ffffff"
                text: qsTr("or")
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 30
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

        Label {
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
                onClicked: {
                    stackView.replace("Payment2Page.qml")
                    console.log("NextPayed")
                }
            }
        }
    }
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


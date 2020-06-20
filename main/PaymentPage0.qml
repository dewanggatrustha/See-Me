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

        Text {
            id: element4
            x: 653
            y: 75
            color: "#ffffff"
            text: qsTr("We have <br> 2 method payment")
            font.family: "Tahoma"
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 30
        }


        Rectangle {
            x: 598
            y: 214
            width: 405
            height: 68
            color: "#ED5F7A"
            radius: 20
            Text {
                id: text1
                x: 24
                y: 10
                height: 50
                width:358
                color: "#ffffff"
                text: qsTr("Via Barcode (QR code)")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pixelSize: 20
                focus: true
            }
        }

        Rectangle {
            x: 598
            y: 355
            width: 405
            height: 68
            color: "#ED5F7A"
            radius: 20
            Text {
                id: text2
                x: 20
                y: 10
                height: 50
                width:358
                color: "#ffffff"
                text: qsTr("Via Virtual Bank Account")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pixelSize: 20
                focus: true
            }
        }


        Text {
            x: 771
            y: 300
            width: 59
            height: 37
            color: "#ffffff"
            text: qsTr("or")
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.family: "Tahoma"
            font.pixelSize: 30
        }


        Text {
            id: confirm
            x: 619
            y: 510
            width: 354
            height: 39
            color: "#ffffff"
            text: qsTr("Have you transfer the payment?")
            font.bold: true
            font.family: "Tahoma"
            font.pixelSize: 22
        }


        Rectangle {
            id: rectangle
            x: 669
            y: 563
            width: 253
            height: 41
            color: "#e3ff71"
            radius: 20

            Text {
                text: qsTr("Yes")
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
                    stackView.replace("Payment3Page.qml")
                    console.log("NextPayed")
                }
            }
        }


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


            Image {
                id: dana
                width: 170
                height: 170
                anchors.top: parent.top
                anchors.topMargin: 70
                anchors.left: parent.left
                anchors.leftMargin: 50
                fillMode: Image.PreserveAspectFit
                source: "poto/barcode(2) 1.png"
            }

            Image {
                id: danalogo
                x: 242
                y: 100
                width: 179
                height: 55
                fillMode: Image.PreserveAspectFit
                source: "poto/logo-dana.png"
            }

            Text {
                id: nodana
                x: 253
                y: 167
                text: qsTr("3901-3482-6424")
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 20
            }

            Image {
                id: ovo
                width: 170
                height: 170
                anchors.top: dana.bottom
                anchors.topMargin: 30
                anchors.left: parent.left
                anchors.leftMargin: 50
                fillMode: Image.PreserveAspectFit
                source: "poto/barcode(1) 1.png"
            }

            Image {
                id: ovologo
                x: 216
                y: 263
                width: 171
                height: 111
                fillMode: Image.PreserveAspectFit
                source: "poto/logo-ovo.png"
            }

            Text {
                id: noovo
                x: 253
                y: 380
                text: qsTr("9335-7229-8232")
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 20
            }

            Image {
                id: gopay
                width: 170
                height: 170
                anchors.top: ovo.bottom
                anchors.topMargin: 30
                anchors.left: parent.left
                anchors.leftMargin: 50
                fillMode: Image.PreserveAspectFit
                source: "poto/barcode(3) 1.png"
            }


            Image {
                id: gopaylogo
                x: 177
                y: 442
                width: 309
                height: 193
                fillMode: Image.PreserveAspectFit
                source: "poto/logo-gopay.png"
            }

            Text {
                id: nogopay
                x: 253
                y: 566
                text: qsTr("9303-9655-8341")
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 20
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

/*##^##
Designer {
    D{i:18;anchors_y:84}D{i:19;anchors_y:270}
}
##^##*/

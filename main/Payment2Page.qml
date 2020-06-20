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
            onClicked:{console.log("back");stackView.replace("PaymentPage.qml")}
        }
    }

    Rectangle{
        id: rectangle
        x:113
        y:179
        width:1065
        height: 676
        radius:20
        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: "#F15F79"}

            GradientStop {
                position: 1.0
                color: "#C84E89"}}

        Text {
            id: element
            x: 236
            y: 42
            width: 593
            height: 105
            color: "#ffffff"
            text: qsTr("You can pay the ticket by scan the barcode
 or
you can transfer via virtual bank account ")
            font.bold: true
            font.family: "Tahoma"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 25
        }

        Image {
            id: ovo
            y: 270
            width: 180
            height: 180
            anchors.left: image1.right
            anchors.leftMargin: 80
            fillMode: Image.PreserveAspectFit
            source: "poto/barcode(1) 1.png"
        }

        Image {
            id: gopay
            y: 270
            height: 180
            anchors.right: parent.right
            anchors.rightMargin: 182
            anchors.left: image.right
            anchors.leftMargin: 80
            fillMode: Image.PreserveAspectFit
            source: "poto/barcode(3) 1.png"
        }

        Image {
            id: image1
            y: 270
            width: 180
            height: 180
            anchors.left: parent.left
            anchors.leftMargin: 183
            fillMode: Image.PreserveAspectFit
            source: "poto/barcode(2) 1.png"
        }

        Image {
            id: danalogo
            x: 184
            y: 197
            width: 179
            height: 55
            fillMode: Image.PreserveAspectFit
            source: "poto/logo-dana.png"
        }

        Image {
            id: image4
            x: 447
            y: 146
            width: 171
            height: 111
            fillMode: Image.PreserveAspectFit
            source: "poto/logo-ovo.png"
        }

        Image {
            id: image5
            x: 639
            y: 142
            width: 309
            height: 193
            fillMode: Image.PreserveAspectFit
            source: "poto/logo-gopay.png"
        }

        Text {
            id: element1
            x: 186
            text: qsTr("3901-3482-6424")
            font.bold: true
            font.family: "Tahoma"
            anchors.top: image1.bottom
            anchors.topMargin: 14
            font.pixelSize: 20
        }

        Text {
            id: element2
            x: 446
            text: qsTr("9335-7229-8232")
            anchors.top: ovo.bottom
            font.pixelSize: 20
            anchors.topMargin: 15
            font.family: "Tahoma"
            font.bold: true
        }

        Text {
            id: element3
            x: 706
            text: qsTr("9303-9655-8341")
            anchors.top: gopay.bottom
            font.pixelSize: 20
            anchors.topMargin: 15
            font.family: "Tahoma"
            font.bold: true
        }


        Text {
            id: element4
            x: 356
            y: 554
            width: 354
            height: 39
            color: "#ffffff"
            text: qsTr("Have you transfer the payment?")
            font.bold: true
            font.family: "Tahoma"
            font.pixelSize: 22
        }


        Rectangle {
            id: rectangle1
            x: 400
            y: 599
            width: 266
            height: 42
            color: "#000000"
            radius: 17
            Text {
                color: "#ffffff"
                text: qsTr("Yes")
                font.family: "Tahoma"
                font.bold: true
                font.pixelSize: 20
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
    D{i:8;anchors_x:83}D{i:9;anchors_width:180;anchors_x:761}D{i:10;anchors_x:474}D{i:14;anchors_y:484}
D{i:15;anchors_y:464}D{i:16;anchors_y:464}
}
##^##*/

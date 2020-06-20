import QtQuick 2.0

Item {
    width: 1240
    height: 843

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
                    x: 252
                    y: 96
                    color: "#ffffff"
                    text: qsTr("Show the payment receipt to the cashier and\nthey will process the ticket")
                    lineHeight: 1.25
                    font.bold: true
                    font.family: "Tahoma"
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 25
                }

                Image {
                    id: image
                    x: 350
                    y: 227
                    width: 365
                    height: 212
                    fillMode: Image.PreserveAspectFit
                    source: "poto/baloon.png"
                }

                Text {
                    id: element1
                    x: 193
                    y: 431
                    text: qsTr("ENJOY THE MOVIE!")
                    font.bold: true
                    font.family: "Tahoma"
                    font.pixelSize: 70
                }

                Text {
                    id: element2
                    x: 329
                    y: 585
                    color: "#ffffff"
                    text: qsTr("Thank you for using SEE ME app.")
                    font.bold: true
                    font.family: "Tahoma"
                    font.pixelSize: 25
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

import QtQuick 2.0


Item {
    width: 260
    height: 500

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 260
        height: 500
        color: "#000000"
        radius: 20

        Image {
            id: image
            x: -15
            y: -72
            width: 289
            height: 417
            source: "poto/a-quiet-place-2_poster_goldposter_com_1 1.png"
            fillMode: Image.PreserveAspectFit

            Text {
                id: element
                x: 32
                y: 371
                color: "#e2ff71"
                text: qsTr("Tittle")
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 25
            }

            Text {
                id: element1
                x: 40
                y: 407
                color: "#ffffff"
                text: qsTr("Text")
                font.pixelSize: 12
            }

            Button{

            }
        }
    }


}

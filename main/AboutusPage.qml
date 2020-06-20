import QtQuick 2.0

Item {
    id: element13
    width: 1240
    height: 843

    Row{
        id: row
        width: 1065
        height: 750
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 50
        Rectangle{
            id: qq
            width: 335
            height: 400
            color: "black" ; radius: 20; anchors.bottom: parent.bottom; anchors.bottomMargin: 80; visible: true

            Image {
                id: image
                height: 201
                anchors.top: parent.top
                anchors.topMargin: 40
                anchors.left: parent.left
                anchors.leftMargin: 60
                anchors.right: parent.right
                anchors.rightMargin: 60
                source: "poto/Intersection 4.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: element
                x: 133
                color: "#ffffff"
                text: qsTr("Rizki ")
                anchors.top: image.bottom
                anchors.topMargin: 9
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 25
            }

            Text {
                id: element1
                x: 79
                color: "#ffffff"
                text: qsTr("Mahjati Prie H")
                anchors.top: image.bottom
                anchors.topMargin: 39
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 25
            }

            Text {
                id: element6
                x: 103
                color: "#fffbfb"
                text: qsTr("4611419026")
                anchors.top: image.bottom
                anchors.topMargin: 85
                font.bold: true
                font.family: "Tahoma"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 20
            }
        }

        Rectangle{
            id: dwa
            height: 400
            color: "black" ; radius: 20; anchors.bottom: parent.bottom; anchors.bottomMargin: 80; anchors.right: dka.left; anchors.rightMargin: 30; anchors.left: qq.right;anchors.leftMargin: 30

            Image {
                id: image1
                height: 201
                anchors.top: parent.top
                anchors.topMargin: 40
                anchors.left: parent.left
                anchors.leftMargin: 60
                anchors.right: parent.right
                anchors.rightMargin: 60
                source: "poto/Intersect1.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: element2
                x: 118
                width: 100
                height: 34
                color: "#ffffff"
                text: qsTr("Rananggana")
                anchors.top: image1.bottom
                anchors.topMargin: 9
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
                font.pixelSize: 25
            }

            Text {
                id: element3
                x: 118
                width: 100
                height: 34
                color: "#ffffff"
                text: qsTr("Trustha Dewangga")
                anchors.top: image1.bottom
                anchors.topMargin: 39
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: element7
                x: 103
                color: "#fffbfb"
                text: qsTr("4611419054")
                anchors.top: image1.bottom
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                anchors.topMargin: 85
            }}
        Rectangle{
            id: dka
            width: 335
            height: 400
            color: "black" ; radius: 20; anchors.bottom: parent.bottom; anchors.bottomMargin: 80; anchors.right: parent.right;anchors.rightMargin: 0

            Image {
                id: image2
                width: 201
                height: 201
                anchors.top: parent.top
                anchors.topMargin: 40
                anchors.left: parent.left
                anchors.leftMargin: 60
                anchors.right: parent.right
                anchors.rightMargin: 60
                source: "poto/Intersect.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: element4
                x: 116
                color: "#ffffff"
                text: qsTr("Andhika")
                anchors.top: image2.bottom
                anchors.topMargin: 9
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pixelSize: 25
            }

            Text {
                id: element5
                x: 71
                color: "#ffffff"
                text: qsTr("Cahya Rizqillah")
                anchors.top: image2.bottom
                font.bold: true
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                anchors.topMargin: 39
            }

            Text {
                id: element8
                x: 103
                color: "#fffbfb"
                text: qsTr("4611419064")
                anchors.top: image2.bottom
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                anchors.topMargin: 85
            }}

        Text {
            id: element9
            color: "#ffffff"
            text: qsTr("repo : https://github.com/me1oxx/See-Me")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.family: "Tahoma"
            font.pixelSize: 25
        }

        Text {
            id: element10
            color: "#ffffff"
            text: qsTr("Application is designed by")
            anchors.top: parent.top
            anchors.topMargin: 187
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.family: "Tahoma"
            font.pixelSize: 28
        }

        Image {
            id: image3
            width: 97
            height: 79
            anchors.left: parent.left
            anchors.leftMargin: 430
            source: "poto/film-roll 1.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: image4
            width: 93
            height: 79
            anchors.right: parent.right
            anchors.rightMargin: 450
            source: "poto/SEE ME!.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: element11
            color: "#ffffff"
            text: qsTr("icon by")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            font.bold: true
            font.family: "Tahoma"
            font.pixelSize: 20
            anchors.topMargin: 90
        }

        Text {
            id: element12
            color: "#ffffff"
            text: qsTr("https://iconmonstr.com/")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            font.bold: true
            font.family: "Tahoma"
            font.pixelSize: 20
            anchors.topMargin: 110
        }

    }


}

/*##^##
Designer {
    D{i:3;anchors_width:200;anchors_x:61;anchors_y:58}D{i:4;anchors_y:280}D{i:5;anchors_y:-270}
D{i:6;anchors_y:316}D{i:8;anchors_width:201;anchors_x:111;anchors_y:52}D{i:9;anchors_y:242}
D{i:11;anchors_y:316}D{i:7;anchors_width:300}D{i:14;anchors_y:-270}D{i:15;anchors_y:-6}
D{i:16;anchors_y:316}
}
##^##*/

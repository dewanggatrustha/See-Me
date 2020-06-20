import QtQuick 2.0
import QtQuick.Controls 2.12
import com.seeme.theprice 1.0



Item {
    id:pageseat
    width: 1240
    height: 843

    property int price: 0

ThePrice{
    id : seatPrice
}

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
                        height: 60
                        radius :10
                        property bool isgrey: true
                        color: isgrey? "#C4C4C4" : "#7FD6FF"
                            MouseArea{
                                id: mousearea
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: {
                                    if (rect.isgrey){
                                        price += 35000
                                    }
                                    else{
                                        price += -35000
                                    }
                                    rect.isgrey = !rect.isgrey
                                    console.log("chosen")
                                    //seatPrice.hargatentu("set!")
                                    }}
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
                    id : bloks
                    model : 20
                    Rectangle{
                        id : rect1
                        width: 60
                        height: 60
                        radius :10
                        property bool isgrey: true
                        color: isgrey? "#C4C4C4" : "#7FD6FF"
                            MouseArea{
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: {
                                            if (rect1.isgrey){
                                                price += 35000
                                            }
                                            else{
                                                price += -35000
                                            }
                                            rect1.isgrey = !rect1.isgrey
                                            console.log("chosen")
                                            }}
                    }
                }
            }

        Label {
            id : label
            x: 564
            y: 590
            color: "#ffffff"
            text: "Rp. "+ price
            font.bold: true
            font.pixelSize: 30
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
            id: proceed
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
                onClicked: {
                    if (price!=0){
                        stackView.replace("PaymentPage.qml")
                    }
                    console.log("proceed");
                }
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

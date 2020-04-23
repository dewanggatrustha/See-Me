import QtQuick 2.0

Item {
    width: 1240
    height: 843
    Rectangle{
        id: rectangle
        width:1065
        height: 676
        x:113
        y:179
        color: "black"
        radius:20

        Row{
            id: row0
            x: 70
            y: 78
            spacing: 65

        Rectangle {
            width: 170
            height: 50
            color: "#ff488c"
            radius: 20
            Text {
                color: "#ffffff"
                text: qsTr("Date")
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 35
                anchors.centerIn: parent}}
        Rectangle{
            width:170
            height: 50
            radius: 20
            color: "#ff488c"
            Text {
                color: "#ffffff"
                text: qsTr("Time")
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 35
                anchors.centerIn: parent}}
        Rectangle{
            width:450
            height: 50
            radius: 20
            color: "#ff488c"
            Text {
                color: "#ffffff"
                text: qsTr("Movie")
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 35
                anchors.centerIn: parent}}}
        Row{
            id: row
            x:115
            width: 875
            height: 50
            anchors.top: row0.bottom
            anchors.topMargin: 30
            visible: true
            Text {
                id:dt1
                color: "#95c3ff"
                text: qsTr("date1")
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                id:tm1
                color: "#95c3ff"
                text: qsTr("Time1")
                anchors.left: dt1.right
                anchors.leftMargin: 160
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                color: "#95c3ff"
                text: qsTr("Movie1")
                anchors.left: tm1.right
                anchors.leftMargin: 295
                font.pixelSize: 30
                font.family: "Tahoma"}}
        Row{
            id: row1
            x:115
            width: 875
            height: 50
            anchors.top: row.bottom
            anchors.topMargin: 30
            visible: true
            Text {
                id:dt2
                color: "#95c3ff"
                text: qsTr("date2")
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                id:tm2
                color: "#95c3ff"
                text: qsTr("Time2")
                anchors.left: dt2.right
                anchors.leftMargin: 160
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                color: "#95c3ff"
                text: qsTr("Movie2")
                anchors.left: tm2.right
                anchors.leftMargin: 290
                font.pixelSize: 30
                font.family: "Tahoma"}}
        Row{
            id: row2
            x:115
            width: 875
            height: 50
            anchors.top: row1.bottom
            anchors.topMargin: 30
            visible: true
            Text {
                id:dt3
                color: "#95c3ff"
                text: qsTr("date3")
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                id:tm3
                color: "#95c3ff"
                text: qsTr("Time3")
                anchors.left: dt3.right
                anchors.leftMargin: 160
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                color: "#95c3ff"
                text: qsTr("Movie3")
                anchors.left: tm3.right
                anchors.leftMargin: 290
                font.pixelSize: 30
                font.family: "Tahoma"}}
        Row{
            id: row3
            x:115
            width: 875
            height: 50
            anchors.top: row2.bottom
            anchors.topMargin: 30
            visible: true
            Text {
                id:dt4
                color: "#95c3ff"
                text: qsTr("date4")
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                id:tm4
                color: "#95c3ff"
                text: qsTr("Time4")
                anchors.left: dt4.right
                anchors.leftMargin: 160
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                color: "#95c3ff"
                text: qsTr("Movie4")
                anchors.left: tm4.right
                anchors.leftMargin: 290
                font.pixelSize: 30
                font.family: "Tahoma"}}
        Row{
            id: row4
            x:115
            width: 875
            height: 50
            anchors.top: row3.bottom
            anchors.topMargin: 30
            visible: true
            Text {
                id:dt5
                color: "#95c3ff"
                text: qsTr("date5")
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                id:tm5
                color: "#95c3ff"
                text: qsTr("Time5")
                anchors.left: dt5.right
                anchors.leftMargin: 160
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                color: "#95c3ff"
                text: qsTr("Movie5")
                anchors.left: tm5.right
                anchors.leftMargin: 290
                font.pixelSize: 30
                font.family: "Tahoma"}}
        Row{
            id: row5
            x:115
            width: 875
            height: 50
            anchors.top: row4.bottom
            anchors.topMargin: 30
            visible: true
            Text {
                id:dt6
                color: "#95c3ff"
                text: qsTr("date6")
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                id:tm6
                color: "#95c3ff"
                text: qsTr("Time6")
                anchors.left: dt6.right
                anchors.leftMargin: 160
                font.pixelSize: 30
                font.family: "Tahoma"}
            Text {
                color: "#95c3ff"
                text: qsTr("Movie6")
                anchors.left: tm6.right
                anchors.leftMargin: 290
                font.pixelSize: 30
                font.family: "Tahoma"}}
    }
    Text {
        id: schedulee
        x: 209
        y: 128
        color: "#ffffff"
        text: qsTr("Schedule")
        font.bold: true
        font.family: "Tahoma"
        font.pixelSize: 70}
    Image {
        id: image
        x: 131
        y: 148
        width: 72
        height: 64
        fillMode: Image.PreserveAspectFit
        source: "poto/calendar 1.png"}
}

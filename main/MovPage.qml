import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.14


Item {
    width: 1240
    height: 843

    Image {
        id: image
        x: 985
        y: 44
        width: 150
        height: 133
        source: "poto/iconmonstr-video-8 1.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image1
        x: 813
        y: 72
        width: 171
        height: 107
        source: "poto/Untitled-1.png"
        fillMode: Image.PreserveAspectFit
    }
    ListView{
        x: 80
        y: 214
        width: 1080
        height: 600
        model:modelitem
    delegate: delegate
    orientation: ListView.Horizontal
    clip: true
    spacing: 80
    highlightRangeMode: ListView.StrictlyEnforceRange
    Component.onCompleted: currentIndex = 0
    preferredHighlightBegin: 0
    preferredHighlightEnd: width

    }

    ListModel{
    id : modelitem
            ListElement{impat:"poto/a-quiet-place-2_poster_goldposter_com_1 1.png"
                judull:"A Quiet Place"
                kett:"Horror/Sci-fi Movie"}
            ListElement{impat:"poto/birds-of-prey-and-the-fantabulous-emancipation-of-one-harley-quinn_poster_goldposter_com_1 1.png"
                judull:"Birds of Prey"
                kett:"Action/Adventure/ <br> Superhero/Crime Movie"}
            ListElement{impat:"poto/the-voyage-of-doctor-dolittle_poster_goldposter_com_1 1.png"
                judull:"Dolittle"
                kett:"Family/Comedy/Fantasy/<br>Adventure/Action Movie"}
            ListElement{impat:"poto/helloworld.jpg"
                judull:"Hello World"
                kett:"Animation<br>Sci-fi/Drama Movie"}
            ListElement{impat:"poto/spidermen.jpg"
                judull:"Spiderman"
                kett:"Animation<br>Comedy/Adventure/Sci-fi Movie"}
            ListElement{impat:"poto/fantasticbeast.jpg"
                judull:"Fantastic Beast 2"
                kett:"Fantasy/Adventure/Family movie"}
    }


    Component{
        id:delegate
        Rectangle{
            x: 212
            y: 19
            width: 280
            height: 540
            color:"black"
            radius: 20
            Image {
                id: imagepat
                source: impat
                width: parent.width
                height: 320}
            Text {
                id : judul
                color: "#e2ff71"
                text: judull
                font.bold: true
                font.pixelSize: 30
                font.family: "Tahoma"
                y:325
                x:20}
            Text {
                id: ket
                color: "white"
                text: kett
                font.family: "Tahoma"
                font.pixelSize: 17
                y:375
                x:20}
            Rectangle{
                id:tombol
                x:160
                y:480
                width:100
                height:40
                color: "#e2ff71"
                radius:20
                Text {
                    text: qsTr("Book")
                    anchors.centerIn: parent
                    font.bold: true
                    font.family: "Tahoma"
                    font.pixelSize: 17}
                MouseArea{
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {console.log("booked");stackView.replace("SeatPage.qml")}
                }
            }
            scale: parent.ListView.isCurrentItem ? 1.5 : 1
            Behavior on scale { NumberAnimation { duration: 200 }}
       }
}

}



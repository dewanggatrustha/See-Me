import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.12

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 1500
    height: 843
    maximumHeight: 843
    maximumWidth: 1500
    title: qsTr("SeeMe!")

    Image {
        id: background
        visible: true
        source: "poto/Desktop - 5.png"

        Column {
            id: column
            x: 0
            y: 0
            width: 260
            height: 843

            Rectangle{
                id :kotak
                y: 0
                x: 0
                width: parent.width
                height: parent.height
                color: "#000000"
                Image {
                    id: seeme
                    x: 16
                    y: 56
                    width: 115
                    height: 103
                    source: "poto/film-roll 1.png" }
                Image {
                    id: seemetext
                    x: 145
                    y: 81
                    width: 82
                    height: 81
                    source: "poto/SEE ME!.png"}

                ListView{
                    id:sidebar
                    width: 260
                    height: 300
                    x:0
                    y:240
                    model:listmodel
                    delegate: listdelegate
                    focus: true
                    highlight: highlightbar
                    highlightFollowsCurrentItem: true
                    currentIndex: -1
                    onCurrentItemChanged: console.log(model.get(sidebar.currentIndex).name + ' selected')
                }

                ListModel{
                    id:listmodel
                    ListElement{imagepath:"poto/vc.png"; name:"Movie"; source:"MovPage.qml"}
                    ListElement{imagepath:"poto/Vector.png"; name:"Schedule"; source:"SchedPage.qml"}
                    ListElement{imagepath:"poto/euro1.png"; name:"Payment"}
                    ListElement{imagepath:"poto/iconmonstr-user-29 1.png"; name:"About Us"}
                }

                Component{
                    id:listdelegate
                    Item {
                        id:itemDelegate
                        width: 256
                        height: 75
                        Row{
                           id:row1
                            width:206
                            anchors.left: parent.left
                            anchors.leftMargin: 10
                            Column{
                                width:parent.width
                                anchors.left: row2.right
                                anchors.top: parent.top
                                anchors.topMargin: 20
                                Text {
                                    color: itemDelegate.ListView.isCurrentItem ? "#E2FF71" : "white"
                                    text: name
                                    font.bold: true
                                    font.pixelSize: 20
                                    font.family: "Tahoma"}
                            }
                            Column{
                                id:row2
                                width: 50
                                anchors.left: parent.left
                                anchors.leftMargin: 20
                                anchors.top: parent.top
                                anchors.topMargin: 20
                                Image {
                                    id: imageitem
                                    height: 30
                                    width: 35
                                    smooth: true
                                    visible: false
                                    source: imagepath}
                                ColorOverlay{
                                    anchors.fill: imageitem
                                    source: imageitem
                                    color: itemDelegate.ListView.isCurrentItem ? "#E2FF71" : "white"}
                            }
                            }
                        MouseArea{
                            cursorShape: Qt.PointingHandCursor
                            anchors.fill: parent
                            onClicked: {sidebar.currentIndex = index
                                        stackView.replace(model.source)} }
                    }
                }

                Component{
                    id: highlightbar
                    Rectangle {
                                  width: 260; height: 40
                                  color: "black"
                                  y: listView.currentItem.y;
                                  x: listView.currentItem.x-3;
                                  Behavior on y { PropertyAnimation {} }

                                  Rectangle{
                                      width: 4; height:30
                                      color: "#E2FF71"
                                      x : 256;
                                      y :17;
                                  }
                              }
                }


                Button{
                    x: 58
                    y: 583
                    width: 111
                    height: 114
                    onHoveredChanged: hovered ? icon.opacity = 0.8 :
                                                icon.opacity = 1;
                    background: Rectangle{
                        color: "black" }
                    MouseArea{
                        id: mquit
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                        onClicked: Qt.quit()  }
                    Image {
                        id: icon
                        x: 23
                        y: 16
                        width: 71
                        height: 83
                        source: "poto/log out.png"}
                }
            }
        }

        Column {
            id: column1
            x: 260
            y: 0
            width: 1240
            height: 843

            StackView {
                id: stackView
                width: parent.width
                height: parent.height
                initialItem: MovPage{}
                replaceEnter: Transition {
                   PropertyAnimation{
                   property: "opacity"
                   from: 0
                   to: 1
                   duration: 300}}
                replaceExit: Transition {
                    PropertyAnimation{
                    property: "opacity"
                    from:1
                    to:0
                    duration: 200}}
            }
        }


    }
    }





/*##^##
Designer {
    D{i:29;anchors_height:200}
}
##^##*/

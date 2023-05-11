
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import Bug_Tracker
import QtQuick.Layouts 6.3

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    visible: true
    color: "#060606"
    property int indexTab: 0

    Rectangle {
        id: rectangle1
        x: 23
        y: 73
        width: 208
        height: 303
        visible: true
        color: "#333333"

        Column {
            id: column
            x: 0
            y: 6
            width: 208
            height: 297
            leftPadding: 10
            spacing: 120

            Text {
                id: tByporty
                color: "#5fb6ff"
                text: qsTr("By Pority :")
                font.pixelSize: 20
                font.bold: true

                Row {
                    id: row
                    x: 0
                    y: 37
                    width: 191
                    height: 20
                    leftPadding: 10
                    spacing: 100

                    Text {
                        id: text3
                        color: "#ffffff"
                        text: qsTr("Low")
                        font.pixelSize: 15
                    }

                    Text {
                        id: text1
                        color: "#ffffff"
                        text: qsTr("Text")
                        font.pixelSize: 15
                        font.bold: true
                    }
                }

                Row {
                    id: row1
                    x: -1
                    y: 71
                    width: 191
                    height: 20
                    leftPadding: 10
                    spacing: 72
                    Text {
                        color: "#ffffff"
                        text: qsTr("Medium")
                        font.pixelSize: 15
                    }

                    Text {
                        id: text2
                        color: "#ffffff"
                        text: qsTr("Text")
                        font.pixelSize: 15
                        font.bold: true
                    }
                }

                Row {
                    id: row2
                    x: 0
                    y: 106
                    width: 191
                    height: 20
                    leftPadding: 10
                    spacing: 96
                    Text {
                        color: "#ffffff"
                        text: qsTr("High")
                        font.pixelSize: 15
                    }

                    Text {
                        color: "#ffffff"
                        text: qsTr("Text")
                        font.pixelSize: 15
                        font.bold: true
                    }
                }
            }

            Text {
                id: tByStatus
                color: "#5fb6ff"
                text: qsTr("By Status :")
                font.pixelSize: 20
                font.bold: true

                Row {
                    id: row3
                    x: -7
                    y: 36
                    width: 192
                    height: 20
                    leftPadding: 10
                    spacing: 100
                    Text {
                        color: "#ffffff"
                        text: qsTr("Ready")
                        font.pixelSize: 15
                    }

                    Text {
                        color: "#ffffff"
                        text: qsTr("Text")
                        font.pixelSize: 15
                        font.bold: true
                    }
                }

                Row {
                    id: row4
                    x: -7
                    y: 72
                    width: 192
                    height: 20
                    leftPadding: 10
                    spacing: 66
                    Text {
                        color: "#ffffff"
                        text: qsTr("In Progress")
                        font.pixelSize: 15
                    }

                    Text {
                        color: "#ffffff"
                        text: qsTr("Text")
                        font.pixelSize: 15
                        font.bold: true
                    }
                }

                Row {
                    id: row5
                    x: -7
                    y: 108
                    width: 192
                    height: 20
                    leftPadding: 10
                    spacing: 105
                    Text {
                        color: "#ffffff"
                        text: qsTr("Done")
                        font.pixelSize: 15
                    }

                    Text {
                        color: "#ffffff"
                        text: qsTr("t")
                        font.pixelSize: 15
                        font.bold: true
                    }
                }
            }
        }
    }

    TabBar {
        id: tabBar
        x: 0
        y: 0
        width: 800
        height: 48

        TabButton {
            id: tabOverview
            x: 0
            y: 4
            width: 108
            height: 43
            text: qsTr("Overview")
            icon.color: "#5fb6ff"

            Connections {
                target: tabOverview
                onClicked: rectangle1.visible = true
            }
        }

        TabButton {
            id: bugList
            x: 109
            y: 0
            width: 108
            height: 43
            text: qsTr("Bug List")

            Connections {
                target: bugList
                onClicked: rectangle1.visible = false
            }
        }
    }

    Connections {
        target: rectangle
        onPaletteCreated: console.log("rectangle.paletteCreated")
    }
    states: [
        State {
            name: "clicked"
            when: button.checked
        }
    ]
}

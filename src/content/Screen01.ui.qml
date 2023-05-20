
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

    Material.accent: Material.LightBlue

    property int indexTab: 0

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

            Connections {
                target: tabOverview
                onClicked: indexTab = 0
            }
        }

        TabButton {
            id: bugList
            x: 108
            y: 4
            width: 108
            height: 43
            text: qsTr("Bug List")

            Connections {
                target: bugList
                onClicked: indexTab = 1
            }
        }
    }

    Rectangle {
        id: recOverview
        x: 8
        y: 54
        width: 750
        height: 331
        visible: true
        color: "#060606"

        Rectangle {
            id: rectangleCount
            x: 9
            y: 14
            width: 208
            height: 303
            visible: true
            color: "#333333"
            radius: 12

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
                        id: lowRow
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
                        id: mediumRow
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
                        id: highRow
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
    }

    Rectangle {
        id: recBuglist
        x: 25
        y: -357
        width: 750
        height: 330

        Rectangle {
            id: bugDialog
            x: 36
            y: 57
            width: 686
            height: 105
            color: "#333333"
            radius: 12
            visible: true

            Row {
                id: row
                x: 7
                y: 7
                width: 695
                height: 42
                spacing: 14

                TextInput {
                    id: textInput
                    width: 500
                    height: 40
                    color: "#ffffff"
                    text: qsTr("Bug ...")
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                }

                Button {
                    id: button
                    text: qsTr("Button")
                }

                Button {
                    id: button1
                    text: qsTr("Button")
                }
            }

            RadioButton {
                id: radioButton
                x: 76
                y: 52
                text: qsTr("Low")
            }

            RadioButton {
                id: radioButton1
                x: 152
                y: 52
                text: qsTr("Medium")
            }

            RadioButton {
                id: radioButton2
                x: 253
                y: 52
                text: qsTr("High")
            }

            Text {
                id: text4
                x: 12
                y: 63
                width: 62
                height: 28
                color: "#ffffff"
                text: qsTr("Pority :")
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
            }
        }

        Button {
            id: button2
            x: 658
            y: 0
            width: 84
            height: 51
            text: qsTr("+")
            font.bold: true
            font.pointSize: 20

            Connections {
                target: button2
                onClicked: bugDialog.visible = true
            }
        }
    }

    states: [

        State {
            name: "State1"
            when: indexTab == 1

            PropertyChanges {
                target: rectangle
                visible: true
            }

            PropertyChanges {
                target: recOverview
                x: 8
                y: 413
            }

            PropertyChanges {
                target: recBuglist
                x: 20
                y: 54
            }
        },

        State {
            name: "clicked"
            when: button.checked
        }
    ]
}

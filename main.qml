import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

Window {
    id: w

    minimumWidth: 600
    maximumWidth: 600
    width: 600

    height: 768
    minimumHeight: cl.height
    maximumHeight: cl.height

    visible: true
    title: qsTr("Simon")

    ColumnLayout {
        id: cl

        Gameplay{
            id: gameplay
        }

        Game{
            id:game
        }

        Toolbar{
            id: toolbar

            onNewGame: game.path()

            onQuitApp: Qt.quit()
        }
    }

    Dialog {
        id: dialog_win

        visible: false

        contentItem: Rectangle {
            color: "lightskyblue"
            implicitWidth: 400
            implicitHeight: 100
            Text {
                text: "Победа!"
                color: "navy"
                anchors.centerIn: parent
            }
        }
    }

    Dialog {
        id: dialog_losing

        visible: false

        contentItem: Rectangle {
            color: "lightskyblue"
            implicitWidth: 400
            implicitHeight: 100
            Text {
                text: "Неверно! Вы проиграли"
                color: "navy"
                anchors.centerIn: parent
            }
        }
    }
}

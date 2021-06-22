import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick 2.0



RowLayout{
    signal newGame()
    signal quitApp()

    Button{
        id: newGameButton

        text: "Новая игра!"
        onClicked: newGame()
    }

    TextField{
        id: timerField
        Layout.fillWidth: true
    }

    Button{
        id: quitButton

        text: "Выход"
        onClicked: quitApp()
    }
}

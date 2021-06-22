import QtQuick 2.0

Item {
    property int levels : 10
    property int count : 0   // кол-во элементов
    property int number: 0   // номер нужного квадратика
    property int take: -1 // если > -1, значит пользователь ввел переменную
    property int user: -1 // если -1 не реагировать на нажатие
    property var tabs: 0

    // создание случайной последовательности
    function path(){
        tabs = helper.newGame()
        number = 0
        count = 0
        newGame()
    }

    // демонстрация последовательности
    function newGame() {
        gameplay.on(tabs[number])

        if (number == count) {
            user = 0
        }
        else
        {
            number++
            timer2.restart()
        }
    }

    property int count_ch: -1

    // проверка последовательности, введеной пользователем
    function check(rec){

        if (rec === tabs[count_ch+1]){
            count_ch++
        }
        else
            dialog_losing.visible = true

        if (count_ch === count){
            count_ch = -1
            number = 0
            count++
            user = -1
            timer2.x = 5
            timer2.restart()
        }
    }

    Timer {
        id:timer2
        interval: 200; running: false; repeat: true
        property int x: 2

        onTriggered: {
            if (x == 0) {
                running: stop()
                x = 3
                if (count < levels) {
                    newGame()
                }
                else
                    dialog_win.visible = true
            }

            x = x - 1
        }
    }
}

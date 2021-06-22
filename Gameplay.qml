import QtQuick 2.0
import QtQuick.Layouts 1.12


GridLayout {
    id: gl

    width: 600
    height: 600

    columns: 2
    rows: 2

    columnSpacing: 0
    rowSpacing: 0

    Rectangle {
        id: rec0
        width: 300
        height: 200
        property bool light0: false
        color: light0 ? "light green" : "green"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                on(0)
                if (game.user === 0)
                    game.check(0)
            }
        }
    }

    Rectangle {
        id: rec1
        width: 300
        height: 200
        property bool light1: false
        color: light1 ? "pink" : "red"

        MouseArea {
            anchors.fill: parent
            onClicked:{
                on(1)
                if (game.user === 0)
                    game.check(1)
            }
        }
    }

    Rectangle {
        id: rec2
        width: 300
        height: 200
        property bool light2: false
        color: light2 ? "light blue" : "blue"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                on(2)
                if (game.user === 0)
                    game.check(2)
            }
        }
    }

    Rectangle {
        id: rec3
        width: 300
        height: 200
        property bool light3: false
        color: light3 ? "light yellow" : "yellow"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                on(3)
                if (game.user === 0)
                    game.check(3)
            }
        }
    }

    function on(i){
        if(i === 0){
            rec0.light0 = true
            timer.restart()

        }

        if(i === 1) {
            rec1.light1 = true
            timer.restart()
        }

        if(i === 2){
            rec2.light2 = true
            timer.restart()
        }

        if(i === 3){
            rec3.light3 = true
            timer.restart()
        }
    }

    function off(){
        if(rec0.light0 === true)
            rec0.light0 = false

        if(rec1.light1 === true)
            rec1.light1 = false

        if(rec2.light2 === true)
            rec2.light2 = false

        if(rec3.light3 === true)
            rec3.light3 = false
    }

    Timer {
        id:timer
        interval: 150; running: false; repeat: true
        property int x: 1

        onTriggered: {
            if (x == 0) {
                running: stop()
                off()
                x = 2
            }
            x = x-1
        }
    }
}

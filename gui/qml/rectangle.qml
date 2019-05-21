import QtQuick 2.0

Rectangle {
    id: root
    width: 480
    height: 320
    color: "#D8D8D8"

    Image {
        id: mavin
        x: (parent.width - width)/2
        y: 40
        width: root.width
        height: root.height
        source: "../assets/mavin.jpg"
    }

    Text {
        y: 20
        width: root.width
        horizontalAlignment: Text.AlignHCenter
        text: qsTr("Mavin")
    }
}

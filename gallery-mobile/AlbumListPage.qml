import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0

Page {
    header: ToolBar {
        Label {
            Layout.fillWidth: true
            text: "Albums"
            font.pointSize: 30
        }
    }

    ListView {
        id: albumList
        model: albumModel
        spacing: 5
        anchors.fill: parent

        delegate: Rectangle{
            width: parent.width
            height: 120
            color: "#d0d1d2"

            Text{
                text: name
                font.pointSize: 16
                color: "#000000"
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
}

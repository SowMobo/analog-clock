/*************************************************************************
 *
 * Copyright (c) 2013-2019, Klaralvdalens Datakonsult AB (KDAB)
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/
import QtQuick 2.0

Item {
    width: 400
    height: 200

    TextInput {
        id: textId
        text: qsTr("Qt Quick")
        font.family: "Helvetica"; font.pixelSize: 50
        x:50; y:25
    }

    Rectangle {
        x: 50
        y: 60
        z:-1
        width: textId.width
        height: 5
        color: "green"
    }
}

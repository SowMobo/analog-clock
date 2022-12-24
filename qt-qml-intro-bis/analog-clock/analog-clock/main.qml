import QtQuick

Window {
    id : root
    color: "lightgrey"
    width: 500
    height: 500
    visible: true

    Item {
        property int _minSide: Math.min(root.width, root.height)

        x: 10 + (root.width - _minSide)/2
        y: 10 + (root.height - _minSide)/2

        width: _minSide - 20
        height: _minSide - 20

        scale: Math.min(width / background.sourceSize.width, height / background.sourceSize.height)
        transformOrigin: Item.TopLeft

        Image {
            id: background
            source: "images/background.png"
        }

        Image {
            id: smallArm
            source: "images/smallArm.png"
            x: background.width/2 - width/2
            y: background.height/2 - 458 // 458 is the anchor point of the arm, measured in the file itself

            transform: Rotation {
                origin.x: smallArm.width/2
                origin.y: 458

                RotationAnimation on angle {
                    from: 0
                    to: 360
                    duration: 12*60*60000 // time unit is millisecond so 60*60*60'000 is 1h
                    loops: Animation.Infinite
                }
            }
        }

        Image {
            // indicate hour
            id: mediumArm
            source: "images/mediumArm.png"
            x: background.width/2 - width/2
            y: background.height/2 -914 // 914 is the anchor point of the arm, measured in the file itself

            transform: Rotation {
                origin.x: mediumArm.width/2
                origin.y: 914

                RotationAnimation on angle {
                    from: 0
                    to: 360 // 2 round tours in the day
                    duration: 60*60000 // 1h
                    loops: Animation.Infinite
                }
            }
        }

        Image {
            id: largeArm
            source: "images/largeArm.png"
            x: background.width/2 - width/2
            y: background.height/2 - 1255 // 1255 is the anchor point of the arm measured in the file itself

            transform: Rotation {
                origin.x: largeArm.width/2
                origin.y: 1255

                RotationAnimation on angle {
                    from: 0
                    to: 360
                    duration: 60000 // 60'000 ms = 1min
                    loops: Animation.Infinite
                }
            }
        }
    }
}

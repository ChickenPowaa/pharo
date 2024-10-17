| space square randomColor positionX positionY squareSize lightEffect circle|

space := BlSpace new.

positionY := 0.

1 to: 10 do: [:row |
    positionX := 0.
    1 to: 10 do: [:col |
        randomColor := Color
            r: (Random new next)
            g: (Random new next)
            b: (Random new next).
        square := BlElement new
            geometry: BlRectangleGeometry new;
            size: 50 @ 50;
            background: randomColor;
            yourself.
        square position: positionX @ positionY.
        circle := BlElement new
				geometry: BlCircleGeometry new;
            size: ((50) // 2) @ (50 // 2);
            background: Color white;
				outskirts: BlOutskirts centered;
            effect: (BlGaussianShadowEffect color: Color yellow offset: 0 @ 0 width: 10).
        circle position: 12.5 @ 12.5.
        square addChild: circle.
        space root addChild: square.
        positionX := positionX + 50.
    ].
    positionY := positionY + 50.
].

space show.



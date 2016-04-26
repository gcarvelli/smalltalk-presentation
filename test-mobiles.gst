
Object subclass: #PrintHelper.
PrintHelper extend [
    | cr lf |
    <comment: 'This class helps print things without messing with streams.'>

    PrintHelper class [
        new [
            | ph |
            <category: 'instance creation'>
            ph := super new.
            ph init.
            ^ph
        ]
    ]

    init [
        cr := Character cr.
        lf := Character lf
    ]
    newline [
        cr displayOn: stdout. lf displayOn: stdout
    ]
]

ph := PrintHelper new.

b1 := Ball newWithName: 'b1' cordLength: 10 weight: 50.
b2 := Ball newWithName: 'b2' cordLength: 20 weight: 20.
b3 := Ball newWithName: 'b3' cordLength: 50 weight: 10.
b4 := Ball newWithName: 'b4' cordLength: 10 weight: 50.
b5 := Ball newWithName: 'b5' cordLength: 10 weight: 50.
b6 := Ball newWithName: 'b6' cordLength: 10 weight: 50.

s1 := Strut newWithName: 's1' cordLength: 50 leftSide: 10 rightSide: 20 leftMobile: b1 rightMobile: b2.
s2 := Strut newWithName: 's2' cordLength: 50 leftSide: 50 rightSide: 20 leftMobile: b3 rightMobile: s1.
s3 := Strut newWithName: 's3' cordLength: 50 leftSide: 20 rightSide: 20 leftMobile: b4 rightMobile: b5.
s4 := Strut newWithName: 's4' cordLength: 50 leftSide: 10 rightSide: 20 leftMobile: s3 rightMobile: b6.

b1 printNl.
b1 getHeight displayOn: stdout.
s4 printNl.
s4 getWeight displayOn: stdout.
ph newline.

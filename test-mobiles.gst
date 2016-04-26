
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

b1 printNl.
b1 getHeight displayOn: stdout.
ph newline.

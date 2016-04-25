
Object subclass: #PrintHelper.
PrintHelper extend [
    | cr lf |
    <comment: 'This class helps print things without messing with streams'>

    init [
        cr := Character cr.
        lf := Character lf
    ]
    newline [
        cr displayOn: stdout. lf displayOn: stdout
    ]
]
PrintHelper class extend [
    new [
        | r |
        <category: 'instance creation'>
        r := super new.
        r init.
        ^r
    ]
]

ph := PrintHelper new.

b := Ball new.
b printNl.
b getWeight displayOn: stdout.
ph newline.

'hi there' displayOn: stdout.
ph newline.

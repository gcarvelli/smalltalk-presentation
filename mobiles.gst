
Object subclass: #Mobile.
Mobile extend [
    | cordlength |
    <comment: 'This is a rotating mobile.'>

    init [
       <category: 'initialization'>
       cordlength := 0
    ]
    getWeight [
        self subclassResponsibility
    ]
    getHeight [
        self subclassResponsibility
    ]
    isBalanced [
        self subclassResponsibility
    ]
]

"Class method constructor"
Mobile class extend [
    new [
        | r |
        <category: 'instance creation'>
        r := super new.
        r init.
        ^r
    ]
]

Mobile subclass: #Ball.
Ball extend [
    | weight |
    <comment: 'This is a ball.'>

    init [
        weight := 0
    ]
    getWeight [
        ^weight
    ]
    getHeight [
        ^(weight + cordlength)
    ]
    isBalanced [
        ^true
    ]
    printOn: stream [
        <category: 'printing'>
        stream nextPutAll: 'Ball with weight '.
        weight printOn: stream
    ]
]

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

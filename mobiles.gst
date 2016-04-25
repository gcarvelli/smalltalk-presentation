
Object subclass: #Mobile.
Mobile extend [
    | cordlength |
    <comment: 'This is a rotating mobile.'>

    Mobile class [
        new [
            | m |
            <category: 'instance creation'>
            m := super new.
            ^m
        ]
    ]

    initWithCordLength: cl [
       <category: 'initialization'>
       cordlength := cl
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

Mobile subclass: #Ball.
Ball extend [
    | weight |
    <comment: 'This is a ball.'>

    Ball class [
        newWithCordLength: cl weight: w [
            | b |
            <category: 'instance creation'>
            b := super new.
            b initWithCordLength: cl weight: w.
            ^b
        ]
    ]

    initWithCordLength: cl weight: w [
        <category: 'initialization'>
        weight := w.
        ^super initWithCordLength: cl
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
        stream nextPutAll: 'Ball. cl:'.
        cordlength printOn: stream.
        stream nextPutAll: ' w:'.
        weight printOn:stream
    ]
]

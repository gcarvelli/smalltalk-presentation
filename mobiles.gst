
Object subclass: #Mobile.
Mobile extend [
    | name cordLength |
    <comment: 'This is a rotating mobile.'>

    Mobile class [
        new [
            | m |
            <category: 'instance creation'>
            m := super new.
            ^m
        ]
    ]

    initWithName: n cordLength: cl [
       <category: 'initialization'>
       name := n.
       cordLength := cl
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
        newWithName: n cordLength: cl weight: w [
            | b |
            <category: 'instance creation'>
            b := super new.
            b initWithName: n cordLength: cl weight: w.
            ^b
        ]
    ]

    initWithName: n cordLength: cl weight: w [
        <category: 'initialization'>
        weight := w.
        ^super initWithName: n cordLength: cl
    ]
    getWeight [
        ^weight
    ]
    getHeight [
        ^(weight + cordLength)
    ]
    isBalanced [
        ^true
    ]
    printOn: stream [
        <category: 'printing'>
        stream nextPutAll: 'name:'.
        name displayOn: stream.
        stream nextPutAll: ' cl:'.
        cordLength printOn: stream.
        stream nextPutAll: ' w:'.
        weight printOn: stream
    ]
]


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
    getWidth [
        ^weight
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

Mobile subclass: #Strut.
Strut extend [
    | leftSide rightSide leftMobile rightMobile |
    <comment: 'This is a mobile.'>

    Strut class [
        newWithName: n cordLength: cl leftSide: ls rightSide: rs leftMobile: lm rightMobile: rm [
            | s |
            <category: 'instance creation'>
            s := super new.
            s initWithName: n cordLength: cl leftSide: ls rightSide: rs leftMobile: lm rightMobile: rm.
            ^s
        ]
    ]

    initWithName: n cordLength: cl leftSide: ls rightSide: rs leftMobile: lm rightMobile: rm [
        <category: 'initialization'>
        leftSide := ls.
        rightSide := rs.
        leftMobile := lm.
        rightMobile := rm.
        ^super initWithName: n cordLength: cl
    ]
    getWeight [
        ^(leftMobile getWeight + rightMobile getWeight)
    ]
    getHeight [
        ^0
    ]
    getWidth [
        ^0
    ]
    isBalanced [
        ^false
    ]
    printOn: stream [
        <category: 'printing'>
        stream nextPutAll: 'name:'.
        name displayOn: stream.
        stream nextPutAll: ' cl:'.
        cordLength printOn: stream.
    ]
]

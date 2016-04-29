
Object subclass: #Person.
Person extend [
    | name age |
    <comment: 'I am a person, I do things'>

    Person class [
        newWithName: n age: a [
            | p |
            <category: 'instance creation'>
            p := super new.
            p initWithName: n age: a.
            ^p
        ]
    ]
    initWithName: n age: a [
        name := n.
        age := a
    ]
    getName [
        ^name
    ]
]

p := Person newWithName: 'Stephen Kim' age: '20'

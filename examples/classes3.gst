
Object subclass: #Person.
Person extend [
    | name age |
    <comment: 'I am a person, I do things'>
    getName [
        ^name
    ]
    setName: n [
        name := n
    ]
]

p := Person new


" If statements "
x := 5.
(x > 0)
    ifTrue: [ 'positive!' printOn: stdout ]
    ifFalse: [ '0 or negative!' printOn: stdout ].

Transcript cr.
Transcript cr.


lst := #(1 2 3 4).
lst do: [ :i |
    x := i
].

y := x "y will have value 4"

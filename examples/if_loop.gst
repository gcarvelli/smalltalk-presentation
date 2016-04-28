
" If statements "
x := 5.
(x > 0)
    ifTrue: [ 'positive!' printOn: stdout ]
    ifFalse: [ '0 or negative!' printOn: stdout ].

Transcript cr.
Transcript cr.


" Loops and Lambdas "
lst := #(1 2 3 4).
lst do: [ :i |
    i printOn: stdout.
    Transcript cr.
].

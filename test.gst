
Object subclass: #Account.
Account instanceVariableNames: 'balance'.
Account comment: 'I am an account class'.

Account class extend [
     new [
          | r |
          <category: 'instance creation'>
          r := super new.
          r init.
          ^r
     ]
]

Account extend [
     init [
         <category: 'initialization'>
         balance := 0
     ]
 ]

 Account extend [
   printOn: stream [
       <category: 'printing'>
       super printOn: stream.
       stream nextPutAll: ' with balance: '.
       balance printOn: stream
   ]
]

Account extend [
   spend: amount [
       <category: 'moving money'>
       balance := balance - amount
   ]
   deposit: amount [
       <category: 'moving money'>
       balance := balance + amount
   ]
]

Account subclass: Savings [
   | interest |
   init [
         <category: 'initialization'>
         interest := 0.
         ^super init
     ]
     interest: amount [
            interest := interest + amount.
            self deposit: amount
        ]
        clearInterest [
            | oldinterest |
            oldinterest := interest.
            interest := 0.
            ^oldinterest
        ]

]

Account subclass: Checking [
     | checknum checksleft |
     init [
         <category: 'initialization'>
         checksleft := 0.
         ^super init
     ]
     newChecks: number count: checkcount [
         <category: 'spending'>
         checknum := number.
         checksleft := checkcount
     ]

     writeCheck: amount [
         <category: 'spending'>
         | num |
         num := checknum.
         checknum := checknum + 1.
         checksleft := checksleft - 1.
         self spend: amount.
         ^ num
     ]
]

Checking extend [
      writeCheck: amount [
         | num |

         (checksleft < 1)
             ifTrue: [ ^self error: 'Out of checks' ].
         num := checknum.
         checknum := checknum + 1.
         checksleft := checksleft - 1.
         self spend: amount.
         ^ num
     ]
  ]

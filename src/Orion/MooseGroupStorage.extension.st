Extension { #name : 'MooseGroupStorage' }

{ #category : '*Orion' }
MooseGroupStorage >> atID: anInteger ifAbsent: exceptionBlock [

	^self
		detect: [:each | anInteger == each mooseID]
		ifNone: [ exceptionBlock value ]
]

{ #category : '*Orion' }
MooseGroupStorage >> isOrion [

	^false
]

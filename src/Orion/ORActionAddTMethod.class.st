Class {
	#name : 'ORActionAddTMethod',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'parentType',
		'signature',
		'declaredType',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTMethod >> accesses [ ^accesses
]

{ #category : 'accessing' }
ORActionAddTMethod >> accesses: aValue [ accesses := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTMethod >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> implicitVariables [ ^implicitVariables
]

{ #category : 'accessing' }
ORActionAddTMethod >> implicitVariables: aValue [ implicitVariables := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> incomingInvocations [ ^incomingInvocations
]

{ #category : 'accessing' }
ORActionAddTMethod >> incomingInvocations: aValue [ incomingInvocations := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTMethod >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> localVariables [ ^localVariables
]

{ #category : 'accessing' }
ORActionAddTMethod >> localVariables: aValue [ localVariables := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> name [ ^name
]

{ #category : 'accessing' }
ORActionAddTMethod >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> outgoingInvocations [ ^outgoingInvocations
]

{ #category : 'accessing' }
ORActionAddTMethod >> outgoingInvocations: aValue [ outgoingInvocations := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> outgoingReferences [ ^outgoingReferences
]

{ #category : 'accessing' }
ORActionAddTMethod >> outgoingReferences: aValue [ outgoingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> parameters [ ^parameters
]

{ #category : 'accessing' }
ORActionAddTMethod >> parameters: aValue [ parameters := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionAddTMethod >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionAddTMethod >> run [

	| newEntity |
	newEntity := self orionModel newMethod.

	self setFamixProperty: #parentType on: newEntity to: self parentType. self setFamixProperty: #signature on: newEntity to: self signature. self setFamixProperty: #declaredType on: newEntity to: self declaredType. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTMethod >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionAddTMethod >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTMethod >> sourceAnchor: aValue [ sourceAnchor := aValue
]

"
I add a FamixTUnknownVariable in a MooseModel
I need the following properties of the  unknownvariable

-`incomingAccesses`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionAddTUnknownVariable',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'incomingAccesses',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTUnknownVariable class >> createVersionnedEntitySelector [ ^ #newUnknownVariable
]

{ #category : 'method execution' }
ORActionAddTUnknownVariable class >> run [
	super run.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'method execution' }
ORActionAddTUnknownVariable >> createVersionnedEntitySelector [ ^ #newUnknownVariable
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionAddTUnknownVariable >> run [

	super run.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.

	^entity.
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]

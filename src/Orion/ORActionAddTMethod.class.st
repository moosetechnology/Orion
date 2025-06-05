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

{ #category : 'method execution' }
ORActionAddTMethod >> createVersionnedEntitySelector [

	^ #newMethod
]

{ #category : 'accessing' }
ORActionAddTMethod >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTMethod >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTMethod >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionAddTMethod >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionAddTMethod >> run [

	super run.

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

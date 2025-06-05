Class {
	#name : 'ORActionAddTLocalVariable',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'parentBehaviouralEntity',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTLocalVariable >> createVersionnedEntitySelector [

	^ #newLocalVariable
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionAddTLocalVariable >> run [

	super run.

	self setFamixProperty: #parentBehaviouralEntity on: newEntity to: self parentBehaviouralEntity. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #declaredType on: newEntity to: self declaredType.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]

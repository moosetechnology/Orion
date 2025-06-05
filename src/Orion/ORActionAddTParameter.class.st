Class {
	#name : 'ORActionAddTParameter',
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
ORActionAddTParameter >> createVersionnedEntitySelector [

	^ #newParameter
]

{ #category : 'accessing' }
ORActionAddTParameter >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTParameter >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTParameter >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTParameter >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTParameter >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionAddTParameter >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionAddTParameter >> run [

	super run.

	self setFamixProperty: #parentBehaviouralEntity on: newEntity to: self parentBehaviouralEntity. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #declaredType on: newEntity to: self declaredType.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTParameter >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTParameter >> sourceAnchor: aValue [ sourceAnchor := aValue
]

"
I remove a new FamixTParameter in a MooseModel
I need the following properties of the new parameter

-`parentBehaviouralEntity`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveTParameter',
	#superclass : 'ORActionRemoveNamedEntity',
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
ORActionRemoveTParameter >> createVersionnedEntitySelector [

	^ #newParameter
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveTParameter >> run [

	self setFamixProperty: #parentBehaviouralEntity on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil. self setFamixProperty: #declaredType on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> sourceAnchor: aValue [ sourceAnchor := aValue
]

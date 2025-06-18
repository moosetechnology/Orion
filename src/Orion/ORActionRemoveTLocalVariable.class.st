"
I remove a new FamixTLocalVariable in a MooseModel
I need the following properties of the new localvariable

-`parentBehaviouralEntity`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveTLocalVariable',
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
ORActionRemoveTLocalVariable >> createVersionnedEntitySelector [

	^ #newLocalVariable
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveTLocalVariable >> run [

	self setFamixProperty: #parentBehaviouralEntity on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil. self setFamixProperty: #declaredType on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]

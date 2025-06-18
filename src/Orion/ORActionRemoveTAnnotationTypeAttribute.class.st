"
I remove a new FamixTAnnotationTypeAttribute in a MooseModel
I need the following properties of the new annotationtypeattribute

-`parentType`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveTAnnotationTypeAttribute',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'parentType',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTAnnotationTypeAttribute >> createVersionnedEntitySelector [

	^ #newAnnotationTypeAttribute
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationTypeAttribute >> run [

	self setFamixProperty: #parentType on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil. self setFamixProperty: #declaredType on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]

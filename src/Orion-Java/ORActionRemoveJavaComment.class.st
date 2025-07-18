"
I remove a FamixJavaComment in a MooseModel
I need the following properties of the  comment

-`sourceAnchor`
-`commentedEntity`
"
Class {
	#name : 'ORActionRemoveJavaComment',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'sourceAnchor',
		'commentedEntity'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaComment >> commentedEntity [ ^commentedEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> commentedEntity: aValue [ commentedEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaComment >> run [

	super run.
	entity sourceAnchor: nil.
	entity commentedEntity: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]

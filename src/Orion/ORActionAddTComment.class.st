"
I add a FamixTComment in a MooseModel
I need the following properties of the  comment

-`commentedEntity`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTComment',
	#superclass : 'ORActionAdd',
	#instVars : [
		'commentedEntity',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTComment class >> run [
	super run.
	entity commentedEntity: self commentedEntity.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTComment >> commentedEntity [ ^commentedEntity
]

{ #category : 'accessing' }
ORActionAddTComment >> commentedEntity: aValue [ commentedEntity := aValue
]

{ #category : 'method execution' }
ORActionAddTComment >> run [

	super run.
	entity commentedEntity: self commentedEntity.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddTComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]

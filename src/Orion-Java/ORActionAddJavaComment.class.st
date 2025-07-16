"
I add a FamixJavaComment in a MooseModel
I need the following properties of the  comment

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`commentedEntity`
"
Class {
	#name : 'ORActionAddJavaComment',
	#superclass : 'ORActionAddJava',
	#instVars : [
		'sourceAnchor',
		'commentedEntity'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddJavaComment >> commentedEntity [ ^commentedEntity
]

{ #category : 'accessing' }
ORActionAddJavaComment >> commentedEntity: aValue [ commentedEntity := aValue
]

{ #category : 'method execution' }
ORActionAddJavaComment >> createVersionnedEntitySelector [

	^#newComment 
]

{ #category : 'method execution' }
ORActionAddJavaComment >> run [

	super run.
	entity sourceAnchor: self sourceAnchor.
	entity commentedEntity: self commentedEntity.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]

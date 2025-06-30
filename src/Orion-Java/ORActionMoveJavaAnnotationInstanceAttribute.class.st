"
I move a new FamixJavaAnnotationInstanceAttribute in a MooseModel
I need the following properties of the new annotationinstanceattribute

-`sourceAnchor`
"
Class {
	#name : 'ORActionMoveJavaAnnotationInstanceAttribute',
	#superclass : 'ORActionMoveTAnnotationInstanceAttribute',
	#instVars : [
		'sourceAnchor'
	],
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'method execution' }
ORActionMoveJavaAnnotationInstanceAttribute >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]

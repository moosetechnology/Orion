"
I remove a new FamixJavaAnnotationInstanceAttribute in a MooseModel
I need the following properties of the new annotationinstanceattribute

-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveJavaAnnotationInstanceAttribute',
	#superclass : 'ORActionRemoveTAnnotationInstanceAttribute',
	#instVars : [
		'sourceAnchor'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'method execution' }
ORActionRemoveJavaAnnotationInstanceAttribute >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]

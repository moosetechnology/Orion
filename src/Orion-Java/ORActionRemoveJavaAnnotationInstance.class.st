"
I remove a new FamixJavaAnnotationInstance in a MooseModel
I need the following properties of the new annotationinstance

-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveJavaAnnotationInstance',
	#superclass : 'ORActionRemoveTAnnotationInstance',
	#instVars : [
		'sourceAnchor'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'method execution' }
ORActionRemoveJavaAnnotationInstance >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> sourceAnchor: aValue [ sourceAnchor := aValue
]

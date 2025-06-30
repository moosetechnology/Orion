"
I move a new FamixJavaAnnotationInstance in a MooseModel
I need the following properties of the new annotationinstance

-`sourceAnchor`
"
Class {
	#name : 'ORActionMoveJavaAnnotationInstance',
	#superclass : 'ORActionMoveTAnnotationInstance',
	#instVars : [
		'sourceAnchor'
	],
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'method execution' }
ORActionMoveJavaAnnotationInstance >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> sourceAnchor: aValue [ sourceAnchor := aValue
]

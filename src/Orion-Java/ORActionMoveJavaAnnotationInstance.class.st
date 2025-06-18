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
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> sourceAnchor: aValue [ sourceAnchor := aValue
]

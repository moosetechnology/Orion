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
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]

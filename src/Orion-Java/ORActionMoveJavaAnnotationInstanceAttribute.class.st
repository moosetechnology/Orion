"
I move a new FamixJavaAnnotationInstanceAttribute in a MooseModel
I need the following properties of the new annotationinstanceattribute

-`sourceAnchor`
"
Class {
	#name : 'ORActionMoveJavaAnnotationInstanceAttribute',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTAnnotationInstanceAttribute .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> to: container [

	IllegalType check: container useTrait:  FamixTWithAttributes .

	super to: container
]

"
I move a FamixJavaAnnotationInstanceAttribute in a MooseModel
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

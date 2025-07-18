"
I move a FamixJavaAnnotationTypeAttribute in a MooseModel
"
Class {
	#name : 'ORActionMoveJavaAnnotationTypeAttribute',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTAnnotationTypeAttribute .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> to: container [

	IllegalType check: container useTrait:  FamixTWithAttributes .

	super to: container
]

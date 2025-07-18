"
I move a FamixJavaAnnotationType in a MooseModel
"
Class {
	#name : 'ORActionMoveJavaAnnotationType',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTAnnotationType .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> to: container [

	IllegalType check: container useTrait:  FamixTWithAnnotationTypes .

	super to: container
]

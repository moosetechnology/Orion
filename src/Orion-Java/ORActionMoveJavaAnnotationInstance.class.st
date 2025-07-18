"
I move a FamixJavaAnnotationInstance in a MooseModel
"
Class {
	#name : 'ORActionMoveJavaAnnotationInstance',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTAnnotationInstance .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> to: container [

	IllegalType check: container useTrait:  FamixTWithAnnotationInstances .

	super to: container
]

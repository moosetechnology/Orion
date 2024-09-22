Class {
	#name : 'ORActionMoveTMethod',
	#superclass : 'ORActionMove',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveTMethod >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTMethod.

	super entity: anEntity
]

{ #category : 'method execution' }
ORActionMoveTMethod >> run [

	| newEntity |
	newEntity := self setFamixProperty: #parentType on: self entity to: self to.

	newEntity resetMooseName.

	^ newEntity
]

{ #category : 'accessing' }
ORActionMoveTMethod >> to: container [

	IllegalType check: container useTrait:  FamixTWithMethods.

	super to: container
]

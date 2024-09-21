Class {
	#name : 'ORActionMoveTPackageable',
	#superclass : 'ORActionMove',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveTPackageable >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTPackageable.

	super entity: anEntity
]

{ #category : 'method execution' }
ORActionMoveTPackageable >> run [

	| newEntity |
	newEntity := self setFamixProperty: #parentPackage on: self entity to: self to.

	newEntity resetMooseName.

	^ newEntity
]

{ #category : 'accessing' }
ORActionMoveTPackageable >> to: newPackage [

	IllegalType check: newPackage useTrait:  FamixTPackage.

	super to: newPackage
]

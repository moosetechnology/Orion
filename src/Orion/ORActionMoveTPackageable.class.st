Class {
	#name : 'ORActionMoveTPackageable',
	#superclass : 'ORActionMove',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveTPackageable >> entity: anEntity [

	(anEntity usesFamixTrait: FamixTPackageable)
		ifFalse: [ IllegalType signal: 'Entity needs to be a FamixTPackageable' ].

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

	(newPackage usesFamixTrait: FamixTPackage)
		ifFalse: [ IllegalType signal: 'Destination needs to be a FamixTPackage' ].

	super to: newPackage
]

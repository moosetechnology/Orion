Class {
	#name : 'ORActionMoveTPackageable',
	#superclass : 'ORActionMove',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionMoveTPackageable >> run [

	| newEntity |
	newEntity := self setFamixProperty: #parentPackage on: self entity to: self to.

	newEntity resetMooseName.

	^ newEntity
]

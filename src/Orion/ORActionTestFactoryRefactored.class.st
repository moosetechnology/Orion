Class {
	#name : 'ORActionTestFactoryRefactored',
	#superclass : 'Object',
	#instVars : [
		'testMethodGenerators',
		'classBuilder'
	],
	#category : 'Orion-Code-Generation',
	#package : 'Orion',
	#tag : 'Code-Generation'
}

{ #category : 'class building' }
ORActionTestFactoryRefactored >> defaultValueForSlot: aSlot in: aClass [

	aSlot name = 'orionModel' ifTrue: [ ^ 'modelV2' ].
	aSlot name = 'name' ifTrue: [ ^ '''A_Test_Name''' ].
	aSlot name = 'isStub' ifTrue: [ ^ 'true' ].
	aSlot name = 'isAbstract' ifTrue: [ ^ 'false' ].
	aSlot name = 'isFinal' ifTrue: [ ^ 'false' ].
	^ 'nil'
]

{ #category : 'generating' }
ORActionTestFactoryRefactored >> generate [

	self initialize.
	self generateFrom: (PackageOrganizer default packageNamed: 'Orion-Java') classes.
]

{ #category : 'generating' }
ORActionTestFactoryRefactored >> generateFrom: aBase [

	aBase do: [ :e |
		self generateTestClassFor: e ]
]

{ #category : 'class building' }
ORActionTestFactoryRefactored >> generateSetUpSourceFor: aClass [

	| source |
	source := 'setUpAction ', String cr, String cr.
	source := String tab, source , 'action := ' , aClass name , ' new ', String cr.

	aClass slots
		do: [ :slot |
			source := String tab, source , slot name , ': '
			          , (self defaultValueForSlot: slot in: aClass ) , '; ', String cr. ].

	source := String tab, source , 'yourself.'.
	^ source
]

{ #category : 'initialization' }
ORActionTestFactoryRefactored >> initialize [

	super initialize.
	testMethodGenerators := {
		                       ORAddTestSourceGenerator new.
		                       "ORRemoveTestSourceGenerator new"
		                       "ORRenameTestSourceGenerator new."
		                       "ORMoveTestSourceGenerator new." }.
	classBuilder := ORClassBuilder new
]

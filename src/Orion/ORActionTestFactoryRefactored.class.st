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

{ #category : 'generating' }
ORActionTestFactoryRefactored >> buildMethodsIn: aClass with: aGenerator [

	| testMethodSource |
	
	"setUp method"
	aClass
		compile: (self generateSetUpSourceFor: aClass ).
	
	"test method"
	testMethodSource := aGenerator generateTestMethodsFor: aClass.
	testMethodSource do: [ :e | aClass compile: e ].


]

{ #category : 'as yet unclassified' }
ORActionTestFactoryRefactored >> createTestClassFor: aClass with: aGenerator [

	| actionType className superclassName |
	actionType := aGenerator actionType.
	className := aClass name, 'Test'.

	"Superclass defining"
	superclassName := ('ORAction' , actionType) asSymbol.
	((aClass allSlots collect: #name) includes: 'name') ifTrue: [
		superclassName := ('ORAction' , actionType , 'NamedEntity') asSymbol ].

	classBuilder
		name: className;
		superclass: ORActionTestJavaModel;
		slots: {};
		tag: 'Java-Model';
		package: 'Orion-Tests'.

	classBuilder build.
	^Smalltalk at: className asSymbol.
]

{ #category : 'class building' }
ORActionTestFactoryRefactored >> defaultValueForSlot: aSlot in: aClass [

	aSlot name = 'orionModel' ifTrue: [ ^ 'modelV2' ].
	aSlot name = 'name' ifTrue: [ ^ '''involvedEntity''' ].
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

	| source actionClass|
	actionClass := Smalltalk at: (aClass name copyFrom: 1 to: aClass name size -4) ifAbsent: [actionClass := aClass ].
	source := 'setUpAction ', String cr, String cr.
	source := String tab, source , 'action := ' , ((aClass name) copyFrom: 1 to: (aClass name size)-4) , ' new ', String cr.

	actionClass slots
		do: [ :slot |
			source := String tab, source , slot name , ': '
			          , (self defaultValueForSlot: slot in: aClass ) , '; ', String cr. ].
		
	source := String tab, source , 'yourself.'.
	^ source
]

{ #category : 'generating' }
ORActionTestFactoryRefactored >> generateTestClassFor: aClass [

	"testMethodGenerators do: [ :generator |
		| newClass |
		newClass := self createTestClassFor: aClass with: generator.
		self buildMethodsIn: newClass with: generator ]".
	self buildMethodsIn: (self createTestClassFor: aClass with: (testMethodGenerators at:1)) with:  (testMethodGenerators at:1)
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

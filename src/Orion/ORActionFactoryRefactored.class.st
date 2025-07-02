Class {
	#name : 'ORActionFactoryRefactored',
	#superclass : 'Object',
	#instVars : [
		'runMethodGenerators',
		'classBuilder',
		'type',
		'package'
	],
	#category : 'Orion-Code-Generation',
	#package : 'Orion',
	#tag : 'Code-Generation'
}

{ #category : 'generating' }
ORActionFactoryRefactored >> buildMethodsIn: aClass with: aGenerator [

	| runMethodSource entityName |
	"assessors"
	aClass slots do: [ :slot |
		aClass compile: slot name , ' ^' , slot name classified: 'accessing'.
		aClass
			compile: slot name , ': aValue ' , slot name , ' := aValue'
			classified: 'accessing' ].

	"run method"
	runMethodSource := aGenerator generateRunMethodFor: aClass.
	runMethodSource ifNotEmpty: [
		aClass compile: runMethodSource classified: 'method execution' ].

	" createVersionnedEntitySelector"
	(aClass superclass selectors includes:
		 #createVersionnedEntitySelector) ifTrue: [ ^ self ].
	entityName := aClass name
		              copyFrom:
		              ('ORAction' , aGenerator actionType , self type) size
		              + 1
		              to: aClass name size.
	aClass
		compile: 'createVersionnedEntitySelector ^ #new' , entityName
		classified: 'method execution'
]

{ #category : 'generating' }
ORActionFactoryRefactored >> createActionClassFor: aClass with: aGenerator [

	| actionType classSuffix className superclassName slots |
	actionType := aGenerator actionType.
	classSuffix := aClass name
		               copyFrom: 'FamixT' size + 1
		               to: aClass name size.
	className := ('ORAction' , actionType , self type , classSuffix)
		             asSymbol.

	"Superclass defining"
	superclassName := ('ORAction' , actionType) asSymbol.
	((aClass allSlots collect: #name) includes: 'name') ifTrue: [
		superclassName := ('ORAction' , actionType , 'NamedEntity') asSymbol ].

	slots := aClass allSlots. "select: #isToOne"

	classBuilder
		name: className;
		superclass: (Smalltalk at: superclassName);
		slots: slots;
		tag: #Actions;
		package: self package.

	classBuilder build.
	^Smalltalk at: className asSymbol.
]

{ #category : 'generating' }
ORActionFactoryRefactored >> generate [ 
self subclassResponsibility 
]

{ #category : 'generating' }
ORActionFactoryRefactored >> generateActionsFor: aClass [

	runMethodGenerators do: [ :generator |
		| newClass |
		newClass := self createActionClassFor: aClass with: generator.
		self buildMethodsIn: newClass with: generator ]
]

{ #category : 'generating' }
ORActionFactoryRefactored >> generateFrom: aBase [

	aBase do: [ :e |
		self generateActionsFor: e ]
]

{ #category : 'initialize' }
ORActionFactoryRefactored >> initialize [

	super initialize.
	runMethodGenerators := {
		                       ORAddRunMethodGenerator new.
		                       ORRemoveRunMethodGenerator new
		                       "ORRenameRunMethodGenerator new."
		                       "ORMoveRunMethodGenerator new." }.
	classBuilder := ORClassBuilder new
]

{ #category : 'accessing' }
ORActionFactoryRefactored >> package [ 
^package 
]

{ #category : 'accessing' }
ORActionFactoryRefactored >> type [
^type 
]

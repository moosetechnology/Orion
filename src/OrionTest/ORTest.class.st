Class {
	#name : 'ORTest',
	#superclass : 'TestCase',
	#instVars : [
		'model'
	],
	#category : 'OrionTest',
	#package : 'OrionTest'
}

{ #category : 'accessing' }
ORTest >> class: aString in: package [

	^model newClass
		name: aString ;
		parentPackage: package ;
		yourself
]

{ #category : 'accessing' }
ORTest >> exampleModel1 [

	| pckg clas mthd |
	pckg := self package: 'Constellation1'.
	clas := self class: 'Class1' in: pckg.
	mthd := self method: 'accessOrion1Class2' in: clas.

	pckg := self package: 'Constellation2'.
]

{ #category : 'accessing' }
ORTest >> method: aString in: aClass [

	^model newMethod
		name: aString ;
		parentType: aClass ;
		yourself
]

{ #category : 'accessing' }
ORTest >> modelNetwork [

		| importer mod system as|
	self signal: 'not migrated from original Orion'.

	mod := MooseModel new.
	mod name: 'Network'.
	importer := FamixStPharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer runCandidateOperator.
	importer model: mod; addFromPackagesNamed: (MooseScripts packageNamesFor: 'Network*') ; runWithProgress .
		
		"as := ORConverter convertFromMooseModel: mod.
		system := ORSystem new."
		system sourceModel: as.
		as system: system.
		^as
]

{ #category : 'accessing' }
ORTest >> package: aString [

	^model newPackage
		name: aString ;
		yourself
]

{ #category : 'accessing' }
ORTest >> setUp [

	super setUp.

	model := FamixStModel new.
	model name: 'theModel'.
	self exampleModel1
]

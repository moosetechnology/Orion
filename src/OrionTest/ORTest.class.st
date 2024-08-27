Class {
	#name : 'ORTest',
	#superclass : 'TestCase',
	#instVars : [
		'model'
	],
	#category : 'OrionTest',
	#package : 'OrionTest'
}

{ #category : 'factory' }
ORTest >> class: aString in: package [

	^model newClass
		name: aString ;
		parentPackage: package ;
		yourself
]

{ #category : 'running' }
ORTest >> exampleModel1 [
	"A small model to make some tests"

	| pckg cls1 cls2 cls3 cls4 cls5 mth |
	pckg := self package: 'OrionForTest1'.
	cls1 := self class: 'Class1' in: pckg.
	cls2 := self class: 'Class2' in: pckg.

	pckg := self package: 'OrionForTest2'.
	cls3 := self class: 'Class3' in: pckg.
	cls4 := self class: 'Class4' in: pckg.
	cls5 := self class: 'Class5' in: pckg.

	"Class1 >> accessClass2
		^Class2 new."
	mth := self method: 'accessClass2' in: cls1.
	(self invok: nil on: cls2 from: mth) signature: 'new()'.
	self refer: cls2 from: mth.

	"Class1 >> accessClass3
		^Class3 new."
	mth := self method: 'accessClass3' in: cls1.
	(self invok: nil on: cls3 from: mth) signature: 'new()'.
	self refer: cls3 from: mth.

	"Class2 >> accessClass1
		^Class1 new."
	mth := self method: 'accessClass1' in: cls2.
	(self invok: nil on: cls1 from: mth) signature: 'new()'.
	self refer: cls1 from: mth.

	"Class5 >> accessClass3
		^Class3 new."
	mth := self method: 'accessClass3' in: cls5.
	(self invok: nil on: cls3 from: mth) signature: 'new()'.
	self refer: cls3 from: mth
]

{ #category : 'factory' }
ORTest >> invok: aMethode on: receiver from: sender [

	| invok |
	invok := model newInvocation
		         sender: sender;
		         receiver: receiver;
		         yourself.
	aMethode ifNotNil: [ invok candidates: { aMethode } ].

	^ invok
]

{ #category : 'factory' }
ORTest >> method: aString in: aClass [

	^model newMethod
		name: aString ;
		parentType: aClass ;
		yourself
]

{ #category : 'running' }
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

{ #category : 'factory' }
ORTest >> package: aString [

	^model newPackage
		name: aString ;
		yourself
]

{ #category : 'factory' }
ORTest >> refer: aClass from: referer [

	^model newReference
		target: aClass ;
		source: referer ;
		yourself.

]

{ #category : 'running' }
ORTest >> setUp [

	super setUp.

	model := FamixStModel new.
	model name: 'theModel'.
	self exampleModel1
]

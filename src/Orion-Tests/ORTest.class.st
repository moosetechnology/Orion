Class {
	#name : 'ORTest',
	#superclass : 'TestCase',
	#instVars : [
		'modelV1'
	],
	#category : 'Orion-Tests-Core',
	#package : 'Orion-Tests',
	#tag : 'Core'
}

{ #category : 'factory' }
ORTest >> class: aString in: package [

	| theClass |
	theClass := modelV1 newClass
		name: aString ;
		yourself.

	self inherit: theClass from: (modelV1 entityNamed: 'Object').

	theClass setWithoutInverse: #parentPackage value: package.
	package addWithoutInverse: #childEntities value: theClass.

	theClass resetMooseName.
	^theClass
]

{ #category : 'running' }
ORTest >> exampleModel1 [
	"A small model to make some tests"

	| pckg cls1 cls2 cls3 cls4 cls5 mth |
	modelV1 newClass name: 'Object' ; isStub: true.

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
	self refer: cls3 from: mth.

]

{ #category : 'factory' }
ORTest >> inherit: aClass from: superClass [

	| assoc |
	assoc := modelV1 newInheritance.

	assoc setWithoutInverse: #superclass value: superClass.
	superClass addWithoutInverse: #subInheritances value: assoc.

	assoc setWithoutInverse: #subclass value: aClass.
	aClass addWithoutInverse: #superInheritances value: assoc.

	^assoc

]

{ #category : 'factory' }
ORTest >> invok: aMethode on: receiver from: sender [

	| assoc |
	assoc := modelV1 newInvocation.

	assoc setWithoutInverse: #sender value: sender.
	sender addWithoutInverse: #outgoingInvocations value: assoc.

	assoc setWithoutInverse: #receiver value: receiver.
	receiver addWithoutInverse: #receivingInvocations value: assoc.

	aMethode ifNotNil: [
		assoc addWithoutInverse: #candidates value: aMethode.
		aMethode addWithoutInverse: #incomingInvocations value: assoc
	].

	^assoc

]

{ #category : 'factory' }
ORTest >> method: aString in: aClass [

	| theMethod |
	theMethod := modelV1 newMethod
		name: aString ;
		yourself.

	theMethod setWithoutInverse: #parentType value: aClass.
	aClass addWithoutInverse: #methods value: theMethod.

	theMethod resetMooseName.

	^theMethod 

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
		system parentVersion: as.
		as system: system.
		^as
]

{ #category : 'factory' }
ORTest >> package: aString [

	^modelV1 newPackage
		name: aString ;
		yourself
]

{ #category : 'factory' }
ORTest >> refer: aClass from: referer [

	| assoc |
	assoc := modelV1 newReference.

	assoc setWithoutInverse: #referencer value: referer.
	referer addWithoutInverse: #outgoingReferences value: assoc.

	assoc setWithoutInverse: #referredEntity value: aClass.
	aClass addWithoutInverse: #incomingReferences value: assoc.

	^assoc

]

{ #category : 'running' }
ORTest >> setUp [

	super setUp.

	modelV1 := FamixStModel new.
	modelV1 name: 'theModel'.
	self exampleModel1
]

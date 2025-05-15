Class {
	#name : 'ORActionAddTInheritanceTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing OrionModel' }
ORActionAddTInheritanceTest >> setUpAction [

	action := ORActionAddTInheritance new
		orionModel: modelV2;
		superclass: (modelV2 entityNamed: 'Class1');
		subclass: (modelV2 entityNamed: 'Class2').

]

{ #category : 'testing' }
ORActionAddTInheritanceTest >> testAddsCorrectEntity [ 

	action run.

	self assert: modelV2 allInheritanceDefinitions size equals: modelV1 allInheritanceDefinitions size + 1.
	self assert: modelV2 allClasses size equals: modelV1 allClasses size.

]

{ #category : 'testing' }
ORActionAddTInheritanceTest >> testAddsOneEntity [

	action run.

	self assert: modelV2 size equals: modelV1 size + 1.
	self assert: modelV2 allInheritanceDefinitions size equals: modelV1 allInheritanceDefinitions size + 1.
	self assert: modelV2 allClasses size equals: modelV1 allClasses size.

]

{ #category : 'testing' }
ORActionAddTInheritanceTest >> testEntityIsVersioned [

	action run.

	self assert: (modelV2 entityNamed: 'Class2') superInheritances size equals: 2.
	self
		assertCollection: ((modelV2 entityNamed: 'Class2') superInheritances collect: #superclass)
		hasSameElements: { modelV2 entityNamed: 'Class1' . modelV2 entityNamed: 'Object'}.

	self assert: (modelV2 entityNamed: 'Class1') subInheritances size equals: 1.
	self
		assert: (modelV2 entityNamed: 'Class1') subInheritances anyOne subclass
		identicalTo: (modelV2 entityNamed: 'Class2').

	self assert: (modelV1 entityNamed: 'Class2') superInheritances size equals: 1.
	self
		assert: (modelV1 entityNamed: 'Class2') superInheritances anyOne superclass
		identicalTo: (modelV1 entityNamed: 'Object').
	self assert: (modelV1 entityNamed: 'Class1') subInheritances size equals: 0.

]

Class {
	#name : 'ORActionTest',
	#superclass : 'ORTest',
	#instVars : [
		'action',
		'modelV2'
	],
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionTest >> setUp [

	super setUp.

	modelV1 beForOrion.
	modelV2 := modelV1 makeNewVersion
		name: #orionModel.

	self setUpAction
]

{ #category : 'running' }
ORActionTest >> setUpAction [

	self subclassResponsibility
]

{ #category : 'testing' }
ORActionTest >> testDisplayNameAfterRemove [
	<expectedFailure>
	| asAction oldInv asM2 asAction2 asAction3 |
	self skip.

	modelV2 := modelV2 name: #AsM.
	asAction := ORActionAddTInvocation new
		orionModel: modelV2;
		sender: (modelV2 entityNamed: #'Smalltalk::Class1.accessOrion1Class2()');
		"candidates is a collection of candidates methods and manage as such in the run"
			candidates: (modelV2 entityNamed: #'Smalltalk::Class1.accessOrion2Class3()') asOrderedCollection.
	oldInv := asAction run.
	asM2 := (MooseModel withParent: modelV2) name: #AsM2.
	asAction2 := ORActionRemoveTInvocation new
		orionModel: asM2;
		entity: oldInv.
	asAction2 run.
	asAction3 := ORActionRemoveTMethod new
		orionModel: asM2;
		entity: (asM2 entityNamed: 'Smalltalk::Class1.accessOrion2Class3()').
	asAction3 run.
	self assert: asM2 changes first entity source asString ~= 'nil'
]

{ #category : 'testing' }
ORActionTest >> testMultipleActions [
	| act |
	self skip.

	modelV2 := self modelNetwork.
	act := ORActionMoveTPackageable new
		entity: (modelV2 entityNamed: #Smalltalk::Socket);
		parentPackage: (modelV2 entityNamed: #'Network-Url');
		runOnNewVersionFrom: modelV2.
	ORActionMoveTPackageable new
		entity: (modelV2 entityNamed: #Smalltalk::Socket);
		parentPackage: (modelV2 entityNamed: #'Network-Kernel');
		runOnNewVersionFrom: act orionModel.
	self expectedFailures
]

{ #category : 'testing' }
ORActionTest >> testOPAddInvocation [
	| asS asAction invoc |
	self skip.

	asS := self model system.
	asAction := ORActionAddTInvocation new
		orionModel: modelV2;
		sender: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()');
		candidates: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion2Class3()') asOrderedCollection.
	self assert: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()') outgoingInvocations size equals: 1.
	self assert: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion2Class3()') incomingInvocations size equals: 0.
	asAction run.
	self assert: (modelV2 contains: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()')).
	self deny: (asS parentVersion contains: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()')).
	self assert: (modelV2 includes: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()')).
	self assert: (asS parentVersion includes: (asS parentVersion entityNamed: 'Smalltalk::Class1.accessOrion1Class2()')).
	self assert: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()') outgoingInvocations size equals: 2.
	self assert: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion2Class3()') incomingInvocations size equals: 1.
	invoc := (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion2Class3()') incomingInvocations at: 1.
	self assert: (modelV2 contains: invoc).
	self deny: (asS parentVersion contains: invoc).
	self assert: (modelV2 includes: invoc).
	self deny: (asS parentVersion includes: invoc).
	self assert: (invoc candidates includes: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion2Class3()')).
	self assert: invoc sender equals: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()')
]

{ #category : 'testing' }
ORActionTest >> testOPAddReference [
	| asS asAction ref |
	self skip.

	asS := self model system.
	asAction := ORActionAddTReference new
		orionModel: modelV2;
		source: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()');
		target: (modelV2 entityNamed: 'Smalltalk::Class5').
	self
		assert: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()') outgoingReferences size
		equals: 1.
	self assert: (modelV2 entityNamed: 'Smalltalk::Class5') incomingReferences size equals: 0.
	asAction run.
	self
		assert: (modelV2 contains: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()')).
	self
		deny: (asS parentVersion contains: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()')).
	self
		assert: (modelV2 includes: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()')).
	self
		assert:
			(asS parentVersion includes: (asS parentVersion entityNamed: 'Smalltalk::Class1.accessOrion1Class2()')).
	self
		assert: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()') outgoingReferences size
		equals: 2.
	self assert: (modelV2 entityNamed: 'Smalltalk::Class5') incomingReferences size equals: 1.
	ref := (modelV2 entityNamed: 'Smalltalk::Class5') incomingReferences at: 1.
	self assert: (modelV2 contains: ref).
	self deny: (asS parentVersion contains: ref).
	self assert: (modelV2 includes: ref).
	self deny: (asS parentVersion includes: ref).
	self assert: ref target equals: (modelV2 entityNamed: 'Smalltalk::Class5').
	self
		assert: ref source
		equals: (modelV2 entityNamed: 'Smalltalk::Class1.accessOrion1Class2()')
]

{ #category : 'testing' }
ORActionTest >> testOPChangeInheritance [

	self skip.
	"
	Not managed by generated version
	self assert: (orionModel entityNamed: 'Smalltalk::Class1') superclass equals: (orionModel entityNamed: 'Smalltalk::Object').
	asM2 := (ORModel withParent: orionModel) name: 'OrionModel2'.
	(orionModel entityNamed: 'Smalltalk::Class1') changeSuperClassTo: (orionModel entityNamed: 'Smalltalk::Class2') inModel: asM2.
	self assert: (asM2 entityNamed: 'Smalltalk::Class1') superclass equals: (asM2 entityNamed: 'Smalltalk::Class2').
	self assert: (asM2 entityNamed: 'Smalltalk::Class1') superInheritances size equals: 1"

]

{ #category : 'testing' }
ORActionTest >> testOPExtendMethod [
	| asS asAction |
	self skip.

	asS := self model system.
	self deny: ((asS parentVersion entityNamed: #Smalltalk::Class5) extendedInPackages includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') parentPackage).
	asAction := ORActionMoveTMethod new
		orionModel: modelV2;
		entity: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()');
		parentPackage: (modelV2 entityNamed: #'Orion-TestModel-Constellation1').
	asAction run.
	self assert: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') notNil.
	self deny: (asS parentVersion contains: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self deny: (asS parentVersion entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') = (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()').
	self assert: ((modelV2 entityNamed: #'Orion-TestModel-Constellation1') childNamedEntities includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self deny: ((modelV2 entityNamed: #'Orion-TestModel-Constellation2') childNamedEntities includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self assert: ((modelV2 entityNamed: #Smalltalk::Class5) methods includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self assert: ((modelV2 entityNamed: #Smalltalk::Class5) methods includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self deny: ((asS parentVersion entityNamed: #Smalltalk::Class5) methods includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self assert: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') parentPackage equals: (modelV2 entityNamed: #'Orion-TestModel-Constellation1').
	self assert: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') parentType equals: (modelV2 entityNamed: #Smalltalk::Class5).
	self deny: (asS parentVersion entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') parentPackage = (modelV2 entityNamed: #'Orion-TestModel-Constellation2').
	self deny: ((asS parentVersion entityNamed: #Smalltalk::Class5) extendedInPackages includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') parentPackage).
	self assert: ((modelV2 entityNamed: #Smalltalk::Class5) extendedInPackages includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') parentPackage).
	self assert: (modelV2 entityNamed: #Smalltalk::Class5) extendedInPackages size equals: 1
]

{ #category : 'testing' }
ORActionTest >> testOPMovePackage [
	| asS asAction |
	self skip.

	asS := self model system.
	asAction := ORActionMoveTPackage new
		orionModel: modelV2;
		entity: (modelV2 entityNamed: #'Orion-TestModel-Constellation1');
		parentPackage: (modelV2 entityNamed: #'Orion-TestModel-Constellation2').
	asAction run.
	self assert: (modelV2 entityNamed: #'Orion-TestModel-Constellation1') notNil.
	self deny: (asS parentVersion contains: (modelV2 entityNamed: #'Orion-TestModel-Constellation1')).
	self deny: (asS parentVersion entityNamed: #'Orion-TestModel-Constellation1') = (modelV2 entityNamed: #'Orion-TestModel-Constellation1').
	self
		assert:
			((modelV2 entityNamed: #'Orion-TestModel-Constellation2') childNamedEntities
				includes: (modelV2 entityNamed: #'Orion-TestModel-Constellation1')).
	self
		deny:
			((asS parentVersion entityNamed: #'Orion-TestModel-Constellation2') childNamedEntities
				includes: (modelV2 entityNamed: #'Orion-TestModel-Constellation1')).
	self
		assert: (modelV2 entityNamed: #'Orion-TestModel-Constellation1') parentPackage
		equals: (modelV2 entityNamed: #'Orion-TestModel-Constellation2')
]

{ #category : 'testing' }
ORActionTest >> testOPRemoveClassWithInvocationFrom [
	| asAction asM2 |
	self skip.

	asAction := ORActionAddTClass new
		orionModel: modelV2;
		parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2');
		name: 'ClassTestTo'.
	asAction run.
	asAction := ORActionAddTClass new
		orionModel: modelV2;
		parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2');
		name: 'ClassTestFrom'.
	asAction run.
	asAction := ORActionAddTMethod new
		orionModel: modelV2;
		name: 'aMethodFrom';
		signature: 'aMethodFrom()';
		parentType: (modelV2 entityNamed: 'ClassTestFrom').
	asAction run.
	asAction := ORActionAddTMethod new
		orionModel: modelV2;
		name: 'aMethodTo';
		signature: 'aMethodTo()';
		parentType: (modelV2 entityNamed: 'ClassTestTo').
	asAction run.
	asAction := ORActionAddTInvocation new
		orionModel: modelV2;
		candidates:
			(modelV2 entityNamed: 'ClassTestTo.aMethodTo()')
				asOrderedCollection;
		"candidates is a collection of candidates methods and manage as such in the run"
			sender: (modelV2 entityNamed: 'ClassTestFrom.aMethodFrom()').
	asAction run.
	asM2 := (MooseModel withParent: modelV2) name: 'AsM2'.
	asAction := ORActionRemoveTClass new
		orionModel: asM2;
		entity: (asM2 entityNamed: 'ClassTestFrom').
	asAction run.
	self assert: (modelV2 entityNamed: 'ClassTestFrom') notNil.
	self assert: (asM2 entityNamed: 'ClassTestFrom') isNil.
	self
		assert: (modelV2 entityNamed: 'ClassTestFrom.aMethodFrom()') notNil.
	self assert: (asM2 entityNamed: 'ClassTestFrom.aMethodFrom()') isNil.
	self
		assert: (modelV2 includes: (modelV2 entityNamed: 'ClassTestFrom')).
	"self deny:(asM2 includes: (orionModel entityNamed: 'Orion-TestModel-Constellation2::ClassTestFrom'))."
	self
		assert:
			((modelV2 entityNamed: 'Orion-TestModel-Constellation2')
				childNamedEntities
				includes: (modelV2 entityNamed: 'ClassTestFrom')).
	"self deny:((asM2 entityNamed: 'Orion-TestModel-Constellation2') childNamedEntities includes: (orionModel entityNamed: 'Orion-TestModel-Constellation2::ClassTestFrom'))."
	self
		assert:
			(modelV2 entityNamed: 'ClassTestTo.aMethodTo()')
				incomingInvocations size
		equals: 1.
	self
		assert: (asM2 entityNamed: 'ClassTestTo.aMethodTo()') incomingInvocations size
		equals: 0.
	self assert: modelV2 size equals: asM2 size + 3	"removed: ClassTestFrom , aMethodFrom , Invocation"
]

{ #category : 'testing' }
ORActionTest >> testOPRemoveClassWithInvocationTo [
	| asAction asM2 |
	self skip.

	asAction := ORActionAddTClass new orionModel: modelV2; 
			parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2'); 
			name: 'ClassTestTo'.
	asAction run.
	asAction := ORActionAddTClass new orionModel: modelV2; 
			parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2'); 
			name: 'ClassTestFrom'.
	asAction run.
	asAction := ORActionAddTMethod new orionModel: modelV2; name: 'aMethodFrom'; 
			parentType: (modelV2 entityNamed: 'ClassTestFrom'); signature: 'aMethodFrom()'.
	asAction run.
	asAction := ORActionAddTMethod new orionModel: modelV2; name: 'aMethodTo'; 
			parentType: (modelV2 entityNamed: 'ClassTestTo'); signature: 'aMethodTo()'.
	asAction run.
	asAction := ORActionAddTInvocation new orionModel: modelV2; 
			candidates:
			(modelV2 entityNamed: 'ClassTestTo.aMethodTo()')
				asOrderedCollection; "candidates is a collection of candidates methods and manage as such in the run"
			sender: (modelV2 entityNamed: 'ClassTestFrom.aMethodFrom()').
	asAction run.
	asM2 := (MooseModel withParent: modelV2) name: 'AsM2'.
	asAction := ORActionRemoveTClass new orionModel: asM2; entity: (asM2 entityNamed: 'ClassTestTo').
	asAction run.
	self assert: (modelV2 entityNamed: 'ClassTestTo') notNil.
	self assert: (asM2 entityNamed: 'ClassTestTo') isNil.
	self
		assert: (modelV2 entityNamed: 'ClassTestTo.aMethodTo()') notNil.
	self assert: (asM2 entityNamed: 'ClassTestTo.aMethodTo()') isNil.
	self
		assert: (modelV2 includes: (modelV2 entityNamed: 'ClassTestTo')).
	"self deny:(asM2 includes: (orionModel entityNamed: 'Orion-TestModel-Constellation2::ClassTestTo'))."
	self
		assert:
			((modelV2 entityNamed: 'Orion-TestModel-Constellation2')
				childNamedEntities
				includes: (modelV2 entityNamed: 'ClassTestTo')).
	"self deny:((asM2 entityNamed:#'Orion-TestModel-Constellation2') childNamedEntities includes: (orionModel entityNamed:#'ClassTestTo'))."
	self
		assert:
			(modelV2 entityNamed: 'ClassTestFrom.aMethodFrom()')
				outgoingInvocations size
		equals: 1.
	self
		assert:
			(asM2 entityNamed: 'ClassTestFrom.aMethodFrom()') outgoingInvocations
				size
		equals: 0.
	self assert: modelV2 size equals: asM2 size + 3	"removed: ClassTestTo , aMethodTo , Invocation"
]

{ #category : 'testing' }
ORActionTest >> testOPRemoveClassWithReferenceFrom [
	| asAction asM2 |
	self skip.

	asAction := ORActionAddTClass new
		orionModel: modelV2;
		parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2');
		name: 'ClassTestTo'.
	asAction run.
	asAction := ORActionAddTClass new
		orionModel: modelV2;
		parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2');
		name: 'ClassTestFrom'.
	asAction run.
	asAction := ORActionAddTMethod new
		orionModel: modelV2;
		name: 'aMethodFrom';
		signature: 'aMethodFrom()';
		parentType: (modelV2 entityNamed: 'ClassTestFrom').
	asAction run.
	asAction := ORActionAddTReference new
		orionModel: modelV2;
		target: (modelV2 entityNamed: 'ClassTestTo');
		source: (modelV2 entityNamed: 'ClassTestFrom.aMethodFrom()').
	asAction run.
	asM2 := (MooseModel withParent: modelV2) name: 'AsM2'.
	asAction := ORActionRemoveTClass new
		orionModel: asM2;
		entity: (asM2 entityNamed: 'ClassTestFrom').
	asAction run.
	self assert: (modelV2 entityNamed: 'ClassTestFrom') notNil.
	self assert: (asM2 entityNamed: 'ClassTestFrom') isNil.
	self
		assert: (modelV2 entityNamed: 'ClassTestFrom.aMethodFrom()') notNil.
	self assert: (asM2 entityNamed: 'ClassTestFrom.aMethodFrom()') isNil.
	self
		assert: (modelV2 includes: (modelV2 entityNamed: 'ClassTestFrom')).
	"self deny:(asM2 includes: (orionModel entityNamed:#'ClassTestFrom'))."
	self
		assert:
			((modelV2 entityNamed: 'Orion-TestModel-Constellation2')
				childNamedEntities
				includes: (modelV2 entityNamed: 'ClassTestFrom')).
	"self deny:((asM2 entityNamed:#'Orion-TestModel-Constellation2') childNamedEntities includes: (asM2 entityNamed:#'ClassTestFrom'))."
	self
		assert: (modelV2 entityNamed: 'ClassTestFrom.aMethodFrom()') notNil.
	self assert: (asM2 entityNamed: 'ClassTestFrom.aMethodFrom()') isNil.
	self
		assert: (modelV2 entityNamed: 'ClassTestTo') incomingReferences size
		equals: 1.
	self
		assert: (asM2 entityNamed: 'ClassTestTo') incomingReferences size
		equals: 0.
	self assert: modelV2 size equals: asM2 size + 3	"removed: ClassTestFrom , aMethodFrom , Reference"
]

{ #category : 'testing' }
ORActionTest >> testOPRemoveClassWithReferenceTo [
	| asAction asM2 |
	self skip.

	asAction := ORActionAddTClass new
		orionModel: modelV2;
		parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2');
		name: 'ClassTestTo'.
	asAction run.
	asAction := ORActionAddTClass new
		orionModel: modelV2;
		parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2');
		name: 'ClassTestFrom'.
	asAction run.
	asAction := ORActionAddTMethod new
		orionModel: modelV2;
		name: 'aMethodFrom';
		signature: 'aMethodFrom()';
		parentType: (modelV2 entityNamed: 'ClassTestFrom').
	asAction run.
	asAction := ORActionAddTReference new
		orionModel: modelV2;
		target: (modelV2 entityNamed: 'ClassTestTo');
		source: (modelV2 entityNamed: 'ClassTestFrom.aMethodFrom()').
	asAction run.
	asM2 := (MooseModel withParent: modelV2) name: 'AsM2'.
	asAction := ORActionRemoveTClass new
		orionModel: asM2;
		entity: (asM2 entityNamed: 'ClassTestTo').
	asAction run.
	self assert: (modelV2 entityNamed: 'ClassTestTo') notNil.
	self assert: (asM2 entityNamed: 'ClassTestTo') isNil.
	self
		assert: (modelV2 includes: (modelV2 entityNamed: 'ClassTestTo')).
	"self deny:(asM2 includes: (orionModel entityNamed:#'ClassTestTo'))."
	self
		assert:
			((modelV2 entityNamed: 'Orion-TestModel-Constellation2')
				childNamedEntities
				includes: (modelV2 entityNamed: 'ClassTestTo')).
	"self deny:((asM2 entityNamed:#'Orion-TestModel-Constellation2') childNamedEntities includes: (orionModel entityNamed:#'ClassTestTo'))."
	self
		assert:
			(modelV2 entityNamed: 'ClassTestFrom.aMethodFrom()')
				outgoingReferences size
		equals: 1.
	self
		assert:
			(asM2 entityNamed: 'ClassTestFrom.aMethodFrom()') outgoingReferences
				size
		equals: 0.
	self assert: modelV2 size equals: asM2 size + 2	"ClassTestTo , Reference"
]

{ #category : 'testing' }
ORActionTest >> testOPRemoveInheritance [
	| asAction oldInh asM2 asAction2 |
	self skip.

	asAction := ORActionAddTInheritance new
		orionModel: modelV2;
		superclass: (modelV2 entityNamed: 'Smalltalk::Class1');
		subclass: (modelV2 entityNamed: 'Smalltalk::Class2').
	oldInh := asAction run.
	asM2 := (MooseModel withParent: modelV2) name: 'AsM2'.
	asAction2 := ORActionRemoveTInheritance new
		orionModel: asM2;
		entity: oldInh.
	asAction2 run.
	self assert: (modelV2 contains: oldInh).
	self deny: (asM2 contains: oldInh).
	self assert: (modelV2 includes: oldInh).
	self deny: (asM2 includes: oldInh).
	self deny: (modelV2 entityNamed: 'Smalltalk::Class1') subInheritances isEmpty.
	self assert: (asM2 entityNamed: 'Smalltalk::Class1') subInheritances isEmpty.
	self
		assert: (modelV2 entityNamed: 'Smalltalk::Class2') superInheritances size
		equals: 2.
	self assert: (asM2 entityNamed: 'Smalltalk::Class2') superInheritances size equals: 1
]

{ #category : 'testing' }
ORActionTest >> testOPRemoveInheritedClass [
	| asAction asM2 |
	self skip.

	asAction := ORActionAddTClass new
		orionModel: modelV2;
		parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2');
		name: 'ClassTestChild'.
	asAction run.
	asAction := ORActionAddTClass new
		orionModel: modelV2;
		parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2');
		name: 'ClassTestParent'.
	asAction run.
	asAction := ORActionAddTInheritance new
		orionModel: modelV2;
		superclass: (modelV2 entityNamed: 'ClassTestParent');
		subclass: (modelV2 entityNamed: 'ClassTestChild').
	asAction run.
	asM2 := (MooseModel withParent: modelV2) name: 'AsM2'.
	asAction := ORActionRemoveTClass new
		orionModel: asM2;
		entity: (asM2 entityNamed: 'ClassTestChild').
	asAction run.
	self assert: (modelV2 entityNamed: 'ClassTestChild') notNil.
	self assert: (asM2 entityNamed: 'ClassTestChild') isNil.
	self assert: (modelV2 includes: (modelV2 entityNamed: 'ClassTestChild')).
	"self deny:(asM2 includes: (orionModel entityNamed:#'ClassTestTo'))."
	self assert: ((modelV2 entityNamed: 'Orion-TestModel-Constellation2') childNamedEntities includes: (modelV2 entityNamed: 'ClassTestChild')).
	"self deny:((asM2 entityNamed:#'Orion-TestModel-Constellation2') childNamedEntities includes: (orionModel entityNamed:#'ClassTestTo'))."
	self assert: (modelV2 entityNamed: 'ClassTestParent') subInheritances size equals: 1.
	self assert: (asM2 entityNamed: 'ClassTestParent') subInheritances size equals: 0.
	self assert: modelV2 size equals: asM2 size + 2	"ClassTestTo , Inheritance"
]

{ #category : 'testing' }
ORActionTest >> testOPRemoveInvocation [
	| asAction oldInv asM2 asAction2 |
	self skip.

	asAction := ORActionAddTInvocation new
		orionModel: modelV2;
		sender: (modelV2 entityNamed: #'Smalltalk::Class1.accessOrion1Class2()');
		"candidates is a collection of candidates methods and manage as such in the run"
			candidates: (modelV2 entityNamed: #'Smalltalk::Class1.accessOrion2Class3()') asOrderedCollection.
	oldInv := asAction run.
	asM2 := (MooseModel withParent: modelV2) name: #AsM2.
	asAction2 := ORActionRemoveTInvocation new
		orionModel: asM2;
		entity: oldInv.
	asAction2 run.
	self assert: (modelV2 contains: oldInv).
	self deny: (asM2 contains: oldInv).
	self assert: (modelV2 includes: oldInv).
	self deny: (asM2 includes: oldInv).
	self assert: ((modelV2 entityNamed: #'Smalltalk::Class1.accessOrion2Class3()') incomingInvocations includes: oldInv).
	self assert: ((modelV2 entityNamed: #'Smalltalk::Class1.accessOrion1Class2()') outgoingInvocations includes: oldInv).
	self deny: ((asM2 entityNamed: #'Smalltalk::Class1.accessOrion2Class3()') incomingInvocations includes: oldInv).
	self deny: ((asM2 entityNamed: #'Smalltalk::Class1.accessOrion1Class2()') outgoingInvocations includes: oldInv)
]

{ #category : 'testing' }
ORActionTest >> testOPRemoveMethod [
	| asAction asM2 asAction2 class5 |
	self skip.

	class5 := modelV2 entityNamed: 'Smalltalk::Class5'.
	asAction := ORActionAddTMethod new orionModel: modelV2; name: 'methodTest'; signature: 'methodTest()'; parentType: class5; 
			parentPackage: class5 parentPackage.
	asAction run.
	asM2 := (MooseModel withParent: modelV2) name: 'AsM2'.
	asAction2 := ORActionRemoveTMethod new orionModel: asM2; entity: (asM2 entityNamed: 'Smalltalk::Class5.methodTest()').
	asAction2 run.
	self assert: (modelV2 entityNamed: 'Smalltalk::Class5.methodTest()') notNil.
	self deny: (asM2 entityNamed: 'Smalltalk::Class5.methodTest()') notNil.
	self assert: (modelV2 contains: (modelV2 entityNamed: 'Smalltalk::Class5.methodTest()')).
	self deny: (asM2 contains: (modelV2 entityNamed: 'Smalltalk::Class5.methodTest()')).
	self
		assert:
			((modelV2 entityNamed: 'Orion-TestModel-Constellation2') childNamedEntities
				includes: (modelV2 entityNamed: 'Smalltalk::Class5.methodTest()')).
	self
		deny:
			((asM2 entityNamed: 'Orion-TestModel-Constellation2') childNamedEntities
				includes: (modelV2 entityNamed: 'Smalltalk::Class5.methodTest()')).
	self assert: (modelV2 includes: (modelV2 entityNamed: 'Smalltalk::Class5.methodTest()')).
	self deny: (asM2 includes: (modelV2 entityNamed: 'Smalltalk::Class5.methodTest()')).
	self assert: ((modelV2 entityNamed: 'Smalltalk::Class5') methods includes: (modelV2 entityNamed: 'Smalltalk::Class5.methodTest()')).
	self deny: ((asM2 entityNamed: 'Smalltalk::Class5') methods includes: (modelV2 entityNamed: 'Smalltalk::Class5.methodTest()')).
	self assert: modelV2 size equals: asM2 size + 1
]

{ #category : 'testing' }
ORActionTest >> testOPRemovePackage [
	| asM2 asAction2 pckg |
	self flag: #FIXME.
	self skip.

	pckg := modelV2 entityNamed: 'Orion-TestModel-Constellation1'.
	asM2 := (MooseModel withParent: modelV2) name: 'AsM2'.
	asAction2 := ORActionRemoveTPackage new
		orionModel: asM2;
		entity: pckg.
	asAction2 run.
	self assert: (modelV2 includes: (modelV2 entityNamed: 'Orion-TestModel-Constellation1')).
	self deny: (asM2 includes: (modelV2 entityNamed: 'Orion-TestModel-Constellation1')).

	"self assert:(orionModel  includes: (orionModel entityNamed:#'PackageTest')).
	self deny:(asM2 includes: (orionModel entityNamed:#'PackageTest'))."
	self assert: modelV2 size equals: asM2 size + 15.	"Classes and methods have been removed"
]

{ #category : 'testing' }
ORActionTest >> testOPRemoveReference [
	| asAction oldInh asM2 asAction2 |
	self skip.

	asAction := ORActionAddTReference new
		orionModel: modelV2;
		source: (modelV2 entityNamed: #'Smalltalk::Class1.accessOrion1Class2()');
		target: (modelV2 entityNamed: #Smalltalk::Class5).
	oldInh := asAction run.
	asM2 := (MooseModel withParent: modelV2) name: #AsM2.
	asAction2 := ORActionRemoveTReference new
		orionModel: asM2;
		entity: oldInh.
	asAction2 run.
	self assert: (modelV2 contains: (modelV2 entityNamed: #'Smalltalk::Class1.accessOrion1Class2()')).
	self deny: (asM2 contains: (modelV2 entityNamed: #'Smalltalk::Class1.accessOrion1Class2()')).
	self assert: (modelV2 includes: (modelV2 entityNamed: #'Smalltalk::Class1.accessOrion1Class2()')).
	self assert: (asM2 includes: (asM2 entityNamed: #'Smalltalk::Class1.accessOrion1Class2()')).
	self assert: (modelV2 entityNamed: #'Smalltalk::Class1.accessOrion1Class2()') outgoingReferences size = 2.
	self assert: (modelV2 entityNamed: #Smalltalk::Class5) incomingReferences size = 1.
	self assert: (asM2 entityNamed: #'Smalltalk::Class1.accessOrion1Class2()') outgoingReferences size = 1.
	self assert: (asM2 entityNamed: #Smalltalk::Class5) incomingReferences size = 0.
	self assert: (modelV2 includes: oldInh).
	self deny: (asM2 includes: oldInh)
]

{ #category : 'testing' }
ORActionTest >> testOPRemoveSuperClassWithSubInheritance [
	| asAction asM2 |
		self flag: #FIXME.
	self skip.

	asAction := ORActionAddTClass new
		orionModel: modelV2;
		parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2');
		name: 'ClassTestParent'.
	asAction run.
	asAction := ORActionAddTClass new
		orionModel: modelV2;
		parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2');
		name: 'ClassTestChild'.
	asAction run.
	asAction := ORActionAddTClass new
		orionModel: modelV2;
		parentPackage: (modelV2 entityNamed: 'Orion-TestModel-Constellation2');
		name: 'SuperClassTestParent'.
	asAction run.
	asAction := ORActionAddTInheritance new
		orionModel: modelV2;
		superclass: (modelV2 entityNamed: 'ClassTestParent');
		subclass: (modelV2 entityNamed: 'ClassTestChild').
	asAction run.
	asAction := ORActionAddTInheritance new
		orionModel: modelV2;
		subclass: (modelV2 entityNamed: 'ClassTestParent');
		superclass: (modelV2 entityNamed: 'SuperClassTestParent').
	asAction run.
	asM2 := (MooseModel withParent: modelV2) name: 'AsM2'.
	asAction := ORActionRemoveTClass new
		orionModel: asM2;
		entity: (asM2 entityNamed: 'ClassTestParent').
	asAction run.
	self assert: (modelV2 entityNamed: 'ClassTestParent') notNil.
	self assert: (asM2 entityNamed: 'ClassTestParent') isNil.
	self
		assert: (modelV2 includes: (modelV2 entityNamed: 'ClassTestParent')).
	"self deny:(asM2 includes: (orionModel entityNamed: 'ClassTestFrom'))."
	self
		assert:
			((modelV2 entityNamed: 'Orion-TestModel-Constellation2')
				childNamedEntities
				includes: (modelV2 entityNamed: 'ClassTestChild')).
	"self deny:((asM2 entityNamed: 'Orion-TestModel-Constellation2') childNamedEntities includes: (orionModel entityNamed: 'ClassTestFrom'))."
	self
		assert:
			(modelV2 entityNamed: 'ClassTestChild') superInheritances first
				superclass
		equals: (modelV2 entityNamed: 'ClassTestParent').
	self assert: modelV2 size equals: asM2 size + 3	"ClassTestParent , input Inheritance, output Inheritance"
]

{ #category : 'testing' }
ORActionTest >> testOPSafeRemovePackage [
	| asAction asM2 asAction2 |
	self skip.

	asAction := ORActionAddTPackage new orionModel: modelV2; name: 'PackageTest'.
	asAction run.
	asM2 := (MooseModel withParent: modelV2) name: 'AsM2'.
	
	self flag: 'check next line: what is ORActionSafeRemoveTPackage?'.
	"asAction2 := ORActionSafeRemoveTPackage new orionModel: asM2; entity: (asM2 entityNamed: 'PackageTest')."
	asAction2 run.
	self
		assert: (modelV2 contains: (modelV2 entityNamed: 'PackageTest')).
	self deny: (asM2 contains: (modelV2 entityNamed: 'PackageTest')).
	self
		assert: (modelV2 includes: (modelV2 entityNamed: 'PackageTest')).
	self deny: (asM2 includes: (modelV2 entityNamed: 'PackageTest')).
	self assert: modelV2 size equals: asM2 size + 1.
	modelV2 := asM2
]

{ #category : 'testing' }
ORActionTest >> testOPUnextendMethod [
	| asS asAction asAction2 |
	self flag: #FIXME.
	self skip.

	asS := self model system.
	asAction := ORActionMoveTMethod new
		orionModel: modelV2;
		entity: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()');
		parentPackage: (modelV2 entityNamed: #'Orion-TestModel-Constellation1').
	asAction run.
	asAction2 := ORActionUnextendTMethod new
		orionModel: modelV2;
		entity: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()').
	asAction2 run.
	self assert: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') notNil.
	self deny: (asS parentVersion contains: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self
		deny:
			(asS parentVersion entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')
				= (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()').
	self
		deny:
			((modelV2 entityNamed: #'Orion-TestModel-Constellation1') childNamedEntities
				includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self
		assert:
			((modelV2 entityNamed: #'Orion-TestModel-Constellation2') childNamedEntities
				includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self
		assert: ((modelV2 entityNamed: #Smalltalk::Class5) methods includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self
		assert: ((modelV2 entityNamed: #Smalltalk::Class5) methods includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self
		deny:
			((asS parentVersion entityNamed: #Smalltalk::Class5) methods includes: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()')).
	self
		deny:
			(modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') parentPackage
				= (modelV2 entityNamed: #'Orion-TestModel-Constellation1').
	self
		assert: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') parentPackage
		equals: (modelV2 entityNamed: #'Orion-TestModel-Constellation2').
	self
		assert: (modelV2 entityNamed: #'Smalltalk::Class5.accessOrion2Class3()') parentType
		equals: (modelV2 entityNamed: #Smalltalk::Class5).
	self assert: (modelV2 entityNamed: #Smalltalk::Class5) extendedInPackages size equals: 0
]

{ #category : 'testing' }
ORActionTest >> testParentActions [
	| act1 act2 act3 |
	self skip.

	act1 := ORActionAddTClass new
		name: 'parentAct';
		yourself.
	self assert: act1 childrenActions isEmpty.
	self assert: act1 isManual.
	act2 := ORActionAddTClass new
		name: '1stChildAct';
		parentAction: act1;
		yourself.
	self assert: act1 isManual.
	self deny: act2 isManual.
	self assert: act2 parentAction equals: act1.
	self assert: act1 childrenActions size equals: 1.
	act3 := ORActionAddTClass new
		name: '2ndChildAct';
		parentAction: act1;
		yourself.
	self assert: act1 childrenActions size equals: 2.
	act2 parentAction: nil.
	self assert: act2 isManual.
	self assert: act1 childrenActions size equals: 1
]

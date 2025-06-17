Class {
	#name : 'ORActionTestFactory',
	#superclass : 'ORActionFactory',
	#category : 'Orion-Core',
	#package : 'Orion',
	#tag : 'Core'
}

{ #category : 'class building' }
ORActionTestFactory >> defaultValueForSlot: aSlot [
	(aSlot name asLowercase includes: 'name') ifTrue: [ ^ '''A_Test_Name''' ].
	(aSlot name asLowercase includes: 'string') ifTrue: [ ^ '''aTestString''' ].
	(aSlot name asLowercase includes: 'number') ifTrue: [ ^ '42' ].
	^ 'nil'
]

{ #category : 'class building' }
ORActionTestFactory >> generateAddTestSourcesFor: anActionClass [
	"Returns a collection of source codes for addition tests"

	^ {
		  (self generateAddsCorrectEntitySourceFor: anActionClass).
		  (self generateEntityIsVersionedSourceFor: anActionClass) }
]

{ #category : 'class building' }
ORActionTestFactory >> generateAddsCorrectEntitySourceFor: anActionClass [

	| entityName source |
		entityName := anActionClass name
			              copyFrom: 'ORActionAddT' size + 1
			              to: anActionClass name size.

		source := 'testAddsCorrectEntity '.
		source := source , '| initialCount | '.
		source := source , 'initialCount := modelV1 all' , entityName
		          , 's size. '.
		source := source , 'action run. '.
		source := source , 'self assert: (modelV2 all' , entityName
		          , 's size) equals: (initialCount + 1).'.

		^ source
]

{ #category : 'class building' }
ORActionTestFactory >> generateEntityIsVersionedSourceFor: anActionClass [

	| source |
	source := 'testEntityIsVersioned '.
	source := source , '| entity | '.
	source := source , 'action run. '.
	source := source , 'entity := modelV2 entityNamed: ''A_Test_Name''. '.
	source := source , 'self assert: entity notNil. '.
	source := source , 'self assert: (modelV2 includes: entity). '.
	source := source , 'self deny: (modelV1 includes: entity).'.

	^ source
]

{ #category : 'class building' }
ORActionTestFactory >> generateRemoveTestSourcesFor: anActionClass [
	"Returns a collection of source codes for deletion tests"

	^ { (self generateRemovesCorrectEntitySourceFor: anActionClass) }
]

{ #category : 'class building' }
ORActionTestFactory >> generateRemovesCorrectEntitySourceFor: anActionClass [

	| entityName source |
	entityName := (anActionClass name
		               copyFrom: 'ORActionRemoveT' size + 1
		               to: anActionClass name size).

	source := 'testRemovesCorrectEntity '.
	source := source , '| initialCount entityToRemove | '.
	source := source , 'entityToRemove := modelV1 all' , entityName
	          , 's anyOne. '.
	source := source
	          ,
	          'self assert: entityToRemove notNil description: ''Le modèle V1 doit contenir une entité à supprimer pour ce test''. '.
	source := source , 'action entity: entityToRemove. '.
	source := source , 'initialCount := modelV1 all' , entityName
	          , 's size. '.
	source := source , 'action run. '.
	source := source , 'self assert: (modelV2 all' , entityName
	          , 's size) equals: (initialCount - 1).'.

	^ source
]

{ #category : 'class building' }
ORActionTestFactory >> generateSetUpSourceFor: anActionClass [
	"Generate setUpAction code source"

	| source |
	source := 'setUpAction '.
	source := source , 'action := ' , anActionClass name , ' new '.
	source := source , 'orionModel: modelV2; '.

	(anActionClass slots reject: [ :slot | slot name = #orionModel ])
		do: [ :slot |
			source := source , slot name , ': '
			          , (self defaultValueForSlot: slot) , '; ' ].

	source := source , 'yourself.'.
	^ source
]

{ #category : 'class building' }
ORActionTestFactory >> injectMethodsIntoTestClassFor: anActionClass [
	"Finds the corresponding test class and compiles the generated test methods directly into it."

	| testClass setUpSource testSources |
	(anActionClass name = 'ORActionAdd' or:
		 (anActionClass name = 'ORActionRemove' or:
			  (anActionClass name = 'ORActionRename' or:
				   anActionClass name = 'ORActionMove'))) ifFalse: [
		testClass := Smalltalk globals
			             at: (anActionClass name , 'TestNew') asSymbol
			             ifAbsent: [^ nil ].

		"Generate et compile setUpAction"
		setUpSource := self generateSetUpSourceFor: anActionClass.
		testClass compile: setUpSource classified: #running.

		"Generate and compile specific test methods"
		testSources := #(  ).
		(anActionClass name beginsWith: 'ORActionAdd') ifTrue: [
			testSources := self generateAddTestSourcesFor: anActionClass ].
		(anActionClass name beginsWith: 'ORActionRemove') ifTrue: [
			testSources := self generateRemoveTestSourcesFor: anActionClass ].

		testSources do: [ :eachSource |
			testClass compile: eachSource classified: #tests ].

		^ testClass ]
]

{ #category : 'class building' }
ORActionTestFactory >> testBuilder [

	| classes fact |
	fact := ORActionTestFactory new.
	classes := ORAction allSubclasses select: [ :e | e isAbstract not ].


	classes do: [ :class |
		| superclassName className |
		superclassName := class superclass asString , 'Test'.
		className := class name , 'Test'.
		Smalltalk at: (class name , 'Test') asSymbol ifAbsent: [ nil ].
		Smalltalk classInstaller make: [ :builder |
			builder
				superclass: (Smalltalk at: superclassName asSymbol);
				name: className;
				slots: {  };
				sharedVariablesFromString: '';
				sharedPools: '';
				tag: #Actions;
				package: 'Orion-New-Tests';
				environment: Object environment ].
		fact injectMethodsIntoTestClassFor: class ]
]

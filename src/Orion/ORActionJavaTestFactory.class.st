Class {
	#name : 'ORActionJavaTestFactory',
	#superclass : 'ORActionTestFactory',
	#category : 'Orion-Core',
	#package : 'Orion',
	#tag : 'Core'
}

{ #category : 'class building' }
ORActionJavaTestFactory >> injectMethodsIntoTestClassFor: anActionClass [

	| testClass setUpSource testSources |
	(anActionClass name = 'ORActionAdd' or:
		 (anActionClass name = 'ORActionRemove' or:
			  (anActionClass name = 'ORActionRename' or:
				   anActionClass name = 'ORActionMove'))) ifTrue: [ ^ self ].
	testClass := Smalltalk globals
		             at: (anActionClass name , 'Test') asSymbol
		             ifAbsent: [ ^ nil ].

	"Generate et compile setUpAction"
	setUpSource := self generateSetUpSourceFor: anActionClass.
	testClass compile: setUpSource classified: #running.
	testSources := #(  ).
	(anActionClass name beginsWith: 'ORActionAdd') ifTrue: [
		testSources := self generateAddTestSourcesFor: anActionClass ].
	(anActionClass name beginsWith: 'ORActionRemove') ifTrue: [
		testSources := self generateRemoveTestSourcesFor: anActionClass ].
	"(anActionClass name beginsWith: 'ORActionRename') ifTrue: [
		testSources := self generateRenameTestSourcesFor: anActionClass ].
	(anActionClass name beginsWith: 'ORActionMove') ifTrue: [
		testSources := self generateMoveTestSourcesFor: anActionClass ]."
	testSources do: [ :eachSource |
		testClass compile: eachSource classified: #tests ].
	^ testClass
]

{ #category : 'class building' }
ORActionJavaTestFactory >> testBuilder [

	| classes "fact" package |
	"fact := ORActionTestFactory new."
	package := PackageOrganizer default packageNamed: 'Orion-Java'.
	classes := package classes asOrderedCollection.


	classes do: [ :class |
		| superclassName className |
		(class name includesSubstring: 'Add') ifTrue: [
			superclassName := 'ORActionAddJavaTest' ].
		(class name includesSubstring: 'Remove') ifTrue: [
			superclassName := 'ORActionRemoveJavaTest' ].
		(class name includesSubstring: 'Move') ifTrue: [
			superclassName := 'ORActionMoveJavaTest' ].
		(class name includesSubstring: 'Rename') ifTrue: [
			superclassName := 'ORActionRenameJavaTest' ].
		className := class name , 'Test'.
		Smalltalk at: (class name , 'Test') asSymbol ifAbsent: [ nil ].
		Smalltalk classInstaller make: [ :builder |
			builder
				superclass: (Smalltalk at: superclassName asSymbol);
				name: className;
				slots: {  };
				sharedVariablesFromString: '';
				sharedPools: '';
				tag: 'Java-Model';
				package: 'Orion-Tests';
				environment: Object environment ].
		self injectMethodsIntoTestClassFor: class ]
]

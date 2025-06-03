Class {
	#name : 'ORActionTestFactory',
	#superclass : 'ORActionFactory',
	#category : 'Orion-Core',
	#package : 'Orion',
	#tag : 'Core'
}

{ #category : 'class building' }
ORActionTestFactory >> buildTestClass: aClass ofType: aType [
]

{ #category : 'class building' }
ORActionTestFactory >> orActionTestCreator [

	| classes |
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
				package: 'Orion-Tests';
				environment: Object environment ] ]
]

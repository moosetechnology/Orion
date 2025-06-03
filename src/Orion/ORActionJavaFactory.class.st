Class {
	#name : 'ORActionJavaFactory',
	#superclass : 'ORActionFactory',
	#category : 'Orion-Core',
	#package : 'Orion',
	#tag : 'Core'
}

{ #category : 'class building' }
ORActionJavaFactory >> buildAddJavaClass: aClass [

	| code setFamixLines entityName |
	aClass slots size > 0 ifFalse: [ ^ nil ].
	entityName := aClass name
		              copyFrom: 'ORActionAddJava' size + 1
		              to: aClass name size.
	setFamixLines := aClass slots collect: [ :slot |
		                 'self setFamixProperty: #' , slot name
		                 , ' on: newEntity to: self ' , slot name , '.' ].
	setFamixLines := setFamixLines
		                 inject: setFamixLines first
		                 into: [ :str :each | str , ' ' , each ].
	code := 'run

	| newEntity |
	newEntity := self orionModel new' , entityName , '.

	' , setFamixLines , '

	newEntity resetMooseName.

	entity := newEntity.
	^ entity'.
	aClass compile: code classified: 'method execution'
]

{ #category : 'class building' }
ORActionJavaFactory >> buildDelJavaClass: aClass [

	| code setFamixLines entityName |
	entityName := aClass copyFrom: 'ORActionRemoveJava' size + 1.
	setFamixLines := aClass slots do: [ :slot |
		                 ^ 'self setFamixProperty: #' , slot name
		                   , ' on: entity to: nil.' ].
	code := 'run

	' , setFamixLines , '

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity'.

	aClass compile: code classified: 'method execution'
]

{ #category : 'class building' }
ORActionJavaFactory >> buildJavaClass: aClass ofType: aType [

	self createAssessors: aClass.
	aType = 'Add' ifTrue: [ self buildAddJavaClass: aClass ].
	aType = 'Del' ifTrue: [ self buildDelJavaClass: aClass ].
	"aType = 'Move' ifTrue: [ self buildMoveClass: aClass ].
	aType = 'Ren' ifTrue: [ self buildRenClass: aClass ]"
]

{ #category : 'class building' }
ORActionJavaFactory >> orJavaActionCreatorOfType: aType [

	| classes package |
	package := PackageOrganizer default packageNamed: 'Orion'.
	classes := (Smalltalk at: ('ORAction' , aType) asSymbol)
		           allSubclasses union:
		           (Smalltalk at:
			            ('ORAction' , aType , 'NamedEntity') asSymbol)
			           allSubclasses. "copyFrom: 1 to: 15" "copyFrom: 1 to: 15"


	classes do: [ :class |
		| className classSuffix traitSlots javaSlots slots |
		class hasSubclasses ifFalse: [
			class name size >= (('ORAction' , aType , 'T') size + 1) ifTrue: [
				classSuffix := class name
					               copyFrom: ('ORAction' , aType , 'T') size + 1
					               to: class name size.

				className := 'ORAction' , aType , 'Java' , classSuffix.

				traitSlots := (Smalltalk at: ('FamixT' , classSuffix) asSymbol)
					              allSlots collect: [ :e | e name ].
				javaSlots := (Smalltalk at: ('FamixJava' , classSuffix) asSymbol)
					             allSlots collect: [ :e | e name ].
				slots := javaSlots reject: [ :e | traitSlots includes: e ].

				slots := slots reject: [ :e | e = 'mooseID' ].
				slots := slots reject: [ :e | e = 'mooseName' ].
				slots := slots reject: [ :e | e = 'mooseModel' ].
				slots := slots reject: [ :e | e = 'cache' ].
				slots := slots reject: [ :e | e = 'entityAttributes' ].

				slots isEmpty ifFalse: [
					Smalltalk classInstaller make: [ :builder |
						builder
							superclass: class;
							name: className;
							slots: (slots select: [:e | e isToOne]);
							sharedVariablesFromString: '';
							sharedPools: '';
							tag: #Actions;
							package: 'Orion';
							environment: Object environment ].
					self
						buildJavaClass:
						(Smalltalk at: className asSymbol ifAbsent: [ nil ])
						ofType: aType ] ] ] ]
]

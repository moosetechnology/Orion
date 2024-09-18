Class {
	#name : 'ORChainTest',
	#superclass : 'ORTest',
	#instVars : [
		'orion1',
		'orion2'
	],
	#category : 'Orion-Tests',
	#package : 'Orion-Tests'
}

{ #category : 'running' }
ORChainTest >> exampleModel1 [
	"A small model to make some tests"

	| pckg cls1 cls2 cls3 cls4 |

	pckg := self package: 'OrionForTest'.
	cls1 := self class: 'Class1' in: pckg.
	cls2 := self class: 'Class2' in: pckg.
	cls3 := self class: 'Class3' in: pckg.
	cls4 := self class: 'Class4' in: pckg.

	self inherit: cls2 from: cls1.
	self inherit: cls3 from: cls2.
	self inherit: cls4 from: cls3.

]

{ #category : 'running' }
ORChainTest >> inheritanceRoot: aClass [

	^aClass superclass
	ifNil: [ aClass ]
	ifNotNil: [ :superC | self inheritanceRoot: superC ]
]

{ #category : 'running' }
ORChainTest >> rename: entity to: newName [

	(ORActionRenameClass new
			orionModel: orion2 ;
			entity: entity ;
			newName: newName )
		run

]

{ #category : 'running' }
ORChainTest >> setUp [

	super setUp.

	model beForOrion.
	orion1 := model makeNewVersion
		name: 'Orion-v1' ;
		yourself.

	orion2 := model makeNewVersion
		name: 'Orion-v2' ;
		yourself.

]

{ #category : 'tests' }
ORChainTest >> testChain [

	| leaf root |

	leaf := model entityNamed: 'Class4'.
	self assert: (leaf versionLookup: orion1) identicalTo: (leaf versionLookup: orion2).
	self rename: leaf to: 'Chain4-2'.
	self deny: (leaf versionLookup: orion1) identicalTo: (leaf versionLookup: orion2).

	root := model entityNamed: 'Class1'.
	self assert: (root versionLookup: orion1) identicalTo: (root versionLookup: orion2).
	self rename: root to: 'Chain1-2'.
	self deny: (root versionLookup: orion1) identicalTo: (root versionLookup: orion2).

	self assert: (self inheritanceRoot: (leaf versionLookup: orion2)) identicalTo: (root versionLookup: orion2)
]

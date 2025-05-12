Class {
	#name : 'ORModelTest',
	#superclass : 'ORTest',
	#category : 'Orion-Tests-Core',
	#package : 'Orion-Tests',
	#tag : 'Core'
}

{ #category : 'tests' }
ORModelTest >> testBasename [

	self assert: modelV1 basename equals: 'theModel'.
	
	modelV1 name: 'theModel_v2'.
	self assert: modelV1 basename equals: 'theModel'.
]

{ #category : 'tests' }
ORModelTest >> testBeForOrion [

	modelV1 beForOrion.

	self assert: (modelV1 allWithType: FamixStPackage) size equals: 2.
	self assert: (modelV1 allWithType: FamixStClass) size equals: 6.
	self assert: (modelV1 allWithType: FamixStMethod) size equals: 4.
	self assert: (modelV1 allWithType: FamixStInheritance) size equals: 5.
	self assert: (modelV1 allWithType: FamixStInvocation) size equals: 4.
	self assert: (modelV1 allWithType: FamixStReference) size equals: 4.

	self assert: modelV1 entityStorage class equals: ORStorage.
	self assert: modelV1 entityStorage size equals: 25.

	self assert: modelV1 childrenVersions isEmpty.
]

{ #category : 'tests' }
ORModelTest >> testEnsureOrionEntityCreatesNewVersion [
	| class1 class2 model2 |

	modelV1 beForOrion.
	model2 := modelV1 makeNewVersion.

	class1 := modelV1 allClasses anyOne.
	class2 := model2 ensureVersioned: class1.

	self deny: class1 identicalTo: class2.
	self assert: class1 name equals: class2 name.
	self assert: class1 parentPackage equals: class2 parentPackage.
	self assertCollection: class1 attributes hasSameElements: class2 attributes.
	self assertCollection: class1 methods hasSameElements: class2 methods.
]

{ #category : 'tests' }
ORModelTest >> testEnsureOrionEntityDoesNotDuplicate [
	| class1 class2 model2 |

	modelV1 beForOrion.
	model2 := modelV1 makeNewVersion.

	self assert: modelV1 allClasses size equals: model2 allClasses size.

	class1 := modelV1 allClasses anyOne.
	class2 := model2 ensureVersioned: class1.

	self deny: class1 identicalTo: class2.
	self assert: class2 identicalTo: (model2 ensureVersioned: class1).
	self assert: class2 identicalTo: (model2 ensureVersioned: class2).

]

{ #category : 'tests' }
ORModelTest >> testEnsureOrionEntityDoesNotIncreaseEntitySize [
	| model2 |

	modelV1 beForOrion.
	model2 := modelV1 makeNewVersion.

	self assert: model2 allClasses size equals: modelV1 allClasses size.

	model2 ensureVersioned: (modelV1 allClasses anyOne).

	self assert: model2 allClasses size equals: modelV1 allClasses size.

]

{ #category : 'tests' }
ORModelTest >> testEntitiesCopiedInChildVersion [

	| v2 |
	modelV1 beForOrion.
	v2 := modelV1 makeNewVersion.

	self assert: v2 entities size equals: modelV1 entities size.
	self deny: modelV1 entities size equals: 0
]

{ #category : 'tests' }
ORModelTest >> testIsFirstVersion [
	| v2 |
	modelV1 beForOrion.
	self assert: modelV1 isFirstVersion.

	v2 := modelV1 makeNewVersion name: 'v2'.
	self assert: modelV1 isFirstVersion.
	self deny: v2 isFirstVersion.
]

{ #category : 'tests' }
ORModelTest >> testIsLastVersion [
	| v2 |
	modelV1 beForOrion.
	self assert: modelV1 isLastVersion.

	v2 := modelV1 makeNewVersion name: 'v2'.
	self deny: modelV1 isLastVersion.
	self assert: v2 isLastVersion.
]

{ #category : 'tests' }
ORModelTest >> testMakeNewVersion [
	| v2 |
	modelV1 beForOrion.
	self assert: modelV1 childrenVersions size equals: 0.

	v2 := modelV1 makeNewVersion name: 'v2'.
	self assert: modelV1 childrenVersions size equals: 1.
	self assert: modelV1 childrenVersions anyOne equals: v2.
	self assert: v2 parentVersion equals: modelV1.
]

{ #category : 'tests' }
ORModelTest >> testMakeNewVersionEntities [

	| ent |
	ent := modelV1 entities detect: [ :e | e name = 'Class1' ].
	self assert: ent mooseModel equals: modelV1.
	self assert: ent orionModel equals: modelV1.

	modelV1 beForOrion.
	modelV1 makeNewVersion name: 'v2'.

	self assert: ent mooseModel equals: modelV1.
	self assert: ent orionModel equals: modelV1.
]

{ #category : 'tests' }
ORModelTest >> testMakeNewVersionName [

	| v2 |
	modelV1 beForOrion.
	v2 := modelV1 makeNewVersion.
	self assert: modelV1 basename equals: v2 basename.
	self deny: modelV1 name equals: v2 name.
]

{ #category : 'tests' }
ORModelTest >> testModelContainsOrion [

	| ent v2 |
	ent := modelV1 entities detect: [ :e | e name = 'Class1' ].

	modelV1 beForOrion.
	self assert: (modelV1 containsOrion: ent).

	v2 := modelV1 makeNewVersion name: 'v2'.

	self assert: (modelV1 containsOrion: ent).
	self deny: (v2 containsOrion: ent).
]

{ #category : 'tests' }
ORModelTest >> testOrionCopy [

	| class1 class2 |

	class1 := modelV1 allClasses anyOne.
	class2 := class1 orionCopy.

	self deny: class1 identicalTo: class2.
	self assert: class1 name equals: class2 name.
	self assert: class1 parentPackage equals: class2 parentPackage.
	self assertCollection: class1 attributes hasSameElements: class2 attributes.
	self assertCollection: class1 methods hasSameElements: class2 methods.
]

Class {
	#name : 'ORModelTest',
	#superclass : 'ORTest',
	#category : 'OrionTest',
	#package : 'OrionTest'
}

{ #category : 'tests' }
ORModelTest >> testBasename [

	self assert: model basename equals: 'theModel'.
	
	model name: 'theModel_v2'.
	self assert: model basename equals: 'theModel'.
]

{ #category : 'tests' }
ORModelTest >> testEntitiesCopiedInChildVersion [

	| v2 |
	v2 := model makeNewVersion.

	self assert: v2 entities size equals: model entities size.
	self deny: model entities size equals: 0
]

{ #category : 'tests' }
ORModelTest >> testIsFirstVersion [
	| v2 |
	self assert: model isFirstVersion.

	v2 := model makeNewVersion name: 'v2'.
	self assert: model isFirstVersion.
	self deny: v2 isFirstVersion.
]

{ #category : 'tests' }
ORModelTest >> testIsLastVersion [
	| v2 |
	self assert: model isLastVersion.

	v2 := model makeNewVersion name: 'v2'.
	self deny: model isLastVersion.
	self assert: v2 isLastVersion.
]

{ #category : 'tests' }
ORModelTest >> testMakeNewVersion [
	| v2 |
	self assert: model childrenVersions size equals: 0.

	v2 := model makeNewVersion name: 'v2'.
	self assert: model childrenVersions size equals: 1.
	self assert: model childrenVersions anyOne equals: v2.
	self assert: v2 parentVersion equals: model.
]

{ #category : 'tests' }
ORModelTest >> testMakeNewVersionName [

	| v2 |
	v2 := model makeNewVersion.
	self assert: model basename equals: v2 basename.
	self deny: model name equals: v2 name.
]

{ #category : 'tests' }
ORModelTest >> testModelCreation [

	self assert: model size equals: 11.

	self assert: model entityStorage class equals: ORStorage.
	self assert: model entityStorage size equals: 11.

	self assert: model childrenVersions isEmpty.
]

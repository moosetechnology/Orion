Class {
	#name : 'ORModelTest',
	#superclass : 'ORTest',
	#category : 'OrionTest',
	#package : 'OrionTest'
}

{ #category : 'testing OrionModel' }
ORModelTest >> testBasename [

	self assert: model basename equals: 'theModel'.
	
	model name: 'theModel_v2'.
	self assert: model basename equals: 'theModel'.
]

{ #category : 'testing OrionModel' }
ORModelTest >> testEntitiesCopiedInChildVersion [

	| v2 |
	v2 := model makeNewVersion.

	self assert: v2 entities size equals: model entities size.
	self deny: model entities size equals: 0
]

{ #category : 'testing OrionModel' }
ORModelTest >> testIsFirstVersion [
	| v2 |
	self assert: model isFirstVersion.

	v2 := model makeNewVersion name: 'v2'.
	self assert: model isFirstVersion.
	self deny: v2 isFirstVersion.
]

{ #category : 'testing OrionModel' }
ORModelTest >> testIsLastVersion [
	| v2 |
	self assert: model isLastVersion.

	v2 := model makeNewVersion name: 'v2'.
	self deny: model isLastVersion.
	self assert: v2 isLastVersion.
]

{ #category : 'testing OrionModel' }
ORModelTest >> testMakeNewVersion [
	| v2 |
	self assert: model childrenVersions size equals: 0.

	v2 := model makeNewVersion name: 'v2'.
	self assert: model childrenVersions size equals: 1.
	self assert: model childrenVersions anyOne equals: v2.
	self assert: v2 parentVersion equals: model.
]

{ #category : 'testing OrionModel' }
ORModelTest >> testMakeNewVersionName [

	| v2 |
	v2 := model makeNewVersion.
	self assert: model basename equals: v2 basename.
	self deny: model name equals: v2 name.
]

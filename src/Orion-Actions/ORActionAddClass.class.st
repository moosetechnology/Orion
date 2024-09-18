"
A ORActionAddClass is a generated class useful to Orion. It corresponds to an action that can be performed on a type of model element. See OrionGenerator in Moose/Orion on SmalltalkHub for more information.
"
Class {
	#name : 'ORActionAddClass',
	#superclass : 'ORActionAddEntity',
	#instVars : [
		'definedAnnotationTypes',
		'typeAliases',
		'instances',
		'declaredSourceLanguage',
		'container',
		'annotationInstances',
		'structuresWithDeclaredType',
		'isStub',
		'parentPackage',
		'subInheritances',
		'types',
		'isInterface',
		'attributes',
		'modifiers',
		'behavioursWithDeclaredType',
		'functions',
		'comments',
		'incomingReferences',
		'superInheritances',
		'receivingInvocations',
		'sourceAnchor',
		'methods',
		'name'
	],
	#category : 'Orion-Actions',
	#package : 'Orion-Actions'
}

{ #category : 'accessing - generated' }
ORActionAddClass >> isStub [
	^ isStub
]

{ #category : 'accessing - generated' }
ORActionAddClass >> isStub: aValue [
	isStub := aValue
]

{ #category : 'accessing - generated' }
ORActionAddClass >> name [
	^ name
]

{ #category : 'accessing - generated' }
ORActionAddClass >> name: aValue [
	name := aValue
]

{ #category : 'accessing - generated' }
ORActionAddClass >> parentPackage [
	^ parentPackage
]

{ #category : 'accessing - generated' }
ORActionAddClass >> parentPackage: aValue [
	parentPackage := aValue
]

{ #category : 'printing' }
ORActionAddClass >> printWorkspace [

	^ super printWorkspace , self entity mooseName, ' in ', self parentPackage mooseName
]

{ #category : 'method execution - generated' }
ORActionAddClass >> run [

	| newClass |
	newClass := FamixStClass new.
	self orionModel add: newClass.

	self isStub ifNotNil: [ :bool | newClass isStub: bool ].

	self name ifNotNil: [ :string | newClass name: string ].

	self parentPackage ifNotNil: [ :oldParent || newParent |
		newParent := self orionModel ensureOrionEntity: oldParent.
		newClass setWithoutInverse: #parentPackage value: newParent.
		newParent addWithoutInverse: #childEntities value: newClass
	].

	entity := newClass.
	^ entity
]

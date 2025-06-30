"
An ORActionAdd is an Orion abstract class for add  actions

"
Class {
	#name : 'ORActionAdd',
	#superclass : 'ORAction',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAdd >> createVersionnedEntitySelector [

	self subclassResponsibility 
]

{ #category : 'testing' }
ORActionAdd >> isAddition [
	^true
]

{ #category : 'method execution' }
ORActionAdd >> run [

	entity := self orionModel
		perform: self createVersionnedEntitySelector.

]

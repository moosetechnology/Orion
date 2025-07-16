Class {
	#name : 'ORActionAddNamedEntityJava',
	#superclass : 'ORActionAddJava',
	#instVars : [
		'name'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddNamedEntityJava >> createVersionnedEntitySelector [

	self subclassResponsibility
]

{ #category : 'accessing' }
ORActionAddNamedEntityJava >> name [

	^name.
]

{ #category : 'accessing' }
ORActionAddNamedEntityJava >> name: aName [

	name := aName .
]

{ #category : 'method execution' }
ORActionAddNamedEntityJava >> run [ 

	super run.

	entity name: self name.
	entity resetMooseName 
]

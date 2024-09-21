Class {
	#name : 'ORActionMove',
	#superclass : 'ORAction',
	#instVars : [
		'newContainer'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionMove >> isMove [
	^true
]

{ #category : 'accessing' }
ORActionMove >> to [

	^newContainer 
]

{ #category : 'accessing' }
ORActionMove >> to: anObject [

	newContainer := anObject 
]

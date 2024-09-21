Class {
	#name : 'ORActionMove',
	#superclass : 'ORAction',
	#instVars : [
		'newContainer'
	],
	#category : 'Orion-Actions',
	#package : 'Orion-Actions'
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

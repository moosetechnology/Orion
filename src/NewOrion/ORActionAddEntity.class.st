"
A ORActionAddEntity is an Orion abstract class for adding entity actions
"
Class {
	#name : 'ORActionAddEntity',
	#superclass : 'ORActionAdd',
	#category : 'NewOrion-actions',
	#package : 'NewOrion',
	#tag : 'actions'
}

{ #category : 'initialize-release' }
ORActionAddEntity >> initialize [
	super initialize.
	isStub := false
]

{ #category : 'accessing' }
ORActionAddEntity >> newName [
	self 
		deprecated: 'Use name instead'
		on: 	'21 December 2016' 
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver newName' -> '`@receiver name'.
	^ self name
]

{ #category : 'accessing' }
ORActionAddEntity >> newName: aString [
	self
		deprecated: 'Use name instead'
		on: '21 December 2016'
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver newName: `@arg' -> '`@receiver name: `@arg'.
	self name: aString
]

{ #category : 'accessing' }
ORActionAddEntity >> parentType [
	self deprecated: 'Use an item of parentSelectors instead' on: '21 December 2016' in: 'Pharo-6.0-60328-'.
	^ self halt
]

{ #category : 'accessing' }
ORActionAddEntity >> parentType: anEntity [
	self
		deprecated: 'Use an item of parentSelectors instead'
		on: '21 December 2016'
		in: 'Pharo-6.0-60328-'.
	^ anEntity parentSelectors halt.
]

{ #category : 'printing' }
ORActionAddEntity >> printWorkspace [

	^ super printWorkspace , self entity mooseName, ' in ', self parentType mooseName
]

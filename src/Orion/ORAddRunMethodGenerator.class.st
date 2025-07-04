Class {
	#name : 'ORAddRunMethodGenerator',
	#superclass : 'ORRunMethodGenerator',
	#category : 'Orion-Code-Generation',
	#package : 'Orion',
	#tag : 'Code-Generation'
}

{ #category : 'generating' }
ORAddRunMethodGenerator >> generateRunMethodFor: aClass [

	| slotsLines code |
	aClass slots isEmpty ifTrue: [ ^ '' ].

	slotsLines := aClass slots collect: [ :slot |
		              Character tab asString , 'entity ' , slot name
		              , ': self ' , slot name , '.' , Character cr asString ].
	slotsLines := '' join: slotsLines.

	code := 'run' , String cr, String cr.
	code := code , String tab , 'super run.' , String cr.
	code := code , slotsLines asString, String cr.
	code := code , String tab , '^entity.'.
	^ code
]

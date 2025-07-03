Class {
	#name : 'ORRemoveRunMethodGenerator',
	#superclass : 'ORRunMethodGenerator',
	#category : 'Orion-Code-Generation',
	#package : 'Orion',
	#tag : 'Code-Generation'
}

{ #category : 'generating' }
ORRemoveRunMethodGenerator >> generateRunMethodFor: aClass [

	| slotsLines code |
	aClass slots isEmpty ifTrue: [ ^ '' ].

	slotsLines := aClass slots collect: [ :slot |
		              Character tab asString , 'entity ' , slot name
		              , ': nil.' , Character cr asString ].
	slotsLines := '' join: slotsLines.

	code := 'run' , String cr, String cr.
	code := code , String tab , 'super run.' , String cr.
	code := code , slotsLines asString, String cr.
	code := code , String tab
	        ,
	        'self orionModel remove: (self orionModel versionLookup: self entity).'
	        , String cr, String cr.
	code := code , String tab , '^entity.'.
	^ code
]

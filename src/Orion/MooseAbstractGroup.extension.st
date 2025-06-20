Extension { #name : 'MooseAbstractGroup' }

{ #category : '*Orion' }
MooseAbstractGroup >> allAnnotationInstanceAttributes [

	^ self allUsing: FamixTAnnotationInstanceAttribute .
]

{ #category : '*Orion' }
MooseAbstractGroup >> allAnnotationTypeAttributes [

	^ self allUsing: FamixTAnnotationTypeAttribute .
]

{ #category : '*Orion' }
MooseAbstractGroup >> allConcretizations [

	^ self allUsing: FamixTConcretization .
]

{ #category : '*Orion' }
MooseAbstractGroup >> allExceptions [

	^ self allUsing: FamixTException
]

{ #category : '*Orion' }
MooseAbstractGroup >> allImplementations [

	^ self allUsing: FamixTImplementation .
]

{ #category : '*Orion' }
MooseAbstractGroup >> allInheritances [
	
	^self allUsing: FamixTInheritance .
]

{ #category : '*Orion' }
MooseAbstractGroup >> allParameterConcretizations [

	^self allUsing: FamixTParameterConcretization .
]

"
I add a new FamixJavaMethod in a MooseModel
I need the following properties of the new method

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`isSynchronized`
-`isAbstract`
-`isClassSide`
-`isFinal`
-`kind`
-`visibility`
-`incomingImports`
-`comments`
-`caughtExceptions`
-`declaredExceptions`
-`thrownExceptions`
"
Class {
	#name : 'ORActionAddJavaMethod',
	#superclass : 'ORActionAddTMethod',
	#instVars : [
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'isSynchronized',
		'isAbstract',
		'isClassSide',
		'isFinal',
		'kind',
		'visibility',
		'incomingImports',
		'comments',
		'caughtExceptions',
		'declaredExceptions',
		'thrownExceptions'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionAddJavaMethod >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> caughtExceptions [ ^caughtExceptions
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> caughtExceptions: aValue [ caughtExceptions := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> declaredExceptions [ ^declaredExceptions
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> declaredExceptions: aValue [ declaredExceptions := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isSynchronized [ ^isSynchronized
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isSynchronized: aValue [ isSynchronized := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> kind [ ^kind
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> kind: aValue [ kind := aValue
]

{ #category : 'method execution' }
ORActionAddJavaMethod >> run [

	| newEntity |
	newEntity := self orionModel newMethod.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #types on: newEntity to: self types. self setFamixProperty: #definedAnnotationTypes on: newEntity to: self definedAnnotationTypes. self setFamixProperty: #isSynchronized on: newEntity to: self isSynchronized. self setFamixProperty: #isAbstract on: newEntity to: self isAbstract. self setFamixProperty: #isClassSide on: newEntity to: self isClassSide. self setFamixProperty: #isFinal on: newEntity to: self isFinal. self setFamixProperty: #kind on: newEntity to: self kind. self setFamixProperty: #visibility on: newEntity to: self visibility. self setFamixProperty: #incomingImports on: newEntity to: self incomingImports. self setFamixProperty: #comments on: newEntity to: self comments. self setFamixProperty: #caughtExceptions on: newEntity to: self caughtExceptions. self setFamixProperty: #declaredExceptions on: newEntity to: self declaredExceptions. self setFamixProperty: #thrownExceptions on: newEntity to: self thrownExceptions.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> thrownExceptions [ ^thrownExceptions
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> thrownExceptions: aValue [ thrownExceptions := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> visibility: aValue [ visibility := aValue
]

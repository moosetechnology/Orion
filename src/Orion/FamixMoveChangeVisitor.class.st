Class {
	#name : 'FamixMoveChangeVisitor',
	#superclass : 'Object',
	#traits : 'FamixTVisitor + FamixJavaTVisitor',
	#classTraits : 'FamixTVisitor classTrait + FamixJavaTVisitor classTrait',
	#category : 'Orion-Visitors',
	#package : 'Orion',
	#tag : 'Visitors'
}

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaAccess: aAccess [

	^ ORActionMoveTAccess new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaAnnotationInstance: aAnnotationInstance [

	^ ORActionMoveJavaAnnotationInstance new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaAnnotationInstanceAttribute: aAnnotationInstanceAttribute [

	^ ORActionMoveJavaAnnotationInstanceAttribute new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaAnnotationType: aAnnotationType [

	^ ORActionMoveJavaAnnotationType new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaAnnotationTypeAttribute: aAnnotationTypeAttribute [

	^ ORActionMoveJavaAnnotationTypeAttribute new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaAttribute: aAttribute [

	^ ORActionMoveJavaAttribute new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaClass: aClass [

	^ ORActionMoveJavaClass new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaComment: aComment [

	^ ORActionMoveTComment new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaConcretization: aConcretization [

	^ ORActionMoveTConcretization new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaEnum: aEnum [

	^ ORActionMoveJavaEnum new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaEnumValue: aEnumValue [

	^ ORActionMoveJavaEnumValue new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaException: aException [

	^ ORActionMoveJavaException new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaImplicitVariable: aImplicitVariable [

	^ ORActionMoveJavaImplicitVariable new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaImport: aImport [

	^ ORActionMoveTImport new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaInheritance: aInheritance [

	^ ORActionMoveTInheritance new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaInvocation: aInvocation [

	^ ORActionMoveTInvocation new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaLocalVariable: aLocalVariable [

	^ ORActionMoveJavaLocalVariable new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaMethod: aMethod [

	^ ORActionMoveJavaMethod new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaPackage: aPackage [

	^ ORActionMoveJavaPackage new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaParameter: aParameter [

	^ ORActionMoveJavaParameter new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaParameterConcretization: aParameterConcretization [

	^ ORActionMoveTParameterConcretization new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaPrimitiveType: aPrimitiveType [

	^ ORActionMoveJavaPrimitiveType new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaReference: aReference [

	^ ORActionMoveTReference new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaSourceLanguage: aSourceLanguage [

	^ ORActionMoveTSourceLanguage new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaType: aType [

	^ ORActionMoveJavaType new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixJavaUnknownVariable: aUnknownVariable [

	^ ORActionMoveJavaUnknownVariable new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTAccess: anAccess [  ^ORActionMoveTAccess new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTAnnotationInstance: anAnnotationInstance [  ^ORActionMoveTAnnotationInstance new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTAnnotationInstanceAttribute: anAnnotationInstanceAttribute [  ^ORActionMoveTAnnotationInstanceAttribute new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTAnnotationType: anAnnotationType [  ^ORActionMoveTAnnotationType new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTAnnotationTypeAttribute: anAnnotationTypeAttribute [  ^ORActionMoveTAnnotationTypeAttribute new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTAttribute: anAttribute [  ^ORActionMoveTAttribute new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTClass: anClass [  ^ORActionMoveTClass new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTComment: anComment [  ^ORActionMoveTComment new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTConcretization: anConcretization [  ^ORActionMoveTConcretization new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTEnum: anEnum [  ^ORActionMoveTEnum new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTEnumValue: anEnumValue [  ^ORActionMoveTEnumValue new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTException: anException [  ^ORActionMoveTException new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTImplementation: anImplementation [  ^ORActionMoveTImplementation new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTImplicitVariable: anImplicitVariable [  ^ORActionMoveTImplicitVariable new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTImport: anImport [

	^ ORActionMoveTImport new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTInheritance: anInheritance [  ^ORActionMoveTInheritance new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTInvocation: anInvocation [  ^ORActionMoveTInvocation new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTLocalVariable: anLocalVariable [  ^ORActionMoveTLocalVariable new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTMethod: anMethod [  ^ORActionMoveTMethod new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTPackage: anPackage [  ^ORActionMoveTPackage new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTParameter: anParameter [  ^ORActionMoveTParameter new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTParameterConcretization: anParameterConcretization [  ^ORActionMoveTParameterConcretization new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTPrimitiveType: anPrimitiveType [  ^ORActionMoveTPrimitiveType new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTReference: anReference [  ^ORActionMoveTReference new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTSourceLanguage: anSourceLanguage [  ^ORActionMoveTSourceLanguage new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTType: anType [  ^ORActionMoveTType new.
]

{ #category : 'visiting' }
FamixMoveChangeVisitor >> visitFamixTUnknownVariable: anUnknownVariable [  ^ORActionMoveTUnknownVariable new.
]

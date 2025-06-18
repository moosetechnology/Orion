"
The visitor to create the corresponding ORAction for an FamixAddChange
"
Class {
	#name : 'FamixAddChangeVisitor',
	#superclass : 'Object',
	#traits : 'FamixTVisitor + FamixJavaTVisitor',
	#classTraits : 'FamixTVisitor classTrait + FamixJavaTVisitor classTrait',
	#category : 'Orion-Visitors',
	#package : 'Orion',
	#tag : 'Visitors'
}

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaAccess: aAccess [ ^ORActionAddTAccess new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaAnnotationInstance: aAnnotationInstance [  ^ORActionAddJavaAnnotationInstance new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaAnnotationInstanceAttribute: aAnnotationInstanceAttribute [  ^ORActionAddJavaAnnotationInstanceAttribute new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaAnnotationType: aAnnotationType [  ^ORActionAddJavaAnnotationType new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaAnnotationTypeAttribute: aAnnotationTypeAttribute [  ^ORActionAddJavaAnnotationTypeAttribute new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaAttribute: aAttribute [  ^ORActionAddJavaAttribute new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaClass: aClass [  ^ORActionAddJavaClass new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaComment: aComment [ ^ORActionAddTComment new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaConcretization: aConcretization [ ^ORActionAddTConcretization new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaEnum: aEnum [  ^ORActionAddJavaEnum new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaEnumValue: aEnumValue [  ^ORActionAddJavaEnumValue new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaException: aException [  ^ORActionAddJavaException new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaImplementation: aFamixJavaImplementation [

	^ORActionAddTImplementation new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaImplicitVariable: aImplicitVariable [  ^ORActionAddJavaImplicitVariable new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaImport: aImport [ ^ORActionAddTImport new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaInheritance: aInheritance [ ^ORActionAddTInheritance new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaInvocation: aInvocation [ ^ORActionAddTInvocation new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaLocalVariable: aLocalVariable [  ^ORActionAddJavaLocalVariable new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaMethod: aMethod [  ^ORActionAddJavaMethod new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaPackage: aPackage [  ^ORActionAddJavaPackage new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaParameter: aParameter [  ^ORActionAddJavaParameter new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaParameterConcretization: aParameterConcretization [ ^ORActionAddTParameterConcretization new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaPrimitiveType: aPrimitiveType [  ^ORActionAddJavaPrimitiveType new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaReference: aReference [ ^ORActionAddTReference new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaSourceLanguage: aSourceLanguage [ ^ORActionAddTSourceLanguage new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaType: aType [  ^ORActionAddJavaType new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixJavaUnknownVariable: aUnknownVariable [  ^ORActionAddJavaUnknownVariable new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTAccess: anAccess [  ^ORActionAddTAccess new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTAnnotationInstance: anAnnotationInstance [  ^ORActionAddTAnnotationInstance new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTAnnotationInstanceAttribute: anAnnotationInstanceAttribute [  ^ORActionAddTAnnotationInstanceAttribute new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTAnnotationType: anAnnotationType [  ^ORActionAddTAnnotationType new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTAnnotationTypeAttribute: anAnnotationTypeAttribute [  ^ORActionAddTAnnotationTypeAttribute new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTAttribute: anAttribute [  ^ORActionAddTAttribute new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTClass: anClass [  ^ORActionAddTClass new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTComment: anComment [  ^ORActionAddTComment new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTConcretization: anConcretization [  ^ORActionAddTConcretization new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTEnum: anEnum [  ^ORActionAddTEnum new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTEnumValue: anEnumValue [  ^ORActionAddTEnumValue new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTException: anException [  ^ORActionAddTException new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTImplementation: anImplementation [  ^ORActionAddTImplementation new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTImplicitVariable: anImplicitVariable [  ^ORActionAddTImplicitVariable new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTImport: anImport [  ^ORActionAddTImport new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTInheritance: anInheritance [  ^ORActionAddTInheritance new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTInvocation: anInvocation [  ^ORActionAddTInvocation new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTLocalVariable: anLocalVariable [  ^ORActionAddTLocalVariable new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTMethod: anMethod [  ^ORActionAddTMethod new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTPackage: anPackage [  ^ORActionAddTPackage new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTParameter: anParameter [  ^ORActionAddTParameter new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTParameterConcretization: anParameterConcretization [  ^ORActionAddTParameterConcretization new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTPrimitiveType: anPrimitiveType [  ^ORActionAddTPrimitiveType new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTReference: anReference [  ^ORActionAddTReference new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTSourceLanguage: anSourceLanguage [  ^ORActionAddTSourceLanguage new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTType: anType [  ^ORActionAddTType new.
]

{ #category : 'visiting' }
FamixAddChangeVisitor >> visitFamixTUnknownVariable: anUnknownVariable [  ^ORActionAddTUnknownVariable new.
]

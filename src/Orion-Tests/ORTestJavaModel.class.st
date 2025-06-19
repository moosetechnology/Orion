Class {
	#name : 'ORTestJavaModel',
	#superclass : 'TestCase',
	#instVars : [
		'modelV1',
		'modelV2'
	],
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORTestJavaModel >> createBasicEntities [
	"PHASE 1 : On ne fait que créer et ajouter chaque entité au modèle."

	| pkg testClass testMethod otherClass stringType attr param localVar implicitVar unknownVar |
	
	"Package"
	pkg := FamixJavaPackage named: 'testPackage'.
	modelV1 add: pkg.

	"Types"
	"stringType := FamixJavaPrimitiveType named: 'String'.
	modelV1 add: stringType."

	"Classes"
	testClass := FamixJavaClass named: 'TestClass'.
	modelV1 add: testClass.

	otherClass := FamixJavaClass named: 'OtherClass'.
	modelV1 add: otherClass.

	"Method"
	testMethod := FamixJavaMethod named: 'testMethod'.
	modelV1 add: testMethod.

	"Attribute"
	attr := FamixJavaAttribute named: 'testAttribute'.
	modelV1 add: attr.

	"Parameter"
	param := FamixJavaParameter named: 'testParam'.
	modelV1 add: param.

	"Local variable"
	localVar := FamixJavaLocalVariable named: 'testLocalVar'.
	modelV1 add: localVar.

	"Implicit Variable (this)"
	implicitVar := FamixJavaImplicitVariable named: 'this'.
	modelV1 add: implicitVar.

	"Unknown Variable"
	unknownVar := FamixJavaUnknownVariable named: 'someUnknownVar'.
	modelV1 add: unknownVar.
]

{ #category : 'running' }
ORTestJavaModel >> setUp [
	super setUp.

	modelV1 := (ORTestJavaModel new) buildFullTestModel.
	modelV1 name: 'theModel'.
	
	modelV1 beForOrion.
	modelV2 := modelV1 makeNewVersion name: #orionModel.

	self setUpAction
]

{ #category : 'initialization' }
ORTestJavaModel >> setUpAction [

	self subclassResponsibility 
]

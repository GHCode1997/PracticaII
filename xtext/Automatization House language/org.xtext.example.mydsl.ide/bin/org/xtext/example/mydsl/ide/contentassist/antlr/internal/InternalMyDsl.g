/*
 * generated by Xtext 2.24.0-SNAPSHOT
 */
grammar InternalMyDsl;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.xtext.example.mydsl.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.xtext.example.mydsl.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.xtext.example.mydsl.services.MyDslGrammarAccess;

}
@parser::members {
	private MyDslGrammarAccess grammarAccess;

	public void setGrammarAccess(MyDslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleModel
entryRuleModel
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getModelAccess().getDeclarationsAssignment()); }
		(rule__Model__DeclarationsAssignment)*
		{ after(grammarAccess.getModelAccess().getDeclarationsAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDeclaration
entryRuleDeclaration
:
{ before(grammarAccess.getDeclarationRule()); }
	 ruleDeclaration
{ after(grammarAccess.getDeclarationRule()); } 
	 EOF 
;

// Rule Declaration
ruleDeclaration 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDeclarationAccess().getAlternatives()); }
		(rule__Declaration__Alternatives)
		{ after(grammarAccess.getDeclarationAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDevice
entryRuleDevice
:
{ before(grammarAccess.getDeviceRule()); }
	 ruleDevice
{ after(grammarAccess.getDeviceRule()); } 
	 EOF 
;

// Rule Device
ruleDevice 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDeviceAccess().getGroup()); }
		(rule__Device__Group__0)
		{ after(grammarAccess.getDeviceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleState
entryRuleState
:
{ before(grammarAccess.getStateRule()); }
	 ruleState
{ after(grammarAccess.getStateRule()); } 
	 EOF 
;

// Rule State
ruleState 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStateAccess().getNameAssignment()); }
		(rule__State__NameAssignment)
		{ after(grammarAccess.getStateAccess().getNameAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRule
entryRuleRule
:
{ before(grammarAccess.getRuleRule()); }
	 ruleRule
{ after(grammarAccess.getRuleRule()); } 
	 EOF 
;

// Rule Rule
ruleRule 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRuleAccess().getGroup()); }
		(rule__Rule__Group__0)
		{ after(grammarAccess.getRuleAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleQualifiedName
entryRuleQualifiedName
:
{ before(grammarAccess.getQualifiedNameRule()); }
	 ruleQualifiedName
{ after(grammarAccess.getQualifiedNameRule()); } 
	 EOF 
;

// Rule QualifiedName
ruleQualifiedName 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getQualifiedNameAccess().getGroup()); }
		(rule__QualifiedName__Group__0)
		{ after(grammarAccess.getQualifiedNameAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Declaration__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeclarationAccess().getDeviceParserRuleCall_0()); }
		ruleDevice
		{ after(grammarAccess.getDeclarationAccess().getDeviceParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getDeclarationAccess().getRuleParserRuleCall_1()); }
		ruleRule
		{ after(grammarAccess.getDeclarationAccess().getRuleParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group__0__Impl
	rule__Device__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getDeviceKeyword_0()); }
	'Device'
	{ after(grammarAccess.getDeviceAccess().getDeviceKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group__1__Impl
	rule__Device__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getNameAssignment_1()); }
	(rule__Device__NameAssignment_1)
	{ after(grammarAccess.getDeviceAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group__2__Impl
	rule__Device__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getCanKeyword_2()); }
	'can'
	{ after(grammarAccess.getDeviceAccess().getCanKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group__3__Impl
	rule__Device__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getBeKeyword_3()); }
	'be'
	{ after(grammarAccess.getDeviceAccess().getBeKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getGroup_4()); }
	(rule__Device__Group_4__0)?
	{ after(grammarAccess.getDeviceAccess().getGroup_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Device__Group_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group_4__0__Impl
	rule__Device__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getStatesAssignment_4_0()); }
	(rule__Device__StatesAssignment_4_0)
	{ after(grammarAccess.getDeviceAccess().getStatesAssignment_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getGroup_4_1()); }
	(rule__Device__Group_4_1__0)*
	{ after(grammarAccess.getDeviceAccess().getGroup_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Device__Group_4_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group_4_1__0__Impl
	rule__Device__Group_4_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group_4_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getCommaKeyword_4_1_0()); }
	','
	{ after(grammarAccess.getDeviceAccess().getCommaKeyword_4_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group_4_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group_4_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group_4_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getStatesAssignment_4_1_1()); }
	(rule__Device__StatesAssignment_4_1_1)
	{ after(grammarAccess.getDeviceAccess().getStatesAssignment_4_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Rule__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__0__Impl
	rule__Rule__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getRuleKeyword_0()); }
	'Rule'
	{ after(grammarAccess.getRuleAccess().getRuleKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__1__Impl
	rule__Rule__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getDescriptionAssignment_1()); }
	(rule__Rule__DescriptionAssignment_1)
	{ after(grammarAccess.getRuleAccess().getDescriptionAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__2__Impl
	rule__Rule__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getWhenKeyword_2()); }
	'when'
	{ after(grammarAccess.getRuleAccess().getWhenKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__3__Impl
	rule__Rule__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getWhenAssignment_3()); }
	(rule__Rule__WhenAssignment_3)
	{ after(grammarAccess.getRuleAccess().getWhenAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__4__Impl
	rule__Rule__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getThenKeyword_4()); }
	'then'
	{ after(grammarAccess.getRuleAccess().getThenKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getThenAssignment_5()); }
	(rule__Rule__ThenAssignment_5)
	{ after(grammarAccess.getRuleAccess().getThenAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedName__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedName__Group__0__Impl
	rule__QualifiedName__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
	{ after(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedName__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedNameAccess().getGroup_1()); }
	(rule__QualifiedName__Group_1__0)*
	{ after(grammarAccess.getQualifiedNameAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedName__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedName__Group_1__0__Impl
	rule__QualifiedName__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); }
	'.'
	{ after(grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedName__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
	{ after(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__DeclarationsAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getDeclarationsDeclarationParserRuleCall_0()); }
		ruleDeclaration
		{ after(grammarAccess.getModelAccess().getDeclarationsDeclarationParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeviceAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getDeviceAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__StatesAssignment_4_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeviceAccess().getStatesStateParserRuleCall_4_0_0()); }
		ruleState
		{ after(grammarAccess.getDeviceAccess().getStatesStateParserRuleCall_4_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__StatesAssignment_4_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeviceAccess().getStatesStateParserRuleCall_4_1_1_0()); }
		ruleState
		{ after(grammarAccess.getDeviceAccess().getStatesStateParserRuleCall_4_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getNameIDTerminalRuleCall_0()); }
		RULE_ID
		{ after(grammarAccess.getStateAccess().getNameIDTerminalRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__DescriptionAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getDescriptionSTRINGTerminalRuleCall_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getRuleAccess().getDescriptionSTRINGTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__WhenAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getWhenStateCrossReference_3_0()); }
		(
			{ before(grammarAccess.getRuleAccess().getWhenStateQualifiedNameParserRuleCall_3_0_1()); }
			ruleQualifiedName
			{ after(grammarAccess.getRuleAccess().getWhenStateQualifiedNameParserRuleCall_3_0_1()); }
		)
		{ after(grammarAccess.getRuleAccess().getWhenStateCrossReference_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__ThenAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getThenStateCrossReference_5_0()); }
		(
			{ before(grammarAccess.getRuleAccess().getThenStateQualifiedNameParserRuleCall_5_0_1()); }
			ruleQualifiedName
			{ after(grammarAccess.getRuleAccess().getThenStateQualifiedNameParserRuleCall_5_0_1()); }
		)
		{ after(grammarAccess.getRuleAccess().getThenStateCrossReference_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

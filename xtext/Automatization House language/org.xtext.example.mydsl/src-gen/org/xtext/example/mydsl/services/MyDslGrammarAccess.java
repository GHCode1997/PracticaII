/*
 * generated by Xtext 2.24.0-SNAPSHOT
 */
package org.xtext.example.mydsl.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
import org.eclipse.xtext.Alternatives;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.CrossReference;
import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.GrammarUtil;
import org.eclipse.xtext.Group;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.TerminalRule;
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class MyDslGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.mydsl.MyDsl.Model");
		private final Assignment cDeclarationsAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cDeclarationsDeclarationParserRuleCall_0 = (RuleCall)cDeclarationsAssignment.eContents().get(0);
		
		//Model:
		//	declarations+=Declaration*;
		@Override public ParserRule getRule() { return rule; }
		
		//declarations+=Declaration*
		public Assignment getDeclarationsAssignment() { return cDeclarationsAssignment; }
		
		//Declaration
		public RuleCall getDeclarationsDeclarationParserRuleCall_0() { return cDeclarationsDeclarationParserRuleCall_0; }
	}
	public class DeclarationElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.mydsl.MyDsl.Declaration");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cDeviceParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cRuleParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//Declaration:
		//	Device | Rule;
		@Override public ParserRule getRule() { return rule; }
		
		//Device | Rule
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Device
		public RuleCall getDeviceParserRuleCall_0() { return cDeviceParserRuleCall_0; }
		
		//Rule
		public RuleCall getRuleParserRuleCall_1() { return cRuleParserRuleCall_1; }
	}
	public class DeviceElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.mydsl.MyDsl.Device");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cDeviceKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Keyword cCanKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Keyword cBeKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final Group cGroup_4 = (Group)cGroup.eContents().get(4);
		private final Assignment cStatesAssignment_4_0 = (Assignment)cGroup_4.eContents().get(0);
		private final RuleCall cStatesStateParserRuleCall_4_0_0 = (RuleCall)cStatesAssignment_4_0.eContents().get(0);
		private final Group cGroup_4_1 = (Group)cGroup_4.eContents().get(1);
		private final Keyword cCommaKeyword_4_1_0 = (Keyword)cGroup_4_1.eContents().get(0);
		private final Assignment cStatesAssignment_4_1_1 = (Assignment)cGroup_4_1.eContents().get(1);
		private final RuleCall cStatesStateParserRuleCall_4_1_1_0 = (RuleCall)cStatesAssignment_4_1_1.eContents().get(0);
		
		//Device:
		//	'Device' name=ID 'can' 'be' (states+=State (',' states+=State)*)?;
		@Override public ParserRule getRule() { return rule; }
		
		//'Device' name=ID 'can' 'be' (states+=State (',' states+=State)*)?
		public Group getGroup() { return cGroup; }
		
		//'Device'
		public Keyword getDeviceKeyword_0() { return cDeviceKeyword_0; }
		
		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
		
		//'can'
		public Keyword getCanKeyword_2() { return cCanKeyword_2; }
		
		//'be'
		public Keyword getBeKeyword_3() { return cBeKeyword_3; }
		
		//(states+=State (',' states+=State)*)?
		public Group getGroup_4() { return cGroup_4; }
		
		//states+=State
		public Assignment getStatesAssignment_4_0() { return cStatesAssignment_4_0; }
		
		//State
		public RuleCall getStatesStateParserRuleCall_4_0_0() { return cStatesStateParserRuleCall_4_0_0; }
		
		//(',' states+=State)*
		public Group getGroup_4_1() { return cGroup_4_1; }
		
		//','
		public Keyword getCommaKeyword_4_1_0() { return cCommaKeyword_4_1_0; }
		
		//states+=State
		public Assignment getStatesAssignment_4_1_1() { return cStatesAssignment_4_1_1; }
		
		//State
		public RuleCall getStatesStateParserRuleCall_4_1_1_0() { return cStatesStateParserRuleCall_4_1_1_0; }
	}
	public class StateElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.mydsl.MyDsl.State");
		private final Assignment cNameAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_0 = (RuleCall)cNameAssignment.eContents().get(0);
		
		//State:
		//	name=ID;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID
		public Assignment getNameAssignment() { return cNameAssignment; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0() { return cNameIDTerminalRuleCall_0; }
	}
	public class RuleElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.mydsl.MyDsl.Rule");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cRuleKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cDescriptionAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cDescriptionSTRINGTerminalRuleCall_1_0 = (RuleCall)cDescriptionAssignment_1.eContents().get(0);
		private final Keyword cWhenKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cWhenAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final CrossReference cWhenStateCrossReference_3_0 = (CrossReference)cWhenAssignment_3.eContents().get(0);
		private final RuleCall cWhenStateQualifiedNameParserRuleCall_3_0_1 = (RuleCall)cWhenStateCrossReference_3_0.eContents().get(1);
		private final Keyword cThenKeyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Assignment cThenAssignment_5 = (Assignment)cGroup.eContents().get(5);
		private final CrossReference cThenStateCrossReference_5_0 = (CrossReference)cThenAssignment_5.eContents().get(0);
		private final RuleCall cThenStateQualifiedNameParserRuleCall_5_0_1 = (RuleCall)cThenStateCrossReference_5_0.eContents().get(1);
		
		//Rule:
		//	'Rule' description=STRING
		//	'when' when=[State|QualifiedName]
		//	'then' then=[State|QualifiedName];
		@Override public ParserRule getRule() { return rule; }
		
		//'Rule' description=STRING 'when' when=[State|QualifiedName] 'then' then=[State|QualifiedName]
		public Group getGroup() { return cGroup; }
		
		//'Rule'
		public Keyword getRuleKeyword_0() { return cRuleKeyword_0; }
		
		//description=STRING
		public Assignment getDescriptionAssignment_1() { return cDescriptionAssignment_1; }
		
		//STRING
		public RuleCall getDescriptionSTRINGTerminalRuleCall_1_0() { return cDescriptionSTRINGTerminalRuleCall_1_0; }
		
		//'when'
		public Keyword getWhenKeyword_2() { return cWhenKeyword_2; }
		
		//when=[State|QualifiedName]
		public Assignment getWhenAssignment_3() { return cWhenAssignment_3; }
		
		//[State|QualifiedName]
		public CrossReference getWhenStateCrossReference_3_0() { return cWhenStateCrossReference_3_0; }
		
		//QualifiedName
		public RuleCall getWhenStateQualifiedNameParserRuleCall_3_0_1() { return cWhenStateQualifiedNameParserRuleCall_3_0_1; }
		
		//'then'
		public Keyword getThenKeyword_4() { return cThenKeyword_4; }
		
		//then=[State|QualifiedName]
		public Assignment getThenAssignment_5() { return cThenAssignment_5; }
		
		//[State|QualifiedName]
		public CrossReference getThenStateCrossReference_5_0() { return cThenStateCrossReference_5_0; }
		
		//QualifiedName
		public RuleCall getThenStateQualifiedNameParserRuleCall_5_0_1() { return cThenStateQualifiedNameParserRuleCall_5_0_1; }
	}
	public class QualifiedNameElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.mydsl.MyDsl.QualifiedName");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cIDTerminalRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cFullStopKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_1_1 = (RuleCall)cGroup_1.eContents().get(1);
		
		//QualifiedName:
		//	ID ('.' ID)*;
		@Override public ParserRule getRule() { return rule; }
		
		//ID ('.' ID)*
		public Group getGroup() { return cGroup; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_0() { return cIDTerminalRuleCall_0; }
		
		//('.' ID)*
		public Group getGroup_1() { return cGroup_1; }
		
		//'.'
		public Keyword getFullStopKeyword_1_0() { return cFullStopKeyword_1_0; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_1_1() { return cIDTerminalRuleCall_1_1; }
	}
	
	
	private final ModelElements pModel;
	private final DeclarationElements pDeclaration;
	private final DeviceElements pDevice;
	private final StateElements pState;
	private final RuleElements pRule;
	private final QualifiedNameElements pQualifiedName;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public MyDslGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pDeclaration = new DeclarationElements();
		this.pDevice = new DeviceElements();
		this.pState = new StateElements();
		this.pRule = new RuleElements();
		this.pQualifiedName = new QualifiedNameElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.xtext.example.mydsl.MyDsl".equals(grammar.getName())) {
				return grammar;
			}
			List<Grammar> grammars = grammar.getUsedGrammars();
			if (!grammars.isEmpty()) {
				grammar = grammars.iterator().next();
			} else {
				return null;
			}
		}
		return grammar;
	}
	
	@Override
	public Grammar getGrammar() {
		return grammar;
	}
	
	
	public TerminalsGrammarAccess getTerminalsGrammarAccess() {
		return gaTerminals;
	}

	
	//Model:
	//	declarations+=Declaration*;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//Declaration:
	//	Device | Rule;
	public DeclarationElements getDeclarationAccess() {
		return pDeclaration;
	}
	
	public ParserRule getDeclarationRule() {
		return getDeclarationAccess().getRule();
	}
	
	//Device:
	//	'Device' name=ID 'can' 'be' (states+=State (',' states+=State)*)?;
	public DeviceElements getDeviceAccess() {
		return pDevice;
	}
	
	public ParserRule getDeviceRule() {
		return getDeviceAccess().getRule();
	}
	
	//State:
	//	name=ID;
	public StateElements getStateAccess() {
		return pState;
	}
	
	public ParserRule getStateRule() {
		return getStateAccess().getRule();
	}
	
	//Rule:
	//	'Rule' description=STRING
	//	'when' when=[State|QualifiedName]
	//	'then' then=[State|QualifiedName];
	public RuleElements getRuleAccess() {
		return pRule;
	}
	
	public ParserRule getRuleRule() {
		return getRuleAccess().getRule();
	}
	
	//QualifiedName:
	//	ID ('.' ID)*;
	public QualifiedNameElements getQualifiedNameAccess() {
		return pQualifiedName;
	}
	
	public ParserRule getQualifiedNameRule() {
		return getQualifiedNameAccess().getRule();
	}
	
	//terminal ID:
	//	'^'? ('a'..'z' | 'A'..'Z' | '_') ('a'..'z' | 'A'..'Z' | '_' | '0'..'9')*;
	public TerminalRule getIDRule() {
		return gaTerminals.getIDRule();
	}
	
	//terminal INT returns ecore::EInt:
	//	'0'..'9'+;
	public TerminalRule getINTRule() {
		return gaTerminals.getINTRule();
	}
	
	//terminal STRING:
	//	'"' ('\\' . | !('\\' | '"'))* '"' |
	//	"'" ('\\' . | !('\\' | "'"))* "'";
	public TerminalRule getSTRINGRule() {
		return gaTerminals.getSTRINGRule();
	}
	
	//terminal ML_COMMENT:
	//	'/*'->'*/';
	public TerminalRule getML_COMMENTRule() {
		return gaTerminals.getML_COMMENTRule();
	}
	
	//terminal SL_COMMENT:
	//	'//' !('\n' | '\r')* ('\r'? '\n')?;
	public TerminalRule getSL_COMMENTRule() {
		return gaTerminals.getSL_COMMENTRule();
	}
	
	//terminal WS:
	//	' ' | '\t' | '\r' | '\n'+;
	public TerminalRule getWSRule() {
		return gaTerminals.getWSRule();
	}
	
	//terminal ANY_OTHER:
	//	.;
	public TerminalRule getANY_OTHERRule() {
		return gaTerminals.getANY_OTHERRule();
	}
}

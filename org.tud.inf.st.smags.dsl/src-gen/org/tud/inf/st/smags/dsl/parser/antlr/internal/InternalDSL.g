/*
 * generated by Xtext 2.10.0
 */
grammar InternalDSL;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.tud.inf.st.smags.dsl.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.tud.inf.st.smags.dsl.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.tud.inf.st.smags.dsl.services.DSLGrammarAccess;

}

@parser::members {

 	private DSLGrammarAccess grammarAccess;

    public InternalDSLParser(TokenStream input, DSLGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "SmagsModel";
   	}

   	@Override
   	protected DSLGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleSmagsModel
entryRuleSmagsModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSmagsModelRule()); }
	iv_ruleSmagsModel=ruleSmagsModel
	{ $current=$iv_ruleSmagsModel.current; }
	EOF;

// Rule SmagsModel
ruleSmagsModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getSmagsModelAccess().getSmagsModelAction_0(),
					$current);
			}
		)
		(
			otherlv_1='imports'
			{
				newLeafNode(otherlv_1, grammarAccess.getSmagsModelAccess().getImportsKeyword_1_0());
			}
			otherlv_2='{'
			{
				newLeafNode(otherlv_2, grammarAccess.getSmagsModelAccess().getLeftCurlyBracketKeyword_1_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getSmagsModelAccess().getImportsImportParserRuleCall_1_2_0());
					}
					lv_imports_3_0=ruleImport
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getSmagsModelRule());
						}
						add(
							$current,
							"imports",
							lv_imports_3_0,
							"org.tud.inf.st.smags.dsl.DSL.Import");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			otherlv_4='}'
			{
				newLeafNode(otherlv_4, grammarAccess.getSmagsModelAccess().getRightCurlyBracketKeyword_1_3());
			}
		)?
		(
			(
				{
					newCompositeNode(grammarAccess.getSmagsModelAccess().getElementsSmagsElementParserRuleCall_2_0());
				}
				lv_elements_5_0=ruleSmagsElement
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSmagsModelRule());
					}
					add(
						$current,
						"elements",
						lv_elements_5_0,
						"org.tud.inf.st.smags.dsl.DSL.SmagsElement");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleSmagsElement
entryRuleSmagsElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSmagsElementRule()); }
	iv_ruleSmagsElement=ruleSmagsElement
	{ $current=$iv_ruleSmagsElement.current; }
	EOF;

// Rule SmagsElement
ruleSmagsElement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getSmagsElementAccess().getMetaArchitectureParserRuleCall_0());
		}
		this_MetaArchitecture_0=ruleMetaArchitecture
		{
			$current = $this_MetaArchitecture_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getSmagsElementAccess().getArchitectureParserRuleCall_1());
		}
		this_Architecture_1=ruleArchitecture
		{
			$current = $this_Architecture_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleImport
entryRuleImport returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getImportRule()); }
	iv_ruleImport=ruleImport
	{ $current=$iv_ruleImport.current; }
	EOF;

// Rule Import
ruleImport returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_importURI_0_0=RULE_STRING
				{
					newLeafNode(lv_importURI_0_0, grammarAccess.getImportAccess().getImportURISTRINGTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getImportRule());
					}
					setWithLastConsumed(
						$current,
						"importURI",
						lv_importURI_0_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
		otherlv_1=';'
		{
			newLeafNode(otherlv_1, grammarAccess.getImportAccess().getSemicolonKeyword_1());
		}
	)
;

// Entry rule entryRuleMetaArchitecture
entryRuleMetaArchitecture returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMetaArchitectureRule()); }
	iv_ruleMetaArchitecture=ruleMetaArchitecture
	{ $current=$iv_ruleMetaArchitecture.current; }
	EOF;

// Rule MetaArchitecture
ruleMetaArchitecture returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='MetaArchitecture'
		{
			newLeafNode(otherlv_0, grammarAccess.getMetaArchitectureAccess().getMetaArchitectureKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getMetaArchitectureAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMetaArchitectureRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='{'
		{
			newLeafNode(otherlv_2, grammarAccess.getMetaArchitectureAccess().getLeftCurlyBracketKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getMetaArchitectureAccess().getTypesTypeParserRuleCall_3_0());
				}
				lv_types_3_0=ruleType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMetaArchitectureRule());
					}
					add(
						$current,
						"types",
						lv_types_3_0,
						"org.tud.inf.st.smags.dsl.DSL.Type");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_4='}'
		{
			newLeafNode(otherlv_4, grammarAccess.getMetaArchitectureAccess().getRightCurlyBracketKeyword_4());
		}
		otherlv_5='{'
		{
			newLeafNode(otherlv_5, grammarAccess.getMetaArchitectureAccess().getLeftCurlyBracketKeyword_5());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getMetaArchitectureAccess().getElementsMetaArchitectureElementParserRuleCall_6_0());
				}
				lv_elements_6_0=ruleMetaArchitectureElement
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMetaArchitectureRule());
					}
					add(
						$current,
						"elements",
						lv_elements_6_0,
						"org.tud.inf.st.smags.dsl.DSL.MetaArchitectureElement");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_7='}'
		{
			newLeafNode(otherlv_7, grammarAccess.getMetaArchitectureAccess().getRightCurlyBracketKeyword_7());
		}
	)
;

// Entry rule entryRuleMetaArchitectureElement
entryRuleMetaArchitectureElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMetaArchitectureElementRule()); }
	iv_ruleMetaArchitectureElement=ruleMetaArchitectureElement
	{ $current=$iv_ruleMetaArchitectureElement.current; }
	EOF;

// Rule MetaArchitectureElement
ruleMetaArchitectureElement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getMetaArchitectureElementAccess().getComponentTypeParserRuleCall_0());
		}
		this_ComponentType_0=ruleComponentType
		{
			$current = $this_ComponentType_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getMetaArchitectureElementAccess().getPortTypeParserRuleCall_1());
		}
		this_PortType_1=rulePortType
		{
			$current = $this_PortType_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getMetaArchitectureElementAccess().getRoleModelParserRuleCall_2());
		}
		this_RoleModel_2=ruleRoleModel
		{
			$current = $this_RoleModel_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleType
entryRuleType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTypeRule()); }
	iv_ruleType=ruleType
	{ $current=$iv_ruleType.current; }
	EOF;

// Rule Type
ruleType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getTypeAccess().getExternalTypeParserRuleCall_0());
		}
		this_ExternalType_0=ruleExternalType
		{
			$current = $this_ExternalType_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getTypeAccess().getPrimitiveTypeParserRuleCall_1());
		}
		this_PrimitiveType_1=rulePrimitiveType
		{
			$current = $this_PrimitiveType_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleExternalType
entryRuleExternalType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getExternalTypeRule()); }
	iv_ruleExternalType=ruleExternalType
	{ $current=$iv_ruleExternalType.current; }
	EOF;

// Rule ExternalType
ruleExternalType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Type'
		{
			newLeafNode(otherlv_0, grammarAccess.getExternalTypeAccess().getTypeKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getExternalTypeAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getExternalTypeRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2=';'
		{
			newLeafNode(otherlv_2, grammarAccess.getExternalTypeAccess().getSemicolonKeyword_2());
		}
	)
;

// Entry rule entryRulePrimitiveType
entryRulePrimitiveType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPrimitiveTypeRule()); }
	iv_rulePrimitiveType=rulePrimitiveType
	{ $current=$iv_rulePrimitiveType.current; }
	EOF;

// Rule PrimitiveType
rulePrimitiveType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Primitive'
		{
			newLeafNode(otherlv_0, grammarAccess.getPrimitiveTypeAccess().getPrimitiveKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPrimitiveTypeAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPrimitiveTypeRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2=';'
		{
			newLeafNode(otherlv_2, grammarAccess.getPrimitiveTypeAccess().getSemicolonKeyword_2());
		}
	)
;

// Entry rule entryRuleVariable
entryRuleVariable returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getVariableRule()); }
	iv_ruleVariable=ruleVariable
	{ $current=$iv_ruleVariable.current; }
	EOF;

// Rule Variable
ruleVariable returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getVariableRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getVariableAccess().getTypeTypeCrossReference_0_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getVariableAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getVariableRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleAnonymousVariable
entryRuleAnonymousVariable returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAnonymousVariableRule()); }
	iv_ruleAnonymousVariable=ruleAnonymousVariable
	{ $current=$iv_ruleAnonymousVariable.current; }
	EOF;

// Rule AnonymousVariable
ruleAnonymousVariable returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getAnonymousVariableRule());
				}
			}
			{
				newCompositeNode(grammarAccess.getAnonymousVariableAccess().getTypeTypeCrossReference_0());
			}
			ruleEString
			{
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleMethod
entryRuleMethod returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMethodRule()); }
	iv_ruleMethod=ruleMethod
	{ $current=$iv_ruleMethod.current; }
	EOF;

// Rule Method
ruleMethod returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getMethodAccess().getReturnTypeAnonymousVariableParserRuleCall_0_0());
				}
				lv_returnType_0_0=ruleAnonymousVariable
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMethodRule());
					}
					set(
						$current,
						"returnType",
						lv_returnType_0_0,
						"org.tud.inf.st.smags.dsl.DSL.AnonymousVariable");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getMethodAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMethodRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='('
		{
			newLeafNode(otherlv_2, grammarAccess.getMethodAccess().getLeftParenthesisKeyword_2());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getMethodAccess().getArgsVariableParserRuleCall_3_0_0());
					}
					lv_args_3_0=ruleVariable
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMethodRule());
						}
						add(
							$current,
							"args",
							lv_args_3_0,
							"org.tud.inf.st.smags.dsl.DSL.Variable");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_4=','
				{
					newLeafNode(otherlv_4, grammarAccess.getMethodAccess().getCommaKeyword_3_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getMethodAccess().getArgsVariableParserRuleCall_3_1_1_0());
						}
						lv_args_5_0=ruleVariable
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getMethodRule());
							}
							add(
								$current,
								"args",
								lv_args_5_0,
								"org.tud.inf.st.smags.dsl.DSL.Variable");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
		)?
		otherlv_6=')'
		{
			newLeafNode(otherlv_6, grammarAccess.getMethodAccess().getRightParenthesisKeyword_4());
		}
	)
;

// Entry rule entryRulePortTypeElement
entryRulePortTypeElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPortTypeElementRule()); }
	iv_rulePortTypeElement=rulePortTypeElement
	{ $current=$iv_rulePortTypeElement.current; }
	EOF;

// Rule PortTypeElement
rulePortTypeElement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getPortTypeElementAccess().getVariableParserRuleCall_0_0());
			}
			this_Variable_0=ruleVariable
			{
				$current = $this_Variable_0.current;
				afterParserOrEnumRuleCall();
			}
			    |
			{
				newCompositeNode(grammarAccess.getPortTypeElementAccess().getMethodParserRuleCall_0_1());
			}
			this_Method_1=ruleMethod
			{
				$current = $this_Method_1.current;
				afterParserOrEnumRuleCall();
			}
		)
		otherlv_2=';'
		{
			newLeafNode(otherlv_2, grammarAccess.getPortTypeElementAccess().getSemicolonKeyword_1());
		}
	)
;

// Entry rule entryRuleCompositionOperator
entryRuleCompositionOperator returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCompositionOperatorRule()); }
	iv_ruleCompositionOperator=ruleCompositionOperator
	{ $current=$iv_ruleCompositionOperator.current; }
	EOF;

// Rule CompositionOperator
ruleCompositionOperator returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	{
		newCompositeNode(grammarAccess.getCompositionOperatorAccess().getBindOperatorParserRuleCall());
	}
	this_BindOperator_0=ruleBindOperator
	{
		$current = $this_BindOperator_0.current;
		afterParserOrEnumRuleCall();
	}
;

// Entry rule entryRuleEString
entryRuleEString returns [String current=null]:
	{ newCompositeNode(grammarAccess.getEStringRule()); }
	iv_ruleEString=ruleEString
	{ $current=$iv_ruleEString.current.getText(); }
	EOF;

// Rule EString
ruleEString returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_STRING_0=RULE_STRING
		{
			$current.merge(this_STRING_0);
		}
		{
			newLeafNode(this_STRING_0, grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0());
		}
		    |
		this_ID_1=RULE_ID
		{
			$current.merge(this_ID_1);
		}
		{
			newLeafNode(this_ID_1, grammarAccess.getEStringAccess().getIDTerminalRuleCall_1());
		}
	)
;

// Entry rule entryRuleComponentType
entryRuleComponentType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getComponentTypeRule()); }
	iv_ruleComponentType=ruleComponentType
	{ $current=$iv_ruleComponentType.current; }
	EOF;

// Rule ComponentType
ruleComponentType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getComponentTypeAccess().getComponentTypeAction_0(),
					$current);
			}
		)
		otherlv_1='ComponentType'
		{
			newLeafNode(otherlv_1, grammarAccess.getComponentTypeAccess().getComponentTypeKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getComponentTypeAccess().getNameEStringParserRuleCall_2_0());
				}
				lv_name_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getComponentTypeRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3=';'
		{
			newLeafNode(otherlv_3, grammarAccess.getComponentTypeAccess().getSemicolonKeyword_3());
		}
	)
;

// Entry rule entryRulePortType
entryRulePortType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPortTypeRule()); }
	iv_rulePortType=rulePortType
	{ $current=$iv_rulePortType.current; }
	EOF;

// Rule PortType
rulePortType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getPortTypeAccess().getPortTypeAction_0(),
					$current);
			}
		)
		otherlv_1='PortType'
		{
			newLeafNode(otherlv_1, grammarAccess.getPortTypeAccess().getPortTypeKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPortTypeAccess().getNameEStringParserRuleCall_2_0());
				}
				lv_name_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPortTypeRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3='{'
		{
			newLeafNode(otherlv_3, grammarAccess.getPortTypeAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPortTypeAccess().getElementsPortTypeElementParserRuleCall_4_0());
				}
				lv_elements_4_0=rulePortTypeElement
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPortTypeRule());
					}
					add(
						$current,
						"elements",
						lv_elements_4_0,
						"org.tud.inf.st.smags.dsl.DSL.PortTypeElement");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_5='}'
		{
			newLeafNode(otherlv_5, grammarAccess.getPortTypeAccess().getRightCurlyBracketKeyword_5());
		}
	)
;

// Entry rule entryRuleRoleModel
entryRuleRoleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRoleModelRule()); }
	iv_ruleRoleModel=ruleRoleModel
	{ $current=$iv_ruleRoleModel.current; }
	EOF;

// Rule RoleModel
ruleRoleModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getRoleModelAccess().getRoleModelAction_0(),
					$current);
			}
		)
		otherlv_1='RoleModel'
		{
			newLeafNode(otherlv_1, grammarAccess.getRoleModelAccess().getRoleModelKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getRoleModelAccess().getNameEStringParserRuleCall_2_0());
				}
				lv_name_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRoleModelRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_3='('
			{
				newLeafNode(otherlv_3, grammarAccess.getRoleModelAccess().getLeftParenthesisKeyword_3_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getRoleModelAccess().getSlotsRoleModelSlotParserRuleCall_3_1_0());
					}
					lv_slots_4_0=ruleRoleModelSlot
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getRoleModelRule());
						}
						add(
							$current,
							"slots",
							lv_slots_4_0,
							"org.tud.inf.st.smags.dsl.DSL.RoleModelSlot");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_5=','
				{
					newLeafNode(otherlv_5, grammarAccess.getRoleModelAccess().getCommaKeyword_3_2_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getRoleModelAccess().getSlotsRoleModelSlotParserRuleCall_3_2_1_0());
						}
						lv_slots_6_0=ruleRoleModelSlot
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getRoleModelRule());
							}
							add(
								$current,
								"slots",
								lv_slots_6_0,
								"org.tud.inf.st.smags.dsl.DSL.RoleModelSlot");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
			otherlv_7=')'
			{
				newLeafNode(otherlv_7, grammarAccess.getRoleModelAccess().getRightParenthesisKeyword_3_3());
			}
		)?
		otherlv_8='{'
		{
			newLeafNode(otherlv_8, grammarAccess.getRoleModelAccess().getLeftCurlyBracketKeyword_4());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getRoleModelAccess().getInitializationCompositionOperatorParserRuleCall_5_0());
				}
				lv_initialization_9_0=ruleCompositionOperator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRoleModelRule());
					}
					add(
						$current,
						"initialization",
						lv_initialization_9_0,
						"org.tud.inf.st.smags.dsl.DSL.CompositionOperator");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_10='}'
		{
			newLeafNode(otherlv_10, grammarAccess.getRoleModelAccess().getRightCurlyBracketKeyword_6());
		}
	)
;

// Entry rule entryRuleRoleModelSlot
entryRuleRoleModelSlot returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRoleModelSlotRule()); }
	iv_ruleRoleModelSlot=ruleRoleModelSlot
	{ $current=$iv_ruleRoleModelSlot.current; }
	EOF;

// Rule RoleModelSlot
ruleRoleModelSlot returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getRoleModelSlotAccess().getRoleModelSlotAction_0(),
					$current);
			}
		)
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getRoleModelSlotRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getRoleModelSlotAccess().getTypeComponentTypeCrossReference_1_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getRoleModelSlotAccess().getNameEStringParserRuleCall_2_0());
				}
				lv_name_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRoleModelSlotRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleBindOperator
entryRuleBindOperator returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBindOperatorRule()); }
	iv_ruleBindOperator=ruleBindOperator
	{ $current=$iv_ruleBindOperator.current; }
	EOF;

// Rule BindOperator
ruleBindOperator returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getBindOperatorAccess().getBindOperatorAction_0(),
					$current);
			}
		)
		otherlv_1='bind'
		{
			newLeafNode(otherlv_1, grammarAccess.getBindOperatorAccess().getBindKeyword_1());
		}
		otherlv_2='role'
		{
			newLeafNode(otherlv_2, grammarAccess.getBindOperatorAccess().getRoleKeyword_2());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getBindOperatorRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getBindOperatorAccess().getToPortTypeCrossReference_3_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_4='to'
		{
			newLeafNode(otherlv_4, grammarAccess.getBindOperatorAccess().getToKeyword_4());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getBindOperatorRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getBindOperatorAccess().getSlotRoleModelSlotCrossReference_5_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_6=';'
		{
			newLeafNode(otherlv_6, grammarAccess.getBindOperatorAccess().getSemicolonKeyword_6());
		}
	)
;

// Entry rule entryRuleArchitecture
entryRuleArchitecture returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getArchitectureRule()); }
	iv_ruleArchitecture=ruleArchitecture
	{ $current=$iv_ruleArchitecture.current; }
	EOF;

// Rule Architecture
ruleArchitecture returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Architecture'
		{
			newLeafNode(otherlv_0, grammarAccess.getArchitectureAccess().getArchitectureKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getArchitectureAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getArchitectureRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='::'
		{
			newLeafNode(otherlv_2, grammarAccess.getArchitectureAccess().getColonColonKeyword_2());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getArchitectureRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getArchitectureAccess().getTypeMetaArchitectureCrossReference_3_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_4='{'
		{
			newLeafNode(otherlv_4, grammarAccess.getArchitectureAccess().getLeftCurlyBracketKeyword_4());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getArchitectureAccess().getTypeBindingsTypeBindingParserRuleCall_5_0());
				}
				lv_typeBindings_5_0=ruleTypeBinding
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getArchitectureRule());
					}
					add(
						$current,
						"typeBindings",
						lv_typeBindings_5_0,
						"org.tud.inf.st.smags.dsl.DSL.TypeBinding");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_6='}'
		{
			newLeafNode(otherlv_6, grammarAccess.getArchitectureAccess().getRightCurlyBracketKeyword_6());
		}
		otherlv_7='{'
		{
			newLeafNode(otherlv_7, grammarAccess.getArchitectureAccess().getLeftCurlyBracketKeyword_7());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getArchitectureAccess().getElementsArchitectureElementParserRuleCall_8_0());
				}
				lv_elements_8_0=ruleArchitectureElement
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getArchitectureRule());
					}
					add(
						$current,
						"elements",
						lv_elements_8_0,
						"org.tud.inf.st.smags.dsl.DSL.ArchitectureElement");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_9='}'
		{
			newLeafNode(otherlv_9, grammarAccess.getArchitectureAccess().getRightCurlyBracketKeyword_9());
		}
	)
;

// Entry rule entryRuleArchitectureElement
entryRuleArchitectureElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getArchitectureElementRule()); }
	iv_ruleArchitectureElement=ruleArchitectureElement
	{ $current=$iv_ruleArchitectureElement.current; }
	EOF;

// Rule ArchitectureElement
ruleArchitectureElement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getArchitectureElementAccess().getComponentParserRuleCall_0());
		}
		this_Component_0=ruleComponent
		{
			$current = $this_Component_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getArchitectureElementAccess().getPortParserRuleCall_1());
		}
		this_Port_1=rulePort
		{
			$current = $this_Port_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleComponent
entryRuleComponent returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getComponentRule()); }
	iv_ruleComponent=ruleComponent
	{ $current=$iv_ruleComponent.current; }
	EOF;

// Rule Component
ruleComponent returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Component'
		{
			newLeafNode(otherlv_0, grammarAccess.getComponentAccess().getComponentKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getComponentAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getComponentRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='::'
		{
			newLeafNode(otherlv_2, grammarAccess.getComponentAccess().getColonColonKeyword_2());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getComponentRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getComponentAccess().getTypeComponentTypeCrossReference_3_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_4=';'
		{
			newLeafNode(otherlv_4, grammarAccess.getComponentAccess().getSemicolonKeyword_4());
		}
	)
;

// Entry rule entryRulePort
entryRulePort returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPortRule()); }
	iv_rulePort=rulePort
	{ $current=$iv_rulePort.current; }
	EOF;

// Rule Port
rulePort returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Port'
		{
			newLeafNode(otherlv_0, grammarAccess.getPortAccess().getPortKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPortAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPortRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='::'
		{
			newLeafNode(otherlv_2, grammarAccess.getPortAccess().getColonColonKeyword_2());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getPortRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getPortAccess().getTypePortTypeCrossReference_3_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_4=';'
		{
			newLeafNode(otherlv_4, grammarAccess.getPortAccess().getSemicolonKeyword_4());
		}
	)
;

// Entry rule entryRuleTypeBinding
entryRuleTypeBinding returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTypeBindingRule()); }
	iv_ruleTypeBinding=ruleTypeBinding
	{ $current=$iv_ruleTypeBinding.current; }
	EOF;

// Rule TypeBinding
ruleTypeBinding returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTypeBindingRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getTypeBindingAccess().getTypeTypeCrossReference_0_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='='
		{
			newLeafNode(otherlv_1, grammarAccess.getTypeBindingAccess().getEqualsSignKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getTypeBindingAccess().getImplementationEStringParserRuleCall_2_0());
				}
				lv_implementation_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTypeBindingRule());
					}
					set(
						$current,
						"implementation",
						lv_implementation_2_0,
						"org.tud.inf.st.smags.dsl.DSL.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3=';'
		{
			newLeafNode(otherlv_3, grammarAccess.getTypeBindingAccess().getSemicolonKeyword_3());
		}
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

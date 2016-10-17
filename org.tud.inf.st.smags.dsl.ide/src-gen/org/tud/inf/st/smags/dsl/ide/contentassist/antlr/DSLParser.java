/*
 * generated by Xtext 2.10.0
 */
package org.tud.inf.st.smags.dsl.ide.contentassist.antlr;

import com.google.inject.Inject;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.antlr.runtime.RecognitionException;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.AbstractContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.FollowElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.tud.inf.st.smags.dsl.ide.contentassist.antlr.internal.InternalDSLParser;
import org.tud.inf.st.smags.dsl.services.DSLGrammarAccess;

public class DSLParser extends AbstractContentAssistParser {

	@Inject
	private DSLGrammarAccess grammarAccess;

	private Map<AbstractElement, String> nameMappings;

	@Override
	protected InternalDSLParser createParser() {
		InternalDSLParser result = new InternalDSLParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}

	@Override
	protected String getRuleName(AbstractElement element) {
		if (nameMappings == null) {
			nameMappings = new HashMap<AbstractElement, String>() {
				private static final long serialVersionUID = 1L;
				{
					put(grammarAccess.getSmagsElementAccess().getAlternatives(), "rule__SmagsElement__Alternatives");
					put(grammarAccess.getMetaArchitectureElementAccess().getAlternatives(), "rule__MetaArchitectureElement__Alternatives");
					put(grammarAccess.getTypeUseAccess().getAlternatives(), "rule__TypeUse__Alternatives");
					put(grammarAccess.getPortTypeElementAccess().getAlternatives_0(), "rule__PortTypeElement__Alternatives_0");
					put(grammarAccess.getEStringAccess().getAlternatives(), "rule__EString__Alternatives");
					put(grammarAccess.getArchitectureElementAccess().getAlternatives(), "rule__ArchitectureElement__Alternatives");
					put(grammarAccess.getDeploymentOperatorAccess().getAlternatives_0(), "rule__DeploymentOperator__Alternatives_0");
					put(grammarAccess.getSmagsModelAccess().getGroup(), "rule__SmagsModel__Group__0");
					put(grammarAccess.getSmagsModelAccess().getGroup_1(), "rule__SmagsModel__Group_1__0");
					put(grammarAccess.getImportAccess().getGroup(), "rule__Import__Group__0");
					put(grammarAccess.getMetaArchitectureAccess().getGroup(), "rule__MetaArchitecture__Group__0");
					put(grammarAccess.getMetaArchitectureAccess().getGroup_2(), "rule__MetaArchitecture__Group_2__0");
					put(grammarAccess.getTypeAccess().getGroup(), "rule__Type__Group__0");
					put(grammarAccess.getVariableAccess().getGroup(), "rule__Variable__Group__0");
					put(grammarAccess.getMethodAccess().getGroup(), "rule__Method__Group__0");
					put(grammarAccess.getMethodAccess().getGroup_3(), "rule__Method__Group_3__0");
					put(grammarAccess.getMethodAccess().getGroup_3_1(), "rule__Method__Group_3_1__0");
					put(grammarAccess.getGenericUseAccess().getGroup(), "rule__GenericUse__Group__0");
					put(grammarAccess.getPortTypeElementAccess().getGroup(), "rule__PortTypeElement__Group__0");
					put(grammarAccess.getComponentTypeAccess().getGroup(), "rule__ComponentType__Group__0");
					put(grammarAccess.getComponentTypeAccess().getGroup_3(), "rule__ComponentType__Group_3__0");
					put(grammarAccess.getComponentTypeAccess().getGroup_3_2(), "rule__ComponentType__Group_3_2__0");
					put(grammarAccess.getPortTypeAccess().getGroup(), "rule__PortType__Group__0");
					put(grammarAccess.getRoleModelAccess().getGroup(), "rule__RoleModel__Group__0");
					put(grammarAccess.getRoleModelAccess().getGroup_3(), "rule__RoleModel__Group_3__0");
					put(grammarAccess.getRoleModelAccess().getGroup_3_2(), "rule__RoleModel__Group_3_2__0");
					put(grammarAccess.getRoleModelSlotAccess().getGroup(), "rule__RoleModelSlot__Group__0");
					put(grammarAccess.getBindOperatorAccess().getGroup(), "rule__BindOperator__Group__0");
					put(grammarAccess.getArchitectureAccess().getGroup(), "rule__Architecture__Group__0");
					put(grammarAccess.getArchitectureAccess().getGroup_4(), "rule__Architecture__Group_4__0");
					put(grammarAccess.getComponentAccess().getGroup(), "rule__Component__Group__0");
					put(grammarAccess.getPortAccess().getGroup(), "rule__Port__Group__0");
					put(grammarAccess.getTypeBindingAccess().getGroup(), "rule__TypeBinding__Group__0");
					put(grammarAccess.getDeploymentAccess().getGroup(), "rule__Deployment__Group__0");
					put(grammarAccess.getDeploymentOperatorAccess().getGroup(), "rule__DeploymentOperator__Group__0");
					put(grammarAccess.getActivateRoleModelOperatorAccess().getGroup(), "rule__ActivateRoleModelOperator__Group__0");
					put(grammarAccess.getActivateRoleModelOperatorAccess().getGroup_2(), "rule__ActivateRoleModelOperator__Group_2__0");
					put(grammarAccess.getActivateRoleModelOperatorAccess().getGroup_2_1(), "rule__ActivateRoleModelOperator__Group_2_1__0");
					put(grammarAccess.getComponentInstanceAccess().getGroup(), "rule__ComponentInstance__Group__0");
					put(grammarAccess.getSmagsModelAccess().getImportsAssignment_1_2(), "rule__SmagsModel__ImportsAssignment_1_2");
					put(grammarAccess.getSmagsModelAccess().getElementsAssignment_2(), "rule__SmagsModel__ElementsAssignment_2");
					put(grammarAccess.getImportAccess().getImportURIAssignment_0(), "rule__Import__ImportURIAssignment_0");
					put(grammarAccess.getMetaArchitectureAccess().getNameAssignment_1(), "rule__MetaArchitecture__NameAssignment_1");
					put(grammarAccess.getMetaArchitectureAccess().getNamespaceAssignment_2_2(), "rule__MetaArchitecture__NamespaceAssignment_2_2");
					put(grammarAccess.getMetaArchitectureAccess().getTypesAssignment_4(), "rule__MetaArchitecture__TypesAssignment_4");
					put(grammarAccess.getMetaArchitectureAccess().getElementsAssignment_7(), "rule__MetaArchitecture__ElementsAssignment_7");
					put(grammarAccess.getTypeAccess().getNameAssignment_2(), "rule__Type__NameAssignment_2");
					put(grammarAccess.getVariableAccess().getTypeAssignment_0(), "rule__Variable__TypeAssignment_0");
					put(grammarAccess.getVariableAccess().getNameAssignment_1(), "rule__Variable__NameAssignment_1");
					put(grammarAccess.getMethodAccess().getReturnTypeAssignment_0(), "rule__Method__ReturnTypeAssignment_0");
					put(grammarAccess.getMethodAccess().getNameAssignment_1(), "rule__Method__NameAssignment_1");
					put(grammarAccess.getMethodAccess().getArgsAssignment_3_0(), "rule__Method__ArgsAssignment_3_0");
					put(grammarAccess.getMethodAccess().getArgsAssignment_3_1_1(), "rule__Method__ArgsAssignment_3_1_1");
					put(grammarAccess.getPrimitiveUseAccess().getTypeAssignment(), "rule__PrimitiveUse__TypeAssignment");
					put(grammarAccess.getGenericUseAccess().getTypeAssignment_1(), "rule__GenericUse__TypeAssignment_1");
					put(grammarAccess.getComponentTypeAccess().getNameAssignment_2(), "rule__ComponentType__NameAssignment_2");
					put(grammarAccess.getComponentTypeAccess().getProvidesAssignment_3_1(), "rule__ComponentType__ProvidesAssignment_3_1");
					put(grammarAccess.getComponentTypeAccess().getProvidesAssignment_3_2_1(), "rule__ComponentType__ProvidesAssignment_3_2_1");
					put(grammarAccess.getPortTypeAccess().getNameAssignment_2(), "rule__PortType__NameAssignment_2");
					put(grammarAccess.getPortTypeAccess().getElementsAssignment_4(), "rule__PortType__ElementsAssignment_4");
					put(grammarAccess.getRoleModelAccess().getNameAssignment_2(), "rule__RoleModel__NameAssignment_2");
					put(grammarAccess.getRoleModelAccess().getSlotsAssignment_3_1(), "rule__RoleModel__SlotsAssignment_3_1");
					put(grammarAccess.getRoleModelAccess().getSlotsAssignment_3_2_1(), "rule__RoleModel__SlotsAssignment_3_2_1");
					put(grammarAccess.getRoleModelAccess().getInitializationAssignment_5(), "rule__RoleModel__InitializationAssignment_5");
					put(grammarAccess.getRoleModelSlotAccess().getTypeAssignment_1(), "rule__RoleModelSlot__TypeAssignment_1");
					put(grammarAccess.getRoleModelSlotAccess().getNameAssignment_2(), "rule__RoleModelSlot__NameAssignment_2");
					put(grammarAccess.getBindOperatorAccess().getToAssignment_3(), "rule__BindOperator__ToAssignment_3");
					put(grammarAccess.getBindOperatorAccess().getSlotAssignment_5(), "rule__BindOperator__SlotAssignment_5");
					put(grammarAccess.getArchitectureAccess().getNameAssignment_1(), "rule__Architecture__NameAssignment_1");
					put(grammarAccess.getArchitectureAccess().getTypeAssignment_3(), "rule__Architecture__TypeAssignment_3");
					put(grammarAccess.getArchitectureAccess().getNamespaceAssignment_4_2(), "rule__Architecture__NamespaceAssignment_4_2");
					put(grammarAccess.getArchitectureAccess().getTypeBindingsAssignment_6(), "rule__Architecture__TypeBindingsAssignment_6");
					put(grammarAccess.getArchitectureAccess().getElementsAssignment_9(), "rule__Architecture__ElementsAssignment_9");
					put(grammarAccess.getComponentAccess().getNameAssignment_1(), "rule__Component__NameAssignment_1");
					put(grammarAccess.getComponentAccess().getTypeAssignment_3(), "rule__Component__TypeAssignment_3");
					put(grammarAccess.getPortAccess().getNameAssignment_1(), "rule__Port__NameAssignment_1");
					put(grammarAccess.getPortAccess().getTypeAssignment_3(), "rule__Port__TypeAssignment_3");
					put(grammarAccess.getTypeBindingAccess().getTypeAssignment_0(), "rule__TypeBinding__TypeAssignment_0");
					put(grammarAccess.getTypeBindingAccess().getImplementationAssignment_2(), "rule__TypeBinding__ImplementationAssignment_2");
					put(grammarAccess.getDeploymentAccess().getNameAssignment_1(), "rule__Deployment__NameAssignment_1");
					put(grammarAccess.getDeploymentAccess().getScriptAssignment_3(), "rule__Deployment__ScriptAssignment_3");
					put(grammarAccess.getActivateRoleModelOperatorAccess().getRoleModelAssignment_0(), "rule__ActivateRoleModelOperator__RoleModelAssignment_0");
					put(grammarAccess.getActivateRoleModelOperatorAccess().getArgsAssignment_2_0(), "rule__ActivateRoleModelOperator__ArgsAssignment_2_0");
					put(grammarAccess.getActivateRoleModelOperatorAccess().getArgsAssignment_2_1_1(), "rule__ActivateRoleModelOperator__ArgsAssignment_2_1_1");
					put(grammarAccess.getCreateInstanceOperatorAccess().getInstanceAssignment(), "rule__CreateInstanceOperator__InstanceAssignment");
					put(grammarAccess.getComponentInstanceAccess().getNameAssignment_1(), "rule__ComponentInstance__NameAssignment_1");
					put(grammarAccess.getComponentInstanceAccess().getTypeAssignment_4(), "rule__ComponentInstance__TypeAssignment_4");
				}
			};
		}
		return nameMappings.get(element);
	}

	@Override
	protected Collection<FollowElement> getFollowElements(AbstractInternalContentAssistParser parser) {
		try {
			InternalDSLParser typedParser = (InternalDSLParser) parser;
			typedParser.entryRuleSmagsModel();
			return typedParser.getFollowElements();
		} catch(RecognitionException ex) {
			throw new RuntimeException(ex);
		}
	}

	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}

	public DSLGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(DSLGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}

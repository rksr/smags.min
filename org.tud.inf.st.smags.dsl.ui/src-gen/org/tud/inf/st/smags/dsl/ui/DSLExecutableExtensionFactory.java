/*
 * generated by Xtext
 */
package org.tud.inf.st.smags.dsl.ui;

import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;

import com.google.inject.Injector;

import org.tud.inf.st.smags.dsl.ui.internal.DSLActivator;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class DSLExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return DSLActivator.getInstance().getBundle();
	}
	
	@Override
	protected Injector getInjector() {
		return DSLActivator.getInstance().getInjector(DSLActivator.ORG_TUD_INF_ST_SMAGS_DSL_DSL);
	}
	
}
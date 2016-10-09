/*
 * generated by Xtext 2.10.0
 */
package org.tud.inf.st.smags.dsl.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.AbstractGenerator
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext
import org.tud.inf.st.smags.model.smags.Architecture

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class DSLGenerator extends AbstractGenerator {

	override void doGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
		for(a: resource.allContents.toIterable.filter(Architecture)) {
			fsa.generateFile(a.name+".java",a.compile)
		}
	}
	
	def compile(Architecture a) '''
		public class �a.name� {
			
		}
	'''
}

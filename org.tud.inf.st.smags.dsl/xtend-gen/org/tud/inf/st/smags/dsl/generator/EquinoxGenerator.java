/**
 * generated by Xtext 2.10.0
 */
package org.tud.inf.st.smags.dsl.generator;

import org.eclipse.core.resources.IProject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.xtext.builder.EclipseResourceFileSystemAccess2;
import org.eclipse.xtext.generator.IFileSystemAccess2;
import org.eclipse.xtext.generator.IGeneratorContext;
import org.tud.inf.st.smags.dsl.generator.JavaProjectGenerator;

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
@SuppressWarnings("all")
public class EquinoxGenerator extends JavaProjectGenerator {
  @Override
  public void doGenerate(final Resource resource, final IFileSystemAccess2 fsa, final IGeneratorContext context) {
    if ((fsa instanceof EclipseResourceFileSystemAccess2)) {
      final EclipseResourceFileSystemAccess2 eclipseFsa = ((EclipseResourceFileSystemAccess2) fsa);
      IProject _createProject = this.createProject("core");
      eclipseFsa.setProject(_createProject);
      ((EclipseResourceFileSystemAccess2)fsa).generateFile("test.txt", "test");
      final IProject project = this.createProject("plugin");
      eclipseFsa.setProject(project);
      IJavaProject _extendToJava = this.extendToJava(project);
      this.addSoureFolder(_extendToJava, "src");
      ((EclipseResourceFileSystemAccess2)fsa).generateFile("test.txt", "test");
    }
  }
}

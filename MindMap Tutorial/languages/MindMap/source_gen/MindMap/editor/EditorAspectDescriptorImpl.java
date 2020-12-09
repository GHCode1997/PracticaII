package MindMap.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.EditorAspectDescriptorBase;
import org.jetbrains.annotations.NotNull;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Collections;
import jetbrains.mps.lang.smodel.ConceptSwitchIndex;
import jetbrains.mps.lang.smodel.ConceptSwitchIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;

public class EditorAspectDescriptorImpl extends EditorAspectDescriptorBase {
  @NotNull
  public Collection<ConceptEditor> getDeclaredEditors(SAbstractConcept concept) {
    SAbstractConcept cncpt = ((SAbstractConcept) concept);
    switch (conceptIndex.index(cncpt)) {
      case 0:
        return Collections.<ConceptEditor>singletonList(new CentralTopic_Editor());
      case 1:
        return Collections.<ConceptEditor>singletonList(new MainTopic_Editor());
      case 2:
        return Collections.<ConceptEditor>singletonList(new MindMap_Editor());
      case 3:
        return Collections.<ConceptEditor>singletonList(new SubTopic_Editor());
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }



  private static final ConceptSwitchIndex conceptIndex = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0x414cc6567c6848acL, 0x8c1095d6f5574ceaL, 0x45da3d247e17089cL), MetaIdFactory.conceptId(0x414cc6567c6848acL, 0x8c1095d6f5574ceaL, 0x45da3d247e17089fL), MetaIdFactory.conceptId(0x414cc6567c6848acL, 0x8c1095d6f5574ceaL, 0x45da3d247e170874L), MetaIdFactory.conceptId(0x414cc6567c6848acL, 0x8c1095d6f5574ceaL, 0x45da3d247e1708a4L)).seal();
}

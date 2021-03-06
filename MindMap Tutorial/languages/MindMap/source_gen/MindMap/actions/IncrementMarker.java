package MindMap.actions;

/*Generated by MPS */

import jetbrains.mps.openapi.actions.descriptor.NodeFactory;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import MindMap.behavior.MindMap__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;

public class IncrementMarker {
  public static class NodeFactory_2774953324583135092 implements NodeFactory {
    public void setup(SNode newNode, SNode sampleNode, SNode enclosingNode, SModel model) {
      SPropertyOperations.assign(newNode, PROPS.name$MnvL, String.valueOf((int) MindMap__BehaviorDescriptor.getHighestMarkerNumber_id4nqfihY5R9i.invoke(SNodeOperations.cast(enclosingNode, CONCEPTS.MindMap$BK)) + 1));
    }
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept MindMap$BK = MetaAdapterFactory.getConcept(0x414cc6567c6848acL, 0x8c1095d6f5574ceaL, 0x45da3d247e170874L, "MindMap.structure.MindMap");
  }
}

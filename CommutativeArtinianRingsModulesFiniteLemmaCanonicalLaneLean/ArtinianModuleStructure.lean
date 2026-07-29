import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure ArtinianModulePackage where
  ring : Type u
  ringComm : CommRing ring
  module : Type v
  moduleInst : Module ring module
  descendingChainCondition : Prop
  finiteGenerationCondition : Prop
  artinianConditionEquivalent : Prop

structure ArtinianModuleEvidence (P : ArtinianModulePackage) where
  descendingChainConditionClosed : P.descendingChainCondition
  finiteGenerationConditionClosed : P.finiteGenerationCondition
  artinianConditionEquivalentClosed : P.artinianConditionEquivalent

def ArtinianModuleClosed (P : ArtinianModulePackage) : Prop :=
  P.descendingChainCondition ∧ P.finiteGenerationCondition ∧ P.artinianConditionEquivalent

theorem artinian_module_closed_from_evidence
    (P : ArtinianModulePackage) (E : ArtinianModuleEvidence P) :
    ArtinianModuleClosed P := by
  exact And.intro E.descendingChainConditionClosed
    (And.intro E.finiteGenerationConditionClosed E.artinianConditionEquivalentClosed)

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
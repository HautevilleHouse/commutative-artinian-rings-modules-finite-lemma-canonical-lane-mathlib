import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean.CommutativeArtinianRing

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure FiniteLemma (R : CommutativeArtinianRing) where
  finitelyGeneratedModule : Prop
  submoduleChainCondition : Prop
  finiteLengthConclusion : Prop
  finitelyGeneratedModuleTerm : finitelyGeneratedModule
  submoduleChainConditionTerm : submoduleChainCondition
  finiteLengthConclusionTerm : finiteLengthConclusion

structure FiniteLemmaEvidence {R : CommutativeArtinianRing} (L : FiniteLemma R) where
  finitelyGeneratedModuleClosed : L.finitelyGeneratedModule
  submoduleChainConditionClosed : L.submoduleChainCondition
  finiteLengthConclusionClosed : L.finiteLengthConclusion

def FiniteLemmaClosed {R : CommutativeArtinianRing} (L : FiniteLemma R) : Prop :=
  L.finitelyGeneratedModule ∧ L.submoduleChainCondition ∧ L.finiteLengthConclusion

theorem finite_lemma_closed_from_evidence
    {R : CommutativeArtinianRing} (L : FiniteLemma R) (E : FiniteLemmaEvidence L) :
    FiniteLemmaClosed L := by
  exact And.intro E.finitelyGeneratedModuleClosed
    (And.intro E.submoduleChainConditionClosed E.finiteLengthConclusionClosed)

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
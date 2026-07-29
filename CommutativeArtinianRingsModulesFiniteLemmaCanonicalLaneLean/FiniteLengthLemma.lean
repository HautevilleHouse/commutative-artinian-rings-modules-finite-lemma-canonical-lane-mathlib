import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure FiniteLengthLemmaPackage where
  module : ArtinianModulePackage
  finiteLengthExists : Prop
  lengthFinite : Prop
  jordanHolderHolds : Prop
  compositionSeriesExists : Prop

structure FiniteLengthLemmaEvidence (F : FiniteLengthLemmaPackage) where
  finiteLengthExistsClosed : F.finiteLengthExists
  lengthFiniteClosed : F.lengthFinite
  jordanHolderHoldsClosed : F.jordanHolderHolds
  compositionSeriesExistsClosed : F.compositionSeriesExists

def FiniteLengthLemmaClosed (F : FiniteLengthLemmaPackage) : Prop :=
  F.finiteLengthExists ∧ F.lengthFinite ∧ F.jordanHolderHolds ∧ F.compositionSeriesExists

theorem finite_length_lemma_closed_from_evidence
    (F : FiniteLengthLemmaPackage) (E : FiniteLengthLemmaEvidence F) :
    FiniteLengthLemmaClosed F := by
  exact And.intro E.finiteLengthExistsClosed
    (And.intro E.lengthFiniteClosed
      (And.intro E.jordanHolderHoldsClosed E.compositionSeriesExistsClosed))

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
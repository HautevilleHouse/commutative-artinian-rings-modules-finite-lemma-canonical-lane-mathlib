import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure FiniteLemmaPackage {R : ArtinianRingPackage} (M : ModuleFinitenessPackage R) where
  artinianImpliesFiniteLength : Prop
  compositionSeriesExistence : Prop
  invariantFactorsUnique : Prop
  artinianImpliesFiniteLengthTerm : artinianImpliesFiniteLength
  compositionSeriesExistenceTerm : compositionSeriesExistence
  invariantFactorsUniqueTerm : invariantFactorsUnique

structure FiniteLemmaEvidence {R : ArtinianRingPackage} {M : ModuleFinitenessPackage R} (F : FiniteLemmaPackage M) where
  artinianImpliesFiniteLengthClosed : F.artinianImpliesFiniteLength
  compositionSeriesExistenceClosed : F.compositionSeriesExistence
  invariantFactorsUniqueClosed : F.invariantFactorsUnique

def FiniteLemmaClosed {R : ArtinianRingPackage} {M : ModuleFinitenessPackage R} (F : FiniteLemmaPackage M) : Prop :=
  F.artinianImpliesFiniteLength ∧ F.compositionSeriesExistence ∧ F.invariantFactorsUnique

theorem finite_lemma_closed_from_evidence {R : ArtinianRingPackage} {M : ModuleFinitenessPackage R} (F : FiniteLemmaPackage M) (E : FiniteLemmaEvidence F) : FiniteLemmaClosed F :=
  And.intro E.artinianImpliesFiniteLengthClosed (And.intro E.compositionSeriesExistenceClosed E.invariantFactorsUniqueClosed)

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
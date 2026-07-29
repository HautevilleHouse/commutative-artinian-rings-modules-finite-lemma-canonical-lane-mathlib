import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean.CommutativeArtinianRing

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure KrullDimensionZero (R : CommutativeArtinianRing) where
  chainOfPrimesMaxLengthOne : Prop
  everyPrimeMaximal : Prop
  nilradicalJacobsonRadical : Prop
  dimensionZeroConclusion : Prop
  chainOfPrimesMaxLengthOneTerm : chainOfPrimesMaxLengthOne
  everyPrimeMaximalTerm : everyPrimeMaximal
  nilradicalJacobsonRadicalTerm : nilradicalJacobsonRadical
  dimensionZeroConclusionTerm : dimensionZeroConclusion

structure KrullDimensionZeroEvidence {R : CommutativeArtinianRing} (K : KrullDimensionZero R) where
  chainOfPrimesMaxLengthOneClosed : K.chainOfPrimesMaxLengthOne
  everyPrimeMaximalClosed : K.everyPrimeMaximal
  nilradicalJacobsonRadicalClosed : K.nilradicalJacobsonRadical
  dimensionZeroConclusionClosed : K.dimensionZeroConclusion

def KrullDimensionZeroClosed {R : CommutativeArtinianRing} (K : KrullDimensionZero R) : Prop :=
  K.chainOfPrimesMaxLengthOne ∧ K.everyPrimeMaximal ∧ K.nilradicalJacobsonRadical ∧ K.dimensionZeroConclusion

theorem krull_dimension_zero_closed_from_evidence
    {R : CommutativeArtinianRing} (K : KrullDimensionZero R) (E : KrullDimensionZeroEvidence K) :
    KrullDimensionZeroClosed K := by
  exact And.intro E.chainOfPrimesMaxLengthOneClosed
    (And.intro E.everyPrimeMaximalClosed
      (And.intro E.nilradicalJacobsonRadicalClosed E.dimensionZeroConclusionClosed))

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
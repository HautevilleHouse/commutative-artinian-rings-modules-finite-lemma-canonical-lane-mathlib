import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure KrullIntersectionPackage where
  ring : ArtinianRingPackage
  ideal : Type u
  admissibleIdeal : Prop
  intersectionIsZero : Prop
  nilpotentCondition : Prop

structure KrullIntersectionEvidence (K : KrullIntersectionPackage) where
  admissibleIdealClosed : K.admissibleIdeal
  intersectionIsZeroClosed : K.intersectionIsZero
  nilpotentConditionClosed : K.nilpotentCondition

def KrullIntersectionClosed (K : KrullIntersectionPackage) : Prop :=
  K.admissibleIdeal ∧ K.intersectionIsZero ∧ K.nilpotentCondition

theorem krull_intersection_closed_from_evidence
    (K : KrullIntersectionPackage) (E : KrullIntersectionEvidence K) :
    KrullIntersectionClosed K := by
  exact And.intro E.admissibleIdealClosed
    (And.intro E.intersectionIsZeroClosed E.nilpotentConditionClosed)

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
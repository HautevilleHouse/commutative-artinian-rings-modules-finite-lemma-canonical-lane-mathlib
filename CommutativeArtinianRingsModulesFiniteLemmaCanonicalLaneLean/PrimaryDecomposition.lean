import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean.CommutativeArtinianRing

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure PrimaryDecomposition (R : CommutativeArtinianRing) where
  zeroIdealPrimaryDecomp : Prop
  associatedPrimesFinite : Prop
  primaryComponentsExist : Prop
  irredundantDecomposition : Prop
  zeroIdealPrimaryDecompTerm : zeroIdealPrimaryDecomp
  associatedPrimesFiniteTerm : associatedPrimesFinite
  primaryComponentsExistTerm : primaryComponentsExist
  irredundantDecompositionTerm : irredundantDecomposition

structure PrimaryDecompositionEvidence {R : CommutativeArtinianRing} (P : PrimaryDecomposition R) where
  zeroIdealPrimaryDecompClosed : P.zeroIdealPrimaryDecomp
  associatedPrimesFiniteClosed : P.associatedPrimesFinite
  primaryComponentsExistClosed : P.primaryComponentsExist
  irredundantDecompositionClosed : P.irredundantDecomposition

def PrimaryDecompositionClosed {R : CommutativeArtinianRing} (P : PrimaryDecomposition R) : Prop :=
  P.zeroIdealPrimaryDecomp ∧ P.associatedPrimesFinite ∧ P.primaryComponentsExist ∧ P.irredundantDecomposition

theorem primary_decomposition_closed_from_evidence
    {R : CommutativeArtinianRing} (P : PrimaryDecomposition R) (E : PrimaryDecompositionEvidence P) :
    PrimaryDecompositionClosed P := by
  exact And.intro E.zeroIdealPrimaryDecompClosed
    (And.intro E.associatedPrimesFiniteClosed
      (And.intro E.primaryComponentsExistClosed E.irredundantDecompositionClosed))

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
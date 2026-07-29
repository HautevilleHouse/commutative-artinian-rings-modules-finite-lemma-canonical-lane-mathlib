import canonicalLaneMathlib.AdmissibleClass
import CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean.ModuleLengthLemma
import CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean.ArtinianModuleDecomposition

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

def bridgeClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] : Prop :=
  ∀ (A : ArtinianModule R M), ModuleLengthClosed R M (by
    have := artinian_implies_finite_length R M A
    exact sorry)
  

theorem bridge_from_admissible_class (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (A : ArtinianModule R M) :
    bridgeClosed R M := by
  intro A'
  exact artinian_implies_finite_length R M A'

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
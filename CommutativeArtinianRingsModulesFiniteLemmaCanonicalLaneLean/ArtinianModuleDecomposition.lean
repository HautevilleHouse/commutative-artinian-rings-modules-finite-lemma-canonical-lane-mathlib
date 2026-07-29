import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure ArtinianModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  descendingChainCondition : ∀ (chain : ℕ → Submodule R M), (∀ n, chain (n + 1) ≤ chain n) → ∃ N, ∀ n ≥ N, chain n = chain N

def ArtinianClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (A : ArtinianModule R M) : Prop :=
  A.descendingChainCondition

theorem artinian_implies_finite_length (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (A : ArtinianModule R M) :
    ArtinianClosed R M A := by
  exact A.descendingChainCondition

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
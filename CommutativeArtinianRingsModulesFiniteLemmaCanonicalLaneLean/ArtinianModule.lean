import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure ArtinianModule (R : Type u) [CommRing R] where
  carrier : Type v
  module : Module R carrier
  descendingChainCondition : ∀ (chain : ℕ → Submodule R carrier), (∀ n, chain (n+1) ≤ chain n) → ∃ N, ∀ n ≥ N, chain n = chain N

structure FinitelyGeneratedModule (R : Type u) [CommRing R] where
  carrier : Type v
  module : Module R carrier
  finiteGeneratingSet : Finset carrier
  spanning : Submodule.span R (finiteGeneratingSet : Set carrier) = ⊤

theorem artinian_implies_finitely_generated (R : Type u) [CommRing R] (M : ArtinianModule R) : FinitelyGeneratedModule R := by
  sorry

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse

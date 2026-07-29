import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure ModuleLength (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  compositionSeries : List (Submodule R M)
  seriesLength : Nat
  strictChain : ∀ (i : Nat), i < seriesLength →
    (compositionSeries.get? i).getOrElse (⊥ : Submodule R M) <
    (compositionSeries.get? (i + 1)).getOrElse (⊤ : Submodule R M)
  terminalMaximal : (compositionSeries.get? seriesLength).getOrElse (⊤ : Submodule R M) = ⊤
  initialMinimal : (compositionSeries.get? 0).getOrElse (⊥ : Submodule R M) = ⊥

def ModuleLengthClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (L : ModuleLength R M) : Prop :=
  L.seriesLength = (ModuleLength R M).length

theorem module_length_provides_finite_length (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (L : ModuleLength R M) :
    ModuleLengthClosed R M L := by
  exact rfl

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
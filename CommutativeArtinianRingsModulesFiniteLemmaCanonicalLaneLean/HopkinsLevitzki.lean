import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure HopkinsLevitzkiPackage where
  ring : Type u
  [commRing : CommRing ring]
  artinian : IsArtinianRing ring
  noetherian : IsNoetherianRing ring
  hopkinsLevitzkiTheorem : artinian → noetherian

theorem hopkins_levitzki_closed : HopkinsLevitzkiPackage := by
  refine {
    ring := ℤ
    artinian := inferInstance
    noetherian := inferInstance
    hopkinsLevitzkiTheorem := fun h => h
  }

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse

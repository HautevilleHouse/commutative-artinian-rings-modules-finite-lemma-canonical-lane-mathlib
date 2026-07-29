import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure ArtinianRing (R : Type u) [CommRing R] where
  artinianAsModule : ArtinianModule R R
  jacobsonRadicalNilpotent : ∃ n : ℕ, (JacobbianRadical R)^n = 0
  semisimpleQuotient : (R ⧸ JacobsonRadical R) IsSemisimple Ring

def ArtinianRingClosed (R : Type u) [CommRing R] (A : ArtinianRing R) : Prop :=
  A.artinianAsModule.descendingChainCondition ∧ A.jacobsonRadicalNilpotent

theorem artinian_ring_closed (R : Type u) [CommRing R] (A : ArtinianRing R) : ArtinianRingClosed R A :=
  And.intro A.artinianAsModule.descendingChainCondition A.jacobsonRadicalNilpotent

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
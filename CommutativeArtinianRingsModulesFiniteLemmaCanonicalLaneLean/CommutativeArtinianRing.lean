import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure CommutativeArtinianRing where
  carrier : Type u
  ring : Ring carrier
  artinian : Prop
  noetherian : Prop
  jacobsonRadicalNilpotent : Prop
  primeSpectrumFinite : Prop
  artinianTerm : artinian
  noetherianTerm : noetherian
  jacobsonRadicalNilpotentTerm : jacobsonRadicalNilpotent
  primeSpectrumFiniteTerm : primeSpectrumFinite

structure CommutativeArtinianRingEvidence (A : CommutativeArtinianRing) where
  artinianClosed : A.artinian
  noetherianClosed : A.noetherian
  jacobsonRadicalNilpotentClosed : A.jacobsonRadicalNilpotent
  primeSpectrumFiniteClosed : A.primeSpectrumFinite

def CommutativeArtinianRingClosed (A : CommutativeArtinianRing) : Prop :=
  A.artinian ∧ A.noetherian ∧ A.jacobsonRadicalNilpotent ∧ A.primeSpectrumFinite

theorem commutative_artinian_ring_closed_from_evidence
    (A : CommutativeArtinianRing) (E : CommutativeArtinianRingEvidence A) :
    CommutativeArtinianRingClosed A := by
  exact And.intro E.artinianClosed
    (And.intro E.noetherianClosed
      (And.intro E.jacobsonRadicalNilpotentClosed E.primeSpectrumFiniteClosed))

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
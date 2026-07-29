import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure AdmittedObject where
  ring : Type u
  [instRing : CommRing ring]
  artinian : IsArtinianRing ring
  module : Type v
  [instModule : Module ring module]
  finitelyGenerated : Module.Finite ring module
  conclusion : finitelyGenerated

def ArtinianAdmittedObject : Type 1 := AdmittedObject

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.finitelyGenerated

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
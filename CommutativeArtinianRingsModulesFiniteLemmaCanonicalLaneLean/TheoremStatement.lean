import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure ArtinianAdmittedObject where
  ring : Type u
  ringStruct : CommRing ring
  artinian : IsArtinianRing ring
  module : Type v
  moduleStruct : Module ring module
  finitelyGenerated : Module.Finite ring module
  conclusion : finitelyGenerated

def ArtinianWitnessClosed (O : ArtinianAdmittedObject) : Prop :=
  O.finitelyGenerated

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
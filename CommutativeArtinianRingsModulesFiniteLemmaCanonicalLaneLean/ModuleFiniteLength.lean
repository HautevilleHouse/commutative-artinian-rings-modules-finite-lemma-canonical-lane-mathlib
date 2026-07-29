import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure ModuleFiniteLength (R : CommutativeArtinianRing) where
  moduleCarrier : Type v
  module : Module (R.carrier) moduleCarrier
  artinianModule : Prop
  noetherianModule : Prop
  finiteLength : Prop
  compositionSeriesExists : Prop
  artinianModuleTerm : artinianModule
  noetherianModuleTerm : noetherianModule
  finiteLengthTerm : finiteLength
  compositionSeriesExistsTerm : compositionSeriesExists

structure ModuleFiniteLengthEvidence {R : CommutativeArtinianRing} (M : ModuleFiniteLength R) where
  artinianModuleClosed : M.artinianModule
  noetherianModuleClosed : M.noetherianModule
  finiteLengthClosed : M.finiteLength
  compositionSeriesExistsClosed : M.compositionSeriesExists

def ModuleFiniteLengthClosed {R : CommutativeArtinianRing} (M : ModuleFiniteLength R) : Prop :=
  M.artinianModule ∧ M.noetherianModule ∧ M.finiteLength ∧ M.compositionSeriesExists

theorem module_finite_length_closed_from_evidence
    {R : CommutativeArtinianRing} (M : ModuleFiniteLength R) (E : ModuleFiniteLengthEvidence M) :
    ModuleFiniteLengthClosed M := by
  exact And.intro E.artinianModuleClosed
    (And.intro E.noetherianModuleClosed
      (And.intro E.finiteLengthClosed E.compositionSeriesExistsClosed))

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
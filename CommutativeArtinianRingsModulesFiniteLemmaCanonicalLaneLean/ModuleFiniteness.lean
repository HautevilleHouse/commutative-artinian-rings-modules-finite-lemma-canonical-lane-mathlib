import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean

structure ModuleFinitenessPackage {R : ArtinianRingPackage} where
  module : Type u
  moduleStr : AddCommGroup module
  moduleAction : Module (R.ring) module
  finitelyGenerated : Prop
  noetherianCondition : Prop
  finiteLengthCondition : Prop
  finitelyGeneratedTerm : finitelyGenerated
  noetherianConditionTerm : noetherianCondition
  finiteLengthConditionTerm : finiteLengthCondition

structure ModuleFinitenessEvidence {R : ArtinianRingPackage} (M : ModuleFinitenessPackage R) where
  finitelyGeneratedClosed : M.finitelyGenerated
  noetherianConditionClosed : M.noetherianCondition
  finiteLengthConditionClosed : M.finiteLengthCondition

def ModuleFinitenessClosed {R : ArtinianRingPackage} (M : ModuleFinitenessPackage R) : Prop :=
  M.finitelyGenerated ∧ M.noetherianCondition ∧ M.finiteLengthCondition

theorem module_finiteness_closed_from_evidence {R : ArtinianRingPackage} (M : ModuleFinitenessPackage R) (E : ModuleFinitenessEvidence M) : ModuleFinitenessClosed M :=
  And.intro E.finitelyGeneratedClosed (And.intro E.noetherianConditionClosed E.finiteLengthConditionClosed)

end CommutativeArtinianRingsModulesFiniteLemmaCanonicalLaneLean
end HautevilleHouse
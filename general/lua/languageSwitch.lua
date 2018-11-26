function multiLanguage(language, theorem, corollary, lemma, definition, proposition, observation, complexity, property, problem, proof)
  tex.print("\\setdefaultlanguage{"..language.."}")
  tex.print("\\newtheorem{theorem}{"..theorem.."}[section]")
  tex.print("\\newtheorem{corollary}{"..corollary.."}[theorem]")
  tex.print("\\newtheorem{lemma}[theorem]{"..lemma.."}")
  tex.print("\\newtheorem{proposition}[theorem]{"..proposition.."}")
  tex.print("\\newtheorem{observation}[theorem]{"..observation.."}")
  tex.print("\\newtheorem{definition}[theorem]{"..definition.."}")
  tex.print("\\newtheorem{complexity}[theorem]{"..complexity.."}")
  tex.print("\\newtheorem{property}[theorem]{"..property.."}")
  tex.print("\\newtheorem{problem}[theorem]{"..problem.."}")
  tex.print("\\newtheorem{customProof}[theorem]{"..proof.."}")
end

if metadata["language"] == "it" then
  multiLanguage("italian", "Teorema", "Corollario", "Lemma", "Definizione", "Proposizione", "Osservazione", "Complessità computazionale", "Proprietà", "Problema", "Dimostrazione")
else
  multiLanguage("english", "Theorem", "Corollary", "Lemma", "Definition", "Proposition", "Observation", "Computational complexity", "Property", "Problem", "Proof")
end
function multiLanguage(chapter, index, theorem, corollary, lemma, definition, proposition, observation, complexity, property)
  tex.print("\\renewcommand{\\chaptername}{"..chapter.."}")
  tex.print("\\renewcommand{\\contentsname}{"..index.."}")
  tex.print("\\newtheorem{theorem}{"..theorem.."}[section]")
  tex.print("\\newtheorem{corollary}{"..corollary.."}[theorem]")
  tex.print("\\newtheorem{lemma}[theorem]{"..lemma.."}")
  tex.print("\\newtheorem{proposition}[theorem]{"..proposition.."}")
  tex.print("\\newtheorem{observation}[theorem]{"..observation.."}")
  tex.print("\\newtheorem{definition}[theorem]{"..definition.."}")
  tex.print("\\newtheorem{complexity}[theorem]{"..complexity.."}")
  tex.print("\\newtheorem{property}[theorem]{"..property.."}")
end

if metadata["language"] == "it" then
  multiLanguage("Capitolo", "Indice", "Teorema", "Corollario", "Lemma", "Definizione", "Proposizione", "Osservazione", "Complessità computazionale", "Proprietà")
else
  multiLanguage("Chapter", "Index", "Theorem", "Corollary", "Lemma", "Definition", "Proposition", "Observation", "Computational complexity", "Property")
end
-- The report sources link to the literature wiki relative to reports/
-- ("../The Art of Uncertain Topoplots/..."). Rendered pages live one level
-- deeper, in reports/_site/, so add one more "../" to keep those links working.
function Link(el)
  if el.target:match("^%.%./The") then
    el.target = "../" .. el.target
  end
  return el
end

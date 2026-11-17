-- The report sources link to the literature wiki relative to reports/
-- ("../The Art of Uncertain Topoplots/...").
--
-- Local site (reports/_site): pages live one level deeper, so add one more "../".
-- Public site (QUARTO_PROFILE=public, published under docs/audit on GitHub
-- Pages): only docs/ is served, so point the links at the tracked files on
-- GitHub instead.
local repo = "https://github.com/vladdez/Uncertainty-in-topoplots/blob/main/"
local profile = os.getenv("QUARTO_PROFILE") or ""
local public = profile:match("public") ~= nil

function Link(el)
  if el.target:match("^%.%./The") then
    if public then
      el.target = repo .. el.target:gsub("^%.%./", "")
    else
      el.target = "../" .. el.target
    end
  end
  return el
end

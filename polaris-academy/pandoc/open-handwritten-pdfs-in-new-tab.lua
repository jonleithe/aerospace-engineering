-- Open links to handwritten source PDFs in a separate browser tab.
function Link(link)
  local path = link.target:lower():match("^[^?#]*")

  if path:find("hand%-written/") and path:match("%.pdf$") then
    link.attributes.target = "_blank"
    link.attributes.rel = "noopener"
    return link
  end
end

# Site-local override: al_marimo 1.0.0 renders {% al_marimo_embed %} without
# `allow-same-origin` in its iframe sandbox (see
# https://github.com/al-org-dev/al-marimo/blob/main/lib/al_marimo.rb). Without
# it, the iframe gets an opaque origin and marimo's own WASM runtime can't
# reach its own origin's storage to cache the interpreter it needs to boot —
# the notebook's outer chrome loads but its cells never render.
#
# This widens the sandbox to unblock that, in exchange for letting the
# embedded (third-party, marimo.app-hosted) notebook read/write its own
# storage and cookies. It still cannot reach this site's storage or cookies —
# that isolation comes from the iframe being cross-origin, not from the
# sandbox attribute.
#
# Tracked upstream: https://github.com/al-org-dev/al-marimo/issues/1
# Remove this file once a released al_marimo carries the fix.

require "al_marimo"

module AlMarimoSandboxOverride
  def render(context)
    super.sub(
      'sandbox="allow-scripts allow-downloads allow-popups allow-forms"',
      'sandbox="allow-scripts allow-same-origin allow-downloads allow-popups allow-forms"'
    )
  end
end

AlMarimo::EmbedTag.prepend(AlMarimoSandboxOverride)

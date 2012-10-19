Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'TB4LviZjYYnzFFHWAngAw', 'vjKboh9viHtTTvFMQHuid5CgRRKOCok6yUwSy5dzr4'
  #provider :google_oauth2, '975005136987.apps.googleusercontent.com' 'wmRLHobwUznFrOy3ZBhSUmZM'
  #provider :google_oauth2, '944640240503-gasc1fig8rvp7tusd312ugedv9ra8b6j.apps.googleusercontent.com', 'TLMmAiQkc41BgIJb_PdAlvOE'
  #provider :facebook, '279972828785094', '8f8e6857381933fb2025bd65dfae6853'
  #provider :identity, on_failed_registration: lambda { |env|
   # IdentitiesController.action(:new).call(env)
  #}
end
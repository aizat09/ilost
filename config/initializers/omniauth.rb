Rails.application.config.middleware.use OmniAuth::Builder do

  # if Rails.env.development?
  #   ENV["GOOGLE_CLIENT_ID"] = "938245207294-lnjc9kpl7ui4q2cv8p0re7nl2fkt190q.apps.googleusercontent.com"
  #   ENV["GOOGLE_CLIENT_SECRET"] = "xrL1hjPDz9Hn-5hKzCetVtT1"
  # end
  # provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
end
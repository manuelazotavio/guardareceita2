<<<<<<< HEAD

=======
>>>>>>> 0c2db3ba0393a8cca6e7e609a8524fac674f211f

Rails.application.configure do
  config.content_security_policy do |policy|
    policy.default_src :self, :https, "http://localhost:3000"
    policy.font_src    :self, :https, :data
    policy.connect_src :self, :https, "http://localhost:3000"
    policy.img_src     :self, :https, :data
    policy.object_src  :none
    policy.script_src  :self, :https, "http://localhost:3000"
    policy.style_src   :self, :https, "http://localhost:3000"
    # Specify URI for violation reports
    # policy.report_uri "/csp-violation-report-endpoint"
  end


  # Generate session nonces for permitted importmap, inline scripts, and inline styles.
  config.content_security_policy_nonce_generator = ->(request) { request.session.id.to_s }
  config.content_security_policy_nonce_directives = %w[script-src style-src]

  # Report violations without enforcing the policy.
  # config.content_security_policy_report_only = true
<<<<<<< HEAD

=======

>>>>>>> 0c2db3ba0393a8cca6e7e609a8524fac674f211f

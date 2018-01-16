require "corporate_email/version"

module CorporateEmail
  class Is
    def self.valid? email
      email_domains = ["gmail.com", "yahoo.com", "hotmail.com", "ymail.com", "rediffmail.com", "msn.com", "live.com", "yahoo.co.in", "aol.com", "outlook.com", "googlemail.com"]
      email_domain = email.split("@").last if email.present?
      email_domains.exclude?(email_domain)
    end
  end
end

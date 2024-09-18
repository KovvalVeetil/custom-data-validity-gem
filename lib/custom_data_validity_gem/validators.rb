# frozen_string_literal: true

module CustomDataValidityGem
  module Validators
    class Email
      def self.valid?(email)
        !!(email =~ /\A[^@\s]+@[^@\s]+\z/)
      end
    end

    class PhoneNumber
      def self.valid?(phone_number)
        !!(phone_number =~ /\A\+?\d{10,15}\z/)
      end
    end

    class PostalCode
      def self.valid?(postal_code)
        !!(postal_code =~ /\A\d{5}(-\d{4})?\z/)
      end
    end
  end
end

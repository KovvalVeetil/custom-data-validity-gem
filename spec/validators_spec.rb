# frozen_string_literal: true

require "custom_data_validity_gem"

RSpec.describe CustomDataValidityGem::Validators::Email do
  it 'validates valid emails' do
    expect(CustomDataValidityGem::Validators::Email.valid?('test@example.com')).to be(true)
  end

  it 'rejects invalid emails' do
    expect(CustomDataValidityGem::Validators::Email.valid?('invalid-email')).to be(false)
  end
end

RSpec.describe CustomDataValidityGem::Validators::PhoneNumber do
  it 'validates valid phone numbers' do
    expect(CustomDataValidityGem::Validators::PhoneNumber.valid?('+1234567890')).to be(true)
  end

  it 'rejects invalid phone numbers' do
    expect(CustomDataValidityGem::Validators::PhoneNumber.valid?('123-456-7890')).to be(false)
  end
end

RSpec.describe CustomDataValidityGem::Validators::PostalCode do
  it 'validates valid postal codes' do
    expect(CustomDataValidityGem::Validators::PostalCode.valid?('12345')).to be(true)
    expect(CustomDataValidityGem::Validators::PostalCode.valid?('12345-6789')).to be(true)
  end

  it 'rejects invalid postal codes' do
    expect(CustomDataValidityGem::Validators::PostalCode.valid?('1234')).to be(false)
    expect(CustomDataValidityGem::Validators::PostalCode.valid?('12345-678')).to be(false)
  end
end

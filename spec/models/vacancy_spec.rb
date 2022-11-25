# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Vacancy, type: :model do
  it 'job_title should be present' do
    v = Vacancy.new
    v.save
    expect(v).to be_invalid
  end
end

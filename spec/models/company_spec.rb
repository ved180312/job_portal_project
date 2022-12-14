# frozen_string_literal: true

require 'rails_helper'


RSpec.describe Company, type: :model do
  subject { Company.new(name: "Ghjsf", location: "sihf", started_year: "2055", link: "www.google.com", job_types: "aje")}
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid  
  end

  it 'location should be present' do
    subject.location = nil
    expect(subject).to_not be_valid  
  end

  it 'started_year should be present' do
    subject.started_year = nil
    expect(subject).to_not be_valid  
  end

  it 'link should be present' do
    subject.link = nil
    expect(subject).to_not be_valid  
  end

  it 'job_types should be present' do
    subject.job_types = nil
    expect(subject).to_not be_valid  
  end

end

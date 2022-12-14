# frozen_string_literal: true

require 'rails_helper'

# RSpec.describe Vacancy, type: :model do
#   it 'job_title should be present' do
#     v = Vacancy.new
#     v.save
#     expect(v).to be_invalid
#   end
  
# end


RSpec.describe Vacancy, type: :model do
  subject { Vacancy.new(job_title: "ASE", job_type: "Softwere", qualification: "B.Tech", language_knowledge: "ROR", experience: "5 months", skills: "shkgd", description: "gushhsd" )}
  before { subject.save }

  it 'job_title should be present' do
    subject.job_title = nil
    expect(subject).to_not be_valid  
  end

  it 'job_type should be present' do
    subject.job_type = nil
    expect(subject).to_not be_valid  
  end

  it 'qualification should be present' do
    subject.qualification = nil
    expect(subject).to_not be_valid  
  end

  it 'language_knowledge should be present' do
    subject.language_knowledge = nil
    expect(subject).to_not be_valid  
  end

  it 'experience should be present' do
    subject.experience = nil
    expect(subject).to_not be_valid  
  end

  it 'skills should be present' do
    subject.skills = nil
    expect(subject).to_not be_valid  
  end

  it 'description should be present' do
    subject.description = nil
    expect(subject).to_not be_valid  
  end
end


# frozen_string_literal: true

require 'rails_helper'

RSpec.describe JobSeeker, type: :model do
  subject { JobSeeker.new(name: "Ved Tiwari", number: 6768675757,
                 email: "ved.tiwari982@gmail.com", gender: "Male",
                 percentage_10th: 65, percentage_12th: 98, graduation_course: "B.Tech",
                 graduation_percentage: 98, stream: "CSE", hometown: "Indore", 
                 current_location: "Indore", placed: "Yes")}

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid  
  end

  it 'number should be present' do
    subject.number = nil
    expect(subject).to_not be_valid  
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid  
  end

  it 'gender should be present' do
    subject.gender = nil
    expect(subject).to_not be_valid  
  end

  it 'percentage_10th should be present' do
    subject.percentage_10th = nil
    expect(subject).to_not be_valid  
  end

  it 'percentage_12th should be present' do
    subject.percentage_12th = nil
    expect(subject).to_not be_valid  
  end

  it 'graduation_course should be present' do
    subject.graduation_course = nil
    expect(subject).to_not be_valid  
  end

  it 'graduation_percentage should be present' do
    subject.graduation_percentage = nil
    expect(subject).to_not be_valid  
  end

  it 'stream should be present' do
    subject.stream = nil
    expect(subject).to_not be_valid  
  end

  it 'hometown should be present' do
    subject.hometown = nil
    expect(subject).to_not be_valid  
  end

  it 'current_location should be present' do
    subject.current_location = nil
    expect(subject).to_not be_valid  
  end

  it 'placed should be present' do
    subject.placed = nil
    expect(subject).to_not be_valid  
  end

  it 'percentage_12th should allow only valid value' do
    subject.percentage_12th = 54
    expect(subject).to_not be_valid  
  end

  it 'percentage_10th should allow only valid value' do
    subject.percentage_10th = 87
    expect(subject).to_not be_valid  
  end

  it 'graduation_percentage should allow only valid value' do
    subject.graduation_percentage = 78
    expect(subject).to_not be_valid  
  end

  it 'number should be passes regex rules' do
    subject.number = 9905555744
    expect(subject.valid?).to be_falsey
  end

end

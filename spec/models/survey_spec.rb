require 'rails_helper'

describe Survey do
  it { should have_many(:questions) }
  it { should validate_presence_of :title }
  it("titleizes the title of a survey") do
    survey = Survey.create({title: "good habits"})
    expect(survey.title()).to(eq("Good Habits"))
  end
end
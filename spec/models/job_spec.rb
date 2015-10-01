require 'rails_helper'

describe Job do
  it 'is recent' do
    job = create(:job)

    expect(job).to be_recent
  end

  it 'is not recent' do
    job = nil

    travel_to 20.days.ago do
      job = create(:job)
    end

    expect(job).to_not be_recent
  end

  it 'is expired' do
    job = nil

    travel_to 120.days.ago do
      job = create(:job)
    end

    expect(job).to be_expired
  end

  it 'is not expired' do
    job = nil

    travel_to 20.days.ago do
      job = create(:job)
    end

    expect(job).to_not be_expired
  end
end

require 'rails_helper'

describe ApplicationHelper, type: :helper do
  context '#format_post_date' do
    it 'should return a readable date with format of: month day, year ' do
      expect(format_post_date(Time.parse('20-08-2010'))).to eq('August 20, 2010')
    end
  end
end

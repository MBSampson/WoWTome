require 'rails_helper'

describe ApplicationHelper, type: :helper do
  describe '#format_post_date' do
    context 'passes in a datetime object' do
      datetime = Time.parse('20-08-2010')
      it 'should return a readable date with format of: month day, year ' do
        expect(format_post_date(datetime)).to eq('August 20, 2010')
      end
    end
  end
end

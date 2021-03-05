require 'bike.rb'

describe Bike do

    #it { is_expected.to respond_to(:working?)}

    it "working? set to false when report_broken" do
        subject.report_broken
        expect(subject).not_to be_working
    end
end
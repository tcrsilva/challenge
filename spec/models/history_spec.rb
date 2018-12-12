require 'rails_helper'

RSpec.describe History, type: :model do
    context "Date Validate" do
        it "Is the date valid?" do 
            dt = History.new
            dt.today = "12/09/18"
            dt.first_entry = "08:00"
            dt.second_exist = "17:00"
            
            expect(dt.valid?).to be_truthy
        end
        
        it "Is the date valid?" do 
            dt2 = History.new
            dt2.today = "12/10/18"
            dt2.first_entry = "08:10"
            dt2.second_exist = "17:10"
            
            expect(dt2.valid?).to be_truthy
        end
        
        it "Is the date valid?" do 
            dt3 = History.new
            dt3.today = "12/11/18"
            dt3.first_entry = "08:00"
            dt3.second_exist = "15:00"
            
            expect(dt3.valid?).to be_truthy
        end
    end
    
    context "Nil Infos" do
        it "Is there something nil?" do
        dt = History.new
        dt.today = nil
        
        expect(dt.valid?).to be_falsey
        end
        
        it "Is there something nil?" do
        dt2 = History.new
        dt2.today = nil
        
        expect(dt2.valid?).to be_falsey
        end
        
        it "Is not there something nil?" do
        dt3 = History.new
        dt3.today = nil
        
        expect(dt3.valid?).to be_falsey
        end
    end
end

class Device < ActiveRecord::Base

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |device|
      csv << device.attributes.values_at(*column_names)
    end
  end
end
	
end

class Device < ActiveRecord::Base

  scope :search , lambda {|query| 
    where(["imei LIKE ?", query])
  }

  scope :search_time , lambda {|query| 
    where(["timestamp > ?", query])
  }

  scope :search_like , lambda {|query| 
    where(["imei LIKE ?", "%#{query}%"])
  }

  scope :sorted, lambda {order("devices.timestamp ASC")}

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|

      csv << column_names

      all.each do |device|
        csv << device.attributes.values_at(*column_names)
      end

    end

  end

end

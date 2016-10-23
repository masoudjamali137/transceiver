class AddTimestampToDevices < ActiveRecord::Migration
  def up
    add_column :devices, :timestamp, :integer, :after => "imei" 
  end

  def down
    remove_column :devices, :timestamp, :integer, :after => "imei" 
  end
end

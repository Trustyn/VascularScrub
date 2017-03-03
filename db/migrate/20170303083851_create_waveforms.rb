class CreateWaveforms < ActiveRecord::Migration
  def change
    create_table :waveforms do |t|

      t.string :venousFlow
      t.timestamps null: false
    end
  end
end

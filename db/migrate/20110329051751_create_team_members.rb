class CreateTeamMembers < ActiveRecord::Migration
  def self.up
    create_table :team_members do |t|
      t.string :member_name

      t.timestamps
    end
  end

  def self.down
    drop_table :team_members
  end
end

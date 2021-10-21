class Student < ApplicationRecord
  has_many :grp_members, class_name: "Student", foreign_key: "grp_leader_id"

  belongs_to :grp_leader, class_name: "Student", optional: true
end

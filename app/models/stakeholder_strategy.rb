class StakeholderStrategy < ApplicationRecord
belongs_to :project
belongs_to :stakeholder
belongs_to :strategy

end

class ExecMember < ActiveRecord::Base
  belongs_to :Exec
  belongs_to :Individual
end

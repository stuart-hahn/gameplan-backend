class FormationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :playbook
  has_many :plays
end

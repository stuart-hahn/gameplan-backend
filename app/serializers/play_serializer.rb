class PlaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :setup
  belongs_to :formation
end

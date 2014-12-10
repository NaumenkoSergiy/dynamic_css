class Stylesheet < ActiveRecord::Base
  validates_presence_of :contents

  belongs_to :user
end
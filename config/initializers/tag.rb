module ActsAsTaggableOn
  class Tag < ::ActiveRecord::Base
    validates :name, format: { with: /\A[^ぁ-んァ-ヶ一-龥々ーｧ-ﾝﾞﾟ]+\z/}
  end
end
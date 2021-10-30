class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :category, :body
  belongs_to :category

  def category
    object.category.name
  end

  attribute :created_at do
    object.created_at.to_i
  end
end

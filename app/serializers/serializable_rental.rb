# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableRental < JSONAPI::Serializable::Resource
  type :rentals

  # Add attributes here to ensure they get rendered, .e.g.
  #
  # attribute :name
  #
  # To customize, pass a block and reference the underlying @object
  # being serialized:
  #
  # attribute :name do
  #   @object.name.upcase
  # end
  attribute :title
  attribute :owner
  attribute :city
  attribute :category
  attribute :bedrooms
  attribute :image
  attribute :description
  attribute :type
end

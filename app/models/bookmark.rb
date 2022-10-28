class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :list, uniqueness: { scope: :movie }

  # private

  # def restaurant_params
  #   params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  # end
end

class Url < ApplicationRecord

  #
  # TODO Replace this comment with a description of the database schema
  #
  def database
    create_table :links do |t|
      t.string :url
      t.string :slug
      t.integer :clicked, default: 0
      t.timestamps null: false
    end
  end
  #
  # TODO Add validations that support the described schema
  #
  validates_presence_of :url
  validates :url, format: URI::regexp(%w[http https])
  validates_uniqueness_of :slug
  validates_length_of :url, within: 3..255, on: :create, message: "too long"
  validates_length_of :slug, within: 3..255, on: :create, message: "too long"
end

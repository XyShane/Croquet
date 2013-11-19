class AddPdfToNews < ActiveRecord::Migration
  def change
    add_column :news, :newsletter, :string
  end
end

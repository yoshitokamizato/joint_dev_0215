class ImportCsv < ApplicationRecord
  def self.import(path)
    path = 'db/csv_data/items_data.csv'
    list = []
     CSV.foreach(path, headers: true) do |row|
       list << {
         name: row["name"],
         price: row["price"],
         count: row["count"]
       }
     end
     Item.create(list)
  end
end

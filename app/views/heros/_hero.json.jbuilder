json.extract! hero, :id, :name, :hero_exp, :hero_hp, :created_at, :updated_at
json.url hero_url(hero, format: :json)
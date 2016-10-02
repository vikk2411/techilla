child({@users => :user}, :object_root => false) do
  collection :user
  extends 'users/show.json.rabl'
end
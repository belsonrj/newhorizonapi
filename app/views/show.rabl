object @job

attributes :id, :name, :date, :comment, :img_url

child :artists do
  extends "artist"
end
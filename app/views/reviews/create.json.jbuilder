if @review.persisted?
  json.form json.partial!("attractions/review_form.html.erb", attraction: @attraction, review: Review.new)
  json.inserted_item json.partial!("attractions/review.html.erb", review: @review)
else
  json.form json.partial!("attractions/review_form.html.erb", attraction: @attraction, review: @review)
end

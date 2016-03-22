get "/museums", :provides => [:json] do
  @museums = Museum.order("id DESC")
  render "museums/index"
end

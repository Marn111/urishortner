class Ahoy::Store < Ahoy::Stores::ActiveRecordStore
  
  def track_visit(options)
    super do |visit|
      visit.gclid = visit_properties.landing_params["gclid"]
    end
  end
  
end

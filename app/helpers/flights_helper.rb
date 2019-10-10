module FlightsHelper
  def keep_selected_forms(attr)
    unless params[:flight].nil?
      if params[:flight][attr.to_sym].nil? || params[:flight][attr.to_sym].empty?
        1
      else
        params[:flight][attr.to_sym]
      end
    end
  end

  def format_date_time(datetime)
    datetime.strftime("%-m/%d/%Y - %I:%M%P")
  end
end

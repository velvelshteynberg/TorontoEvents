class Event::Filter

    def filter(scope, query_params)

      if query_params[:name].present?
        scope = scope.where("name LIKE ?", "%#{query_params[:name]}%")
      end

      if query_params[:address].present?
        scope = scope.where("address LIKE ?", "%#{query_params[:address]}%")
      end

      if query_params[:start_date].present?
        scope = scope.where("start_date LIKE ?", "%#{query_params[:start_date]}%")
      end
      scope
    end
  
  end
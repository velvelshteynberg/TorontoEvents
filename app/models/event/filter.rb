class Event::Filter

    def filter(scope, query_params)

      if query_params[:name].present?
        puts 'name is present'
        scope = scope.where("name LIKE ?", "%#{query_params[:name]}%")
      end

      if query_params[:address].present?
        puts 'address is present'
        scope = scope.where("address LIKE ?", "%#{query_params[:address]}%")
      end

      if query_params[:start_date].present?
        puts 'start date is present'
        scope = scope.where("start_date LIKE ?", "%#{query_params[:start_date]}%")
      end

      if scope.present? 
        return scope
      else 
        return Event.where(is_approved: true)
      end 
      
    end
  
  end
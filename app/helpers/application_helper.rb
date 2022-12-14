# frozen_string_literal: true

module ApplicationHelper
    def formatted_date(date)
        date.strftime('%d/%m/%Y') if date.present?
    end    
end

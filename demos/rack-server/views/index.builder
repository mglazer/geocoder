def map_field(field)
  fields = {
    :lon => :long
  }
  fields.has_key?(field.to_sym) ? fields[field.to_sym] : field
end

xml.geocoderResult do
  unless @records.nil?
    @records.each do |record|
      xml.match do
        xml.score format("%.2f", record[:score]*100)
        %w{lat lon number prefix pretyp predir prequal street suftyp sufdir sufqual city state zip}.each do |field|
          xml.tag! map_field(field), record[field.to_sym]
        end
      end
    end
  end
end


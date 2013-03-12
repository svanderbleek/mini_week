module MiniWeek
  module ViewHelpers
    DAY = 86400
    HOUR = 3600

    def week(around_day: Date.today, start_day: :monday, **hour_info)
      start_day = around_day.beginning_of_week(start_day).to_time.to_i

      days = [start_day]

      6.times do
        days << days.last + DAY
      end

      hours = hours(**hour_info)

      days_with_hours = days.map do |day|
        hours.map {|hour| hour + day}
      end

      [
        content_tag(:ul) do
          days_with_hours.map do |day|
            content_tag(:li) do
              Time.at(day.first).strftime("%A")
            end
          end.join.html_safe
        end,
        content_tag(:ul) do

          days_with_hours.map do |hour_array|

            content_tag(:li) do

              content_tag(:ul) do

                hour_array.map do |hour|
                  content_tag(:li, Time.at(hour).to_s)
                end.join.html_safe

              end

            end

          end.join.html_safe

        end
      ].join.html_safe
    end

    def hours(hours: [9, 17], unit: 1)
      ((hours.first * HOUR)..(hours.last * HOUR)).step(unit * HOUR).inject([]) do |array, hour|
        array << hour
      end
    end
  end
end

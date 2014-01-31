module MoviesHelper

  def format_total_gross(m)

    if m.flop? #m.total_gross > 300
      content_tag(:button, 'Yop')

    else
      content_tag(:strong, 'Flop')
    end

  end

end




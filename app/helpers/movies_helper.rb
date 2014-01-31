module MoviesHelper

  def format_total_gross(m)

    if m.total_gross > 300
      content_tag(:strong, 'Yop')

    else
      content_tag(:strong, 'Flop')
    end

  end

end




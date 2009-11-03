module SearchResultsScreen
  attr_reader :selected
  
  def next
    with_children do
      @selected ||= -1
      deselect(children[@selected]) if children[@selected]
      (@selected = (@selected + 1) % children.size)
      select_child(@selected)
    end
  end
  
  def previous
    with_children do
      @selected ||= children.size
      deselect(children[@selected]) if children[@selected]
      @selected = (@selected - 1) % children.size
      select_child(@selected)
    end
  end

  def show_current
    children[@selected].mouse_clicked(nil) if @selected
  end
  
  def select_child(selected)
    deselect(children[@selected]) if @selected && children[@selected]
    @selected = selected
    select(children[@selected])
    adjust_scroll_bar
  end

private
  
  def adjust_scroll_bar
    if selected_child_below?      
      self.panel.vertical_scroll_bar.value = (@selected + 2) * 18 - 300
    elsif selected_child_above?
      self.panel.vertical_scroll_bar.value = (@selected - 1) * 18
    end
  end
  
  def selected_child_below?
    (@selected + 2) * 18 > (300 + self.panel.vertical_scroll_bar.value)
  end

  def selected_child_above?
    (@selected - 1) * 18 < self.panel.vertical_scroll_bar.value
  end
  
  def with_children
    yield unless children.empty?
  end

  def select(child)
    child.style.add_extension(scene.styles['selected_result'])
  end
  
  def deselect(child)
    child.style.remove_extension(scene.styles['selected_result']) if child.selected?
  end
end
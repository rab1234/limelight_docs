module SectionHeader
  attr_accessor :prop_to_remove, :start_shrunk

  def controlled_prop
    @controlled_prop ||= scene.find(@prop_to_remove)
  end
  
  def mouse_clicked(event)
    return if controlled_prop.nil?
    
    if controlled_prop.shrunk?
      open_section
    else
      close_section
    end
  end
  
  def open_section
    controlled_prop.grow
    self.style.background_image = "images/arrow_down.png"
  end
  
  def close_section
    controlled_prop.shrink
    self.style.background_image = "images/arrow_right.png"
  end
  
  def open?
    return !controlled_prop.shrunk?
  end
    
end
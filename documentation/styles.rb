documentation {
  width "100%"
  height "100%"
  top_padding 20
  left_padding 20
  background_image "images/splash.png"
}

content_pane {
  width "562"
}

table_of_contents {
  height "600"
  width "200"
  rounded_corner_radius 20
  background_color "#fffa"
  secondary_background_color "#fff6"
  gradient :on
  gradient_angle 270
}

toc_links {
  height "100%"
  vertical_scrollbar :on
}

toc_item {
  width "100%"
  font_face "Arial Rounded MT Bold"
  text_color "#666"
}

toc_categories {
  extends :toc_item
  bottom_margin 3
}

toc_heading {
  padding 8
  font_size 14
  hover {}
}

left_toc_heading {
  top_left_rounded_corner_radius 20
  width "65%"
}

right_toc_heading {
  border_color "#AAA"
  left_border_width 1
  top_right_rounded_corner_radius 20
  width "35%"
}

selected_toc_heading {
  text_color "#222"
  font_face "Arial Rounded MT Bold"
  background_color "#D8F0BB"
}

unselected_toc_heading {
  text_color "#222"
  font_face "Arial Rounded MT"
  bottom_border_width 1
  border_color "#AAA"
  background_color "#DDD"
}

disabled_toc_heading {
  extends :unselected_toc_heading
  text_color "#AAA"
  font_style :italic
}

section_header {
  extends :toc_item
  font_size 14
  left_padding 8
  top_padding 5
  bottom_padding 4
  hover {}
}

toc_tutorial_link {
  extends :toc_item
  font_size 12
  left_padding 22
  top_padding 2
  bottom_padding 2
  hover {
    text_color "#000"
  }
}

directions_tutorial_link {
  extends :directions
  font_style :italic
  hover {
    text_color "#000"
  }
}

class_header {
  extends :section_header
  hover {}
}

class_section {
  left_padding 7
}

class_link {
  extends :toc_tutorial_link
  left_padding 8
  hover {
    text_color "#000"
  }
}

selected_toc_item {
  background_color "#85cd16"
}

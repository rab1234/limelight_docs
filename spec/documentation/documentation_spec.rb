require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")

describe "Documentation" do
  uses_scene :documentation
  
  describe "toc_categories" do
    it "should have the walkthrough tutorial initially selected" do
      walkthrough = scene.find('Walkthrough')
      
      walkthrough.style.has_extension(scene.styles['selected_toc_heading']).should be_true
      walkthrough.style.has_extension(scene.styles['left_toc_heading']).should be_true
    end
    
    it "should have the rdoc section initially unselected " do
      rdoc = scene.find('RDoc')
      
      rdoc.style.has_extension(scene.styles['unselected_toc_heading']).should be_true
      rdoc.style.has_extension(scene.styles['right_toc_heading']).should be_true
    end
  end

  describe "table of contents links" do
    
    def check_link(id, entrance, text, title=text)
      link = scene.find(id)
      
      link.should_not be_nil
      link.slideshow.should == entrance
      link.text.should == text
      link.title.should == title
    end
    
    it "should have a 'getting started' link" do
      check_link("getting_started_walkthrough", "getting_started", "Getting Started")
    end
    
    it "should have a 'creating props' link" do
      check_link("creating_props_walkthrough", "creating_props", "Creating Props")
    end
    
    it "should have an 'editing styles' link" do
      check_link("editing_styles_walkthrough", "editing_styles", "Editing Styles")
    end
    
    it "should have a 'productions' link" do
      check_link("productions_walkthrough", "productions", "Productions")
    end
    
    it "should have a 'stages' link" do
      check_link("stages_walkthrough", "stages", "Stages")
    end
    
    it "should have a 'prop layout' link" do
      check_link("prop_layout_walkthrough", "prop_layout", "Prop Layout")
    end

    it "should have a 'colors' link" do
      check_link("colors_walkthrough", "colors", "Colors")
    end
    
    it "should have a 'prop sizing' link" do
      check_link("prop_sizing_walkthrough", "prop_sizing", "Prop Sizing")
    end
    
    it "should have a 'players' link " do
      check_link("players_walkthrough", "players", "Players")
    end
    
    it "should have an 'animations' link" do
      check_link("animations_walkthrough", "animations", "Animations")
    end
    
    it "should have a 'gradients' link" do
      check_link("gradients_walkthrough", "gradients", "Gradients")
    end
    
    it "should have a 'backgrounds' link" do
      check_link("backgrounds_walkthrough", "backgrounds", "Backgrounds")
    end
    
    it "should have a 'borders' link" do
      check_link("borders_walkthrough", "borders", "Borders")
    end
    
    it "should have an 'images' link" do
      check_link("images_walkthrough", "images", "Images")
    end
    
    it "should have an Insets tutorial" do
      check_link("insets_walkthrough", "insets", "Margin and Padding", "Insets")
    end

    it "should have an prop partials tutorial" do
      check_link("prop_partials_walkthrough", "prop_partials", "Prop Partials")
    end

    it "should have an styling text tutorial" do
      check_link("text_walkthrough", "text", "Text")
    end

    it "should have a sound tutorial" do
      check_link("sound_walkthrough", "sound", "Sound")
    end

    it "should have a float tutorial" do
      check_link("float_walkthrough", "float", "Floating Props")
    end
  end
end

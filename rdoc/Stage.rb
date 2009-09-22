class_name :text => 'ClassName: Limelight::Stage'
class_description :text => 'In the metephorical sense, a Stage is a platform which may hold a scene.  In a more, to-the-point sence, a Stage represents a window on the computer screen.  The Stage objects within a Production are configured by the StagesBuilder. By default a Production will have one Stage.  A Stage may open any number of Scenes but it may only have one current scene loaded at a time.'
public_methods_header :text => 'Public Methods'
method do
method_header do
method_name :text => 'new'
method_parameters :text => '(theater, name, options = {})'
end
method_description :text => 'To create a new Stage, it be given a Theater to which it belongs, and the name is optional.  If no name is provided it will default to \'default\'.  A stage name must be unique, so it is recommended you provide a name.'
end
method do
method_header do
method_name :text => 'alert'
method_parameters :text => '(message)'
end
method_description :text => 'Pops up a simple modal dialog with the provided message.'
end
method do
method_header do
method_name :text => 'always_on_top='
method_parameters :text => '(value)'
end
method_description :text => 'When true, the stage will remain on top of all other windows.'
end
method do
method_header do
method_name :text => 'always_on_top?'
method_parameters :text => '()'
end
method_description :text => 'Return true if the stage has been set to always be on top.'
end
method do
method_header do
method_name :text => 'apply_options'
method_parameters :text => '(options)'
end
end
method do
method_header do
method_name :text => 'background_color'
method_parameters :text => '()'
end
method_description :text => 'Returns the background color of the stage in the format RRGGBB(AA)'
end
method do
method_header do
method_name :text => 'background_color='
method_parameters :text => '(value)'
end
method_description :text => 'Sets the background color of the stage'
end
method do
method_header do
method_name :text => 'build_frame'
method_parameters :text => '()'
end
end
method do
method_header do
method_name :text => 'choose_file'
method_parameters :text => '(options={}, &block)'
end
method_description :text => 'Opens a file chooser window to select a file on the file system. Options may include: * :description => a string describing the desired file * :directory => starting directory * :title => title of the window * :directories_only => boolean, true if the user must select a directory * :files_only => boolean, true if the user must select a file'
end
method do
method_header do
method_name :text => 'close'
method_parameters :text => '()'
end
method_description :text => 'Closes the Stage. It\'s window will no longer be displayed on the screen.'
end
method do
method_header do
method_name :text => 'framed='
method_parameters :text => '(value)'
end
method_description :text => 'When true, the stage will be frame with the operating system\'s standard window frame including close, minimize, and maximize buttons'
end
method do
method_header do
method_name :text => 'framed?'
method_parameters :text => '()'
end
method_description :text => 'Return true if the stage is framed.'
end
method do
method_header do
method_name :text => 'fullscreen='
method_parameters :text => '(on)'
end
method_description :text => 'Turns fullscreen mode on and off.  In fullscreen mode, the stage will fill the entire screen and appear on top of all other windows.'
codeblock do
code :text => '   stage.fullscreen = true'
end
end
method do
method_header do
method_name :text => 'fullscreen?'
method_parameters :text => '()'
end
method_description :text => 'Returns true if the stage is in fullscreen mode.'
end
method do
method_header do
method_name :text => 'has_static_size?'
method_parameters :text => '(style)'
end
end
method do
method_header do
method_name :text => 'hide'
method_parameters :text => '()'
end
method_description :text => 'Hides the stage so that it is not visible on the screen without destroying it.'
end
method do
method_header do
method_name :text => 'is_static?'
method_parameters :text => '(value)'
end
end
method do
method_header do
method_name :text => 'kiosk='
method_parameters :text => '(on)'
end
method_description :text => 'Turns kiosk mode for this stage on and off.  When on, the stage will:'
codeblock do
code :text => '   * be fullscreen'
code :text => '   * not be frames'
code :text => '   * disable OS key commands'
code :text => '     * OS X: Cmd-Tab, Cmd-Alt-Esc, etc...'
code :text => '     * Windows: Alt-Tab, Ctrl-Esc, etc... (Ctrl-Alt-Del must be disabled through a registry entry)'
end
codeblock do
code :text => '   stage.kiosk = true'
end
end
method do
method_header do
method_name :text => 'kiosk?'
method_parameters :text => '()'
end
method_description :text => 'Return true if the stage is in kiosk mode.'
end
method do
method_header do
method_name :text => 'load_scene'
method_parameters :text => '(scene)'
end
method_description :text => 'Loads a scene on the Stage.  If the Stage is currently hosting a Scene, the original Scene will be removed and the new Scene will replace it.'
end
method do
method_header do
method_name :text => 'location'
method_parameters :text => '()'
end
method_description :text => 'The location styles of the Stage.'
codeblock do
code :text => '   x, y = stage.location'
end
end
method do
method_header do
method_name :text => 'location='
method_parameters :text => '(*values)'
end
method_description :text => 'Sets the location styles of the Stage.'
codeblock do
code :text => '   stage.location = [500, 200]'
end
end
method do
method_header do
method_name :text => 'new_frame'
method_parameters :text => '()'
end
end
method do
method_header do
method_name :text => 'open'
method_parameters :text => '(scene)'
end
method_description :text => 'Opens the Stage and loads the provided Scene.'
method_description :text => 'See load_scene'
end
method do
method_header do
method_name :text => 'should_allow_close'
method_parameters :text => '()'
end
method_description :text => 'Called when the user or system would like to close the stage.  The stage will return true, allowing it to be closed, unless the current_scene defines the allow_close? method in which case the decision it left up to the current_scene.'
end
method do
method_header do
method_name :text => 'show'
method_parameters :text => '()'
end
method_description :text => 'Shows the stage after having hiding it.'
end
method do
method_header do
method_name :text => 'size'
method_parameters :text => '()'
end
method_description :text => 'Returns the width and height styles of the Stage.'
codeblock do
code :text => '   width, height = stage.size'
end
end
method do
method_header do
method_name :text => 'size='
method_parameters :text => '(*values)'
end
method_description :text => 'Sets the width and height styles of the Stage.'
codeblock do
code :text => '   state.size = [100, 200]'
code :text => '   state.size = ["50%", "100%"]  consuming 50% of the width and 100% of the height of the screen'
end
end
method do
method_header do
method_name :text => 'title'
method_parameters :text => '()'
end
method_description :text => 'Returns the title that is displayed at the top of the window that this stage represents.'
end
method do
method_header do
method_name :text => 'title='
method_parameters :text => '(value)'
end
method_description :text => 'Sets the title that is displayed at the top of the window that this stage represents.'
end
method do
method_header do
method_name :text => 'visible?'
method_parameters :text => '()'
end
method_description :text => 'Returns true if the stage is visible on the screen.'
end
method do
method_header do
method_name :text => 'vital='
method_parameters :text => '(value)'
end
method_description :text => 'Sets the vitality of the stage.  Limelight will not exit while vital frames remain visible.'
end
method do
method_header do
method_name :text => 'vital?'
method_parameters :text => '()'
end
method_description :text => 'Returns true if this is a vital stage.  Limelight will not exit while vital frames remain visible.'
end

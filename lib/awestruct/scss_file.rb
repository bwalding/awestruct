
require 'sass'
require 'awestruct/renderable_file'
require 'awestruct/sassable'

module Awestruct
  class ScssFile < RenderableFile

    include Sassable

    def initialize(site, source_path, relative_source_path)
      super( site, source_path, relative_source_path )
    end
 
    def output_filename
      File.basename( source_path, '.scss' ) + '.css'
    end

    def syntax
      :scss
    end

  end
end

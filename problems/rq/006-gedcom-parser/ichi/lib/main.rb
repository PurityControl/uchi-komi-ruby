require_relative 'gedcom_parser'
require_relative 'gedcom_line'
require_relative 'gedcom_xml_writer'
gp = GedcomParser.new File.new("../../royal.ged"), GedcomLine
formatter = REXML::Formatters::Pretty.new
gxw = GedcomXmlWriter.new gp, $stdout
formatter.write(gxw.output, $stdout)


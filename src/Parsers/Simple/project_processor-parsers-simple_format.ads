
with Project_Processor.Parsers.Abstract_Parsers;
with EU_Projects.Projects;

package Project_Processor.Parsers.Simple_Format is
   type Parser_Type is
         new Abstract_Parsers.Abstract_Parser with private;

   overriding
   function Create (Params : not null access Plugins.Parameter_Maps.Map)
                    return Parser_Type;

   overriding
   procedure Parse
         (Parser    : in out Parser_Type;
          Project   :    out EU_Projects.Projects.Project_Descriptor;
          Input     : String);
private
   type Parser_Type is
         new Abstract_Parsers.Abstract_Parser with null record;
end Project_Processor.Parsers.Simple_Format;

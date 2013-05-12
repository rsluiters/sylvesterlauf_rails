#encoding: utf-8

module HomepageHelper

  def course_description(course)
    case course
      when "3km"
      ["Start an der Schule - Hevelingstrasse - Reuterstrasse - Stadtkamp - Friedenstrasse - Kiefernstrasse - Talstrasse - Hevelingstrasse - Ziel an der Schule",""]
      when "5km"
      ["Start: An der Schule/Hevelingstrasse - Hevelingstrasse - Waterkuhlstrasse - Sebastianstrasse - St.Martinsrasse - Talstrasse - Hevelingstrasse - Reuterstrasse - Buchenstrasse - Eichenstrasse - Am Gocher Berg - Stadionstrasse - Reuterstrasse - Stadtkamp - Friedenstrasse - Kiefernstrasse - Talstrasse - Hevelingstrasse - Ziel: An der Schule","Erst wird die kleine Runde rund um die Schulen gelaufen, dann die große Runde inklusive der Schleife am Sportplatz."]
      when "10km"
      ["Start an der Schule - Hevelingstrasse - Reuterstrasse - Buchenstrasse - Eichenstrasse - Am Gocher Berg - Stadionstrasse - Reuterstrasse - Stadtkamp - Friedenstrasse - Kiefernstrasse - Talstrasse - Hevelingstrasse (Auf zu Runde 2) - Reuterstrasse - Stadtkamp - Friedenstrasse - Kiefernstrasse - Talstrasse - Hevelingstrasse (Auf zu Runde 3) - Reuterstrasse - Stadtkamp - Friedenstrasse - Kiefernstrasse - Talstrasse - Hevelingstrasse - Ziel an der Schule"," In der 1. von drei Runden wird die kleine Schleife am Pfalzdorfer Sportplatz mitgelaufen. In der 2. und 3. Runde wird dieser Berg umgangen."]
      when "500m"
      ["Start: An der Schule/Hevelingstrasse - Hevelingstrasse - Waterkuhlstrasse - Wendepunkt - Hevelingstrasse - Ziel: An der Schule",""]
    end  
  end
  
  
end
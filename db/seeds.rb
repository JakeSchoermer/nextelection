require './app'

Jurisdiction.delete_all
Election.delete_all

#Jurisdictions

fed = Jurisdiction.create! name: "Australia", abbreviation: "FED", tier: "Federal"
act = Jurisdiction.create! name: "Australian Capital Territory", abbreviation: "ACT", tier: "State/Territory"
nsw = Jurisdiction.create! name: "New South Wales", abbreviation: "NSW", tier: "State/Territory"
nt = Jurisdiction.create! name: "Northern Territory", abbreviation: "NT", tier: "State/Territory"
qld = Jurisdiction.create! name: "Queensland", abbreviation: "QLD", tier: "State/Territory"
sa = Jurisdiction.create! name: "South Australia", abbreviation: "SA", tier: "State/Territory"
tas = Jurisdiction.create! name: "Tasmania", abbreviation: "TAS", tier: "State/Territory"
vic = Jurisdiction.create! name: "Victoria", abbreviation: "VIC", tier: "State/Territory"
wa = Jurisdiction.create! name: "Western Australia", abbreviation: "WA", tier: "State/Territory"

#Elections

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
fed_2016 = Election.create! election_date: Date.new(2017,01,14), fixed_date: false
fed.elections << fed_2016
fed.save!

act_2016 = Election.create! election_date: Date.new(2015,10,15), fixed_date: false
act.elections << act_2016
act.save!

nsw_2019 = Election.create! election_date: Date.new(2019,03,31), fixed_date: true
nsw.elections << nsw_2019
nsw.save!

nt_2016 = Election.create! election_date: Date.new(2016,8,27), fixed_date: true
nt.elections << nt_2016
nt.save!

qld_2018 = Election.create! election_date: Date.new(2018,03,27), fixed_date: false
qld.elections << qld_2018
qld.save!

sa_2018 = Election.create! election_date: Date.new(2018,03,27), fixed_date: true
sa.elections << sa_2018
sa.save!

tas_2018 = Election.create election_date: Date.new(2018,12,31), fixed_date: false
tas.elections << tas_2018
tas.save!

vic_2018 = Election.create election_date: Date.new(2018,11,24), fixed_date: true
vic.elections << vic_2018
vic.save!

wa_2017 = Election.create! election_date: Date.new(2017,11,03), fixed_date: true
wa.elections << wa_2017
wa.save!
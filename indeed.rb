jobs = {
    "query" => "ruby on rails",
    "results" => [
       
                {
                    "jobtitle" => "ROR Developer",
                    "company" => "Technosoft Global Services Pvt Ltd",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Indeed",
                    "jobkey" => "",
                    "sponsored" => false,
                    "expired" => false         
} ,{
                    "jobtitle" => "Fullstack/middleware/server-app developer - fresher or experience",
                    "company" => "OERDev",
                    "city" => "Mysore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Times Job",
                    "jobkey" => "1b01814f1cbc333d",
                    "sponsored" => true,
                    "expired" => true
},{
                    "jobtitle" => "Software Web UI Engineer - Ruby On Rails JavaScript AJAX",
                    "company" => "People Gamut",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "2ed53c04408249a6",
                    "sponsored" => false,
                    "expired" => false
},{
                    "jobtitle" => "Full Stack Software Engineer - Ruby mongodb",
                    "company" => "Premium-Jobs",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "4031a26fb78a4aeb",
                    "sponsored" => true,
                    "expired" => false
},{
                    "jobtitle" => "Edureka - Software Engineer - PHP Ruby On Rails Laravel",
                    "company" => "Edureka",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "1f54fd2de6c0eba8",
                    "sponsored" => false,
                    "expired" => false
},{
                    "jobtitle" => "Software Developer",
                    "company" => "Abyeti",
                    "city" => "Mysore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Abyeti",
                    "date" => "Fri, 20 May 2016 16=>27=>06 GMT",
                    "jobkey" => "8579ae6450978fe8"
},{
                    "jobtitle" => "Ruby on Rails",
                    "company" => "Masymbol Technologies",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Masymbol Technologies",
                    "jobkey" => "7a43d5241fec6c9a",
                    "sponsored" => false,
                    "expired" => false
},{
                    "jobtitle" => "Internship@foOfys",
                    "company" => "Foofys",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Foofys",
                    "jobkey" => "02601472025b7962",
                    "sponsored" => true,
                    "expired" => false
},{
                    "jobtitle" => "Full Stack Engineer",
                    "company" => "Azureiken Technologies",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Azureiken Technologies",
                    "jobkey" => "5441403f2056a1ca",
                    "sponsored" => false,
                    "expired" => true
},{
                    "jobtitle" => "Ruby on Rails Developer",
                    "company" => "Scripbox",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Scripbox",
                    "jobkey" => "1c838d054ea6d3e6",
                    "sponsored" => false,
                    "expired" => true
}]
}


#1)total job opening
job_result = Array.new 0
job_result = jobs["results"]
puts job_result.to_s
puts " 1) total job openings are : #{job_result.length}"


#2)total jobs in blore and mysore
blore_count = 0     
mysore_count = 0
job_result.each do |job|
     if job["city"] == "Bangalore"
          blore_count += 1
     elsif job["city"] == "Mysore"
          mysore_count += 1
     end
end
puts " 2) total number of jobs in bangalore is : #{blore_count} and mysore is : #{mysore_count}"


#3)new hash of jobs based on location
jobs_new = {}
jobs_new["Bangalore"] = blore_count
jobs_new["Mysore"] = mysore_count
puts " 3) new hash is based on count is : #{jobs_new}"


#4)job titles where keys sponsored and expired are missing
job_result.each do |job|
          unless job.has_key? "sponsored" && "expired"
               puts " 4) keys \"sponsored \" and \"expired \" is missing in job : #{job["jobtitle"]}"      
          end
end
=begin
if job.has_key? "sponsored" || "expired""
    next
else
     #puts "keys sponsored and expired is missing in job #{job["jobtitle"]}"      
end
=end


#5,6,7,8)all expired jobs, sponsored jobs, expired is true and sponsored is true
exp_count = 0
spons_count = 0
tot_spons = 0
tot_exp = 0
job_result.each do |job|
     if (job.has_key?("sponsored") && job["sponsored"] == true)
          spons_count += 1
     end
     if (job.has_key?("expired") && job["expired"] == true)
          exp_count += 1
     end
     if job.has_key? "sponsored"
          tot_spons += 1
     end
     if job.has_key? "expired"
          tot_exp += 1
     end

end
puts " 5) total expired jobs are : #{tot_exp}" 
puts " 6) total sponsored jobs are : #{tot_spons}"
puts " 7) count of expired is true is : #{exp_count}"
puts " 8) count of sponsored is true is : #{spons_count}"


#9)array of sources
sources = Array.new 0
job_result.each do |job|
     sources.push(job["source"])
end
puts " 9) array of sources is : #{sources.uniq}"


#10) all jobs whose source is wisdom
puts " 10) jobs whose source is wisdom are :"
job_result.each do |job|
     if job["source"] == "WisdomJobs.com"
          puts job["jobtitle"]
     end
end


#11) job whose jobkey is ""
job_result.each do |job|
     if job["jobkey"] == ""
          puts " 11) job whose jobkey is \"\" is : #{job["jobtitle"]}"
     end
end

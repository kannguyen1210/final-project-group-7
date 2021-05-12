select *  
from fatal_encounter_org as a
left join
state_demographic as b
on a.location_of_death_state = b.state

select a.* ,b.white,b.black,b.hispanic,b.asian,b.indian,b.hawaii,b.other into public.fatal_ec_w_demog
from fatal_encounter_org as a
left join
state_demographic as b
on a.location_of_death_state = b.state

select * from public.fatal_ec_w_demog

###################
select *  
from shootings_washington_post as a
left join
state_demographic as b
on a.state = b.state

select a.* ,b.white,b.black,b.hispanic,b.asian,b.indian,b.hawaii,b.other into public.shootings_wp_w_demog
from shootings_washington_post as a
left join
state_demographic as b
on a.state = b.state

select * from public.shootings_wp_w_demog
#####################
select count(*) as shootings from public.shootings_washington_post
group by public.shootings_washington_post.state
######## requirement 
	#shootings_washington_post
 	# 1) unique_id,age , geneder, race, signs_of_mental_illness, threat_level,flee, body_camera, city,state
	
	select 
	sh.state,sh.signs_of_mental_illness,sh.threat_level,sh.flee, sh.body_camera,
	from 
	public.shootings_washington_post as sh
	order by sh.threat_level

 	#fatal_encounter_org
 	# 2) age , gender , race, location_of_death_city,location_of_death_state, year_of_injury
	select 
	    fe.unique_id, fe.gender , fe.race, fe.location_of_death_state, fe.cause_of_death, fe.symptoms_of_mental_illness
	from 
	public.fatal_encounter_org as fe
	
	## threat level count 
	select count(*) , public.shootings_washington_post.threat_level as th
	from 
	public.shootings_washington_post
	group by th
	
	########
	select 
	sh.state,sh.signs_of_mental_illness,sh.threat_level,sh.flee, sh.body_camera,
	fe.unique_id, fe.gender , fe.race, fe.location_of_death_state, fe.cause_of_death, fe.symptoms_of_mental_illness
	from 
	public.shootings_washington_post as sh 
	left join 
	public.fatal_encounter_org as fe
	on sh.state = fe.location_of_death_state
	where sh.state ='CA'
	
########
select *  from
(SELECT COUNT(a.unique_id) as shooting_cnt, a.state
FROM shootings_washington_post as a 
group by a.state) shootings 

right join 

(SELECT count(*) as fatal_cnt, b.location_of_death_state
FROM public.fatal_encounter_org as b 
group by b.location_of_death_state) fatal
on shootings.state = fatal.location_of_death_state


select  * from public.shootings_washington_post
left join public.fatal_encounter_org on 
public.shootings_washington_post.state = fatal_encounter_org.location_of_death_state
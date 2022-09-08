import requests
from localsettings import *
import json
import sys
from extract_and_layer_spss_codes import main as layer_spss

### LINE NUMBERS REFER TO THE EXCEL SHEET
### RELEVANT SECTION STARTS AT LINE 1500 IN .SPS script

voyage_id=sys.argv[1]

def load_json(fpath):
	d=open(fpath,'r')
	t=d.read()
	j=json.loads(t)
	d.close()
	return(j)

#layer_spss('numbers_vars.json')

#first load all variables
numbers_vars=load_json('numbers_vars.json')

numbers_varnames=[k for k in numbers_vars]

spss_to_vars_map={numbers_vars[k]['spss_name']:k for k in numbers_vars}

data={
	'voyage_id':[int(voyage_id),int(voyage_id)],
	'selected_fields':numbers_varnames,
	'hierarchical':False
}

r=requests.post(base_url,headers=headers,data=data)

j=json.loads(r.text)

voyage_data=j[0]

for n in numbers_varnames:
	numbers_vars[n]['value']=voyage_data[n]

def assign_val(val,spss_varname):
	##assigns a val (val) to an spss variable name in the main dictionary
	global numbers_vars
	global spss_to_vars_map
	numbers_vars[spss_to_vars_map[spss_varname.upper()]]['value']=val

def getvals(spss_names):
	#retrieves an array of values as assigned to spss var names in the main dictionary
	global numbers_vars
	global spss_to_vars_map
	varvals=[]
	spss_names=[s.upper() for s in spss_names]
	for s in spss_names:
		varvals.append(numbers_vars[spss_to_vars_map[s]]['value'])
	return varvals

def set_null(spss_names):
	#sets an array of spss variable names to null
	global numbers_vars
	global spss_to_vars_map
	spss_names=[s.upper() for s in spss_names]
	for s in spss_names:
		numbers_vars[spss_to_vars_map[s]]['value'] == None

def zero_to_null(spss_names):
	#sets an array of spss variable names to null
	##IF THE VALUE IS ZERO
	global numbers_vars
	global spss_to_vars_map
	spss_names=[s.upper() for s in spss_names]
	for s in spss_names:
		if numbers_vars[spss_to_vars_map[s]]['value'] == 0:
			numbers_vars[spss_to_vars_map[s]]['value'] == None

def null_to_zero_if_any_gte(spss_names,gte_val):
	#sets an array of spss variable names to zero
	##IF THE VALUE IS NULL
	##AND ANY OF THE KEYS IN THE LIST HAVE A VALUE GREATER THAN A SPECIFIC NUMERIC VAL
	###THIS IS ABOUT HAVING NUMERICS TO COMPUTE ON. VAL IS TYPICALLY = 1
	global numbers_vars
	global spss_to_vars_map
	spss_names=[s.upper() for s in spss_names]
	any_gte_1=False
	for s in spss_names:
		v=numbers_vars[spss_to_vars_map[s]]['value']
		if v is not None:
			if v >= gte_val:
				any_gte_1==True
	for s in spss_names:
		v=numbers_vars[spss_to_vars_map[s]]['value']
		if v is None:
			numbers_vars[spss_to_vars_map[s]]['value']=0

def sum_all_to(spss_names,dest_name):
	#takes a list of spss variable names
	#adds up all their values from the main dictionary
	#saves that sum to the spss variable named as argument 2 above
	global numbers_vars
	global spss_to_vars_map
	spss_names=[s.upper() for s in spss_names]
	vals=[numbers_vars[spss_to_vars_map[s]]['value'] for s in spss_names]
	numbers_vars[spss_to_vars_map[dest_name.upper()]]['value']=sum(vals)

def are_any_null(spss_names):
	#given an array of spss var names
	#returns boolean evaluating whether any of these have null values
	global numbers_vars
	global spss_to_vars_map
	anynulls=False
	for s in spss_names:
		v=numbers_vars[spss_to_vars_map[s]]['value']
		if v is None:
			anynulls=True
	return anynulls

def null_if_in_range(spss_names,floor,ceiling):
	
	global numbers_vars
	global spss_to_vars_map
	for s in spss_names:
		v=numbers_vars[spss_to_vars_map[s]]['value']
		if v is not None:
			if v<=ceiling and v>=floor:
				numbers_vars[spss_to_vars_map[s]]['value']=None

## lines 28-35
### takes a large group of variables (list follows) and sets them to null/missing if zero

zero_to_null(['men1', 'women1', 'boy1', 'girl1', 'child1', 'infant1', 'adult1', 'male1', 'female1', 'men2', 'women2', 'boy2', 'girl2', 'child2', 'infant2', 'adult2', 'male2', 'female2', 'men3', 'women3', 'boy3', 'girl3', 'child3', 'infant3', 'adult3', 'male3', 'female3', 'men4', 'women4', 'boy4', 'girl4', 'child4', 'infant4', 'adult4', 'male4', 'female4', 'men5', 'women5', 'boy5', 'girl5', 'child5', 'infant5', 'adult5', 'male5', 'female5', 'men6', 'women6', 'boy6', 'girl6', 'child6', 'infant6', 'adult6', 'male6', 'female6'])

## lines 37-45
### then takes two subsets of those and, if any of them are greater than or equal to 1
### in other words if any of this subset had not been null before
### then it sets any of the missing values to zero
### i believe the idea here is that if any of these particular variables were filled in, then the others weren't really missing/null but can be reasonably assumed to be zero
### those variables are

null_to_zero_if_any_gte_1(['men1', 'women1', 'boy1', 'girl1', 'child1', 'infant1', 'adult1', 'men4', 'women4', 'boy4', 'girl4', 'child4', 'infant4', 'adult4', 'men5', 'women5', 'boy5', 'girl5', 'child5', 'infant5', 'adult5'])

### these are the number of known adults & children who embarked at the first & second ports of embarkation

## lines 47-48
### then calculates the numbers of people who boarded, splitting into adults & children

sum_all_to(['men1', 'women1', 'adult1', 'men4', 'women4', 'adult4', 'men5', 'women5', 'adult5'],'atlt1imp')

sum_all_to(['boy1', 'girl1', 'child1', 'infant1', 'boy4', 'girl4', 'child4', 'infant4', 'boy5', 'girl5', 'child5', 'infant5'],'chil1imp')

## lines 50-56
###  gender breakdown w unspecified age
### first by setting to zero if any in this list are non-null

null_to_zero_if_any_gte(['male1','female1','male4','female4','male5','female5'],1)

## lines 58-61
### and then by summing on gendered lines

if are_any_null(['male1','male4','male5']):
	sum_all_to(['men1','boy1','men4','boy4','men5','boy5'],'male1imp')
else:
	sum_all_to(['male1','male4','male5'],'male1imp')

if are_any_null(['female1','female4','female5']):
	sum_all_to(['women1','girl1','women4','girl4','women5','girl5'],'feml1imp')
else:
	sum_all_to(['female1','female4','female5'],'feml1imp')

## lines 63-65
### sums of people: by age, by gender, then the total

sum_all_to(['adlt1imp','chil1imp'],'slavema1')

sum_all_to(['male1imp','feml1imp'],'slavemx1')

sum_all_to(['men1', 'women1', 'boy1', 'girl1', 'men4', 'women4', 'boy4', 'girl4', 'men5', 'women5', 'boy5', 'girl5'],'slavmax1')

## line 67
### then take any of the vars from that last round
### and if they are less than 19, null them out
#### (why ????? assuming that all ships have 20 or more captives,
#### and that if the data don't show 20 or more, then it's inaccurate?)

null_if_in_range(['slavema1','slavemx1','slavmax1'],0,19)

## lines 69-77
### and if two of those above vars have just been nulled (e.g., < 20)
### then go back and set their upstream vars null

if are_any_null(['slavema1']):
	set_null(['adlt1imp','chil1imp'])

if are_any_null(['slavemx1']):
	set_null(['feml1imp','male1imp'])

## lines 79-85
### compute some ratios

chil1imp,slavema1=getvals(['chil1imp','slavema1'])
assign_val(chil1imp/slavema1,'chilrat1')

male1imp,slavemx1=getvals(['male1imp','slavemx1'])
assign_val(male1imp/slavemx1,'malrat1')

slavmax1,men1,men4,men5=getvals(['slavmax1','men1','men4','men5'])
women1,women4,women5=getvals(['women1','women4','women5'])
boy1,boy4,boy5=getvals(['boy1','boy4','boy5'])
girl1,girl4,girl5=getvals(['girl1','girl4','girl5'])

if slavmax >=20:
	menrat1=(men1+men4+men5)/slavmax1
	assign_val(menrat1,'menrat1')
	womrat1=(women1+women4+women5)/slavmax1
	assign_val(womrat1,'womrat1')
	boyrat1=(boy1+boy4+boy5)/slavmax1
	assign_val(boyrat1,'boyrat1')
	girlrat1=(girl1+girl4+girl5)/slavmax1
	assign_val(girlrat1,'girlrat1')

# QUICK NOTE. TO THIS POINT, I HAVEN'T SEEN ANYTHING THAT STANDS OUT AS A STATISTICAL ESTIMATE. THESE ARE ALL SUMMARIES.
# THE CLOSEST WE GET IS THE LINE 67 ASSUMPTION THAT LOW NUMBERS MEAN BAD DATA...

## lines 101-107

null_to_zero_if_any_gte(['men3', 'women3', 'boy3', 'girl3', 'child3', 'infant3', 'adult3', 'men6', 'women6', 'boy6', 'girl6', 'child6', 'infant6', 'adult6'],1)

## lines 109-110

sum_all_to(['men3', 'women3', 'adult3', 'men6', 'women6', 'adult6'],'adlt3imp')
sum_all_to(['boy3','girl3','child3','infant3','boy6','girl6','child6','infant6'],'chil3imp')

## lines 112-117

null_to_zero_if_any_gte(['male3','female3','male6','female6'],1)

## lines 119-122

if are_any_null(['male3','male6']):
	sum_all_to(['men3','boy3','men6','boy6'])
else:
	sum_all_to(['male3','male6'],'male3imp')

if are_any_null(['female3','female6']):
	sum_all_to(['women3','girl3','women6','girl6'],'feml3imp')
else:
	sum_all_to(['female3','female6'],'feml3imp')

## lines 124-126

sum_all_to(['adlt3imp','chil3imp'],'slavema3')
sum_all_to(['male3imp','feml3imp'],'slavemx3')
sum_all_to(['men3','women3','boy3','girl3','men6','women6','boy6','girl6'],'slavmax3')

## lines 128-138
### basically the lines 69-77 block above

null_if_in_range(['slavema3','slavemx3','slavmax3'],0,19)

if are_any_null(['slavema3']):
	set_null(['adlt3imp','chil3imp'])
if are_any_null(['slavemx3']):
	set_null(['feml3imp','male3imp'])

## lines 140-141
### compute some ratios

chil3imp,slavema3=getvals(['chil3imp','slavema3'])
assign_val(chil3imp/slavema3,'chilrat3')

male3imp,slavemx3=getvals(['male3imp','slavemx3'])
assign_val(male3imp/slavemx3,'slavemx3')

## lines 142-146

men3,men6,slavmax3=getvals(['men3','men6','slavmax3'])
women3,women6=getvals(['women3','women6'])
boy3,boy6=getvals(['boy3','boy6'])
girl3,girl6=getvals(['girl3','girl6'])

if slavmax3 >=20:
	menrat3=(men3+men6)/slavmax3
	assign_val(menrat3,'menrat3')
	womrat3=(women3+women6)/slavmax3
	assign_val(womrat3,'womrat3')
	boyrat3=(boy3+boy6)/slavmax3
	assign_val(boyrat3,'boyrat3')
	girlrat3=(girl3+girl6)/slavmax3
	assign_val(girlrat3,'girlrat3')

## lines 166-168

slavema3,slavemx3,slavmax3=getvals(['slavema3','slavemx3','slavmax3'])

if slavema3 is not None:
	if slavema3>=20:
		assign_val(slavema3,'slavma7')
if slavemx3 is not None:
	if slavemx3>=20:
		assign_val(slavemx3,'slavmx7')
if slavmax3 is not None:
	if slavmax3>=20:
		assign_val(slavmax3,'slavmax7')

## lines 169-172

slavmax7,men3,men6,women3,women6,boy3,boy6,girl3,girl6=getvals(['slavmax7', 'men3', 'men6', 'women3', 'women6', 'boy3', 'boy6', 'girl3', 'girl6'])

if slavmax7 is not None:
	if slavmax7>=20:
		assign_val(men3+men6,'men7')
		assign_val(women3+women6,'women7')
		assign_val(boy3+boy6,'boy7')
		assign_val(girl3+girl6,'girl7')

## lines 173-174

slavema7,adlt3imp,chil3imp=getvals(['slavema7','adlt3imp','chil3imp'])

is slavema7 is not None:
	if slavema7 >=20:
		assign_val(adlt3imp,'adult7')
		assign_val(chil3imp,'child7')

## lines 175-176

slavemx7,male3imp,feml3imp=getvals(['slavemx7','male3imp','feml3imp'])

if slavemx7 is not None:
	if slavemx7>=20:
		assign_val(male3imp,'male7')
		assign_val(feml3imp,'female7')
	
## lines 177-182

menrat3,womrat3,boyrat3,girrat3,malrat3,chilrat3=getvals(['menrat3','womrat3','boyrat3','girrat3','malrat3','chilrat3'])

for pair in [
	[menrat3,'menrat7'],
	[womrat3,'womrat7'],
	[boyrat3,'boyrat7'],
	[girlrat3,'girlrat7'],
	[malrat3,'malrat7'],
	[chilrat3,'chilrat7']
	]:
	s,t=pair
	if s is not None:
		if s>=0:
			assign_val(s,t)

## lines 184-200

bundles=[
	['slavema3','slavema1',20,'slavema7','slavema1'],
	['slavemx3','slavemx1',20,'slavemx7','slavemx1'],
	['slavmax3','slavmax1',20,'slavmax7','slavmax1'],
	['slavmax3','slavmax1',20,'men7','men1+men4+men5'],
	['slavmax3','slavmax1',20,'women7','women1+women4+women5'],
	['slavmax3','slavmax1',20,'boy7','boy1+boy4+boy5'],
	['slavmax3','slavmax1',20,'girl7','girl1+girl4+girl5'],
	['slavema3','slavema1',20,'adult7','adlt1imp'],
	['slavema3','slavema1',20,'child7','chil1imp'],
	['slavemx3','slavemx1',20,'male7','male1imp'],
	['slavemx3','slavemx1',20,'female7','feml1imp'],
	['menrat3','menrat1',0,'menrat7','menrat1'],
	['womrat3','womrat1',0,'womrat7','womrat1'],
	['boyrat3','boyrat1',0,'boyrat7','boyrat1'],
	['girlrat3','girlrat1',0,'girlrat7','girlrat1'],
	['malrat3','malrat1',0,'malrat7','malrat1'],
	['chilrat3','chilrat1',0,'chilrat7','chilrat1']
]

for bundle in bundles:
	missing,valcheck,valcheckfloor,target,newvalstr=bundle
	missing=getvals(['missing'])
	valcheck=getvals(['valcheck'])
	if "+" in newvalstr:
		newval=sum([getvals([v])[0] for v in newvalstr.split("+")])
	else:
		newval=getvals([newvalstr])[0]
	if missing is None and valcheck >= valcheckfloor:
		assign_val(newval,target)
	
## lines 207-221

### as always, make nulls zeroes for the sake of comparing and adding

null_to_zero_if_any_gte(['men2','women2','boy2','girl2','adult2','child2','male2','female2'])

assign_val(getvals(['adult2'])[0],'adlt2imp')
assign_val(getvals(['chil2imp'])[0],'child2')

if getvals(['adlt2imp'])[0]==0:
	sum_all_to(['men2','women2'],'adlt2imp')

if getvals(['chil2imp'])[0]==0:
	sum_all_to(['boy2','girl2'],'chil2imp')
	

### and then clean it up
### although this logic is a bit restrictive -- only if both are zero?

adlt2imp,chil2imp=getvals(['adlt2imp','chil2imp'])

if adlt2imp == 0 and chil2imp == 0:
	zero_to_null(['adlt2imp','chil2imp'])

## lines 223-231

assign_val(getvals('male2')[0],male2imp)
assign_val(getvals('female2')[0],feml2imp)

male2imp,feml2imp=getvals(['male2imp','feml2imp'])

if male2imp==0:
	sum_all_to(['men2','boy2'],'male2imp')

if feml2imp==0:
	sum_all_to(['women2','girl2'],'feml2imp')

male2imp,feml2imp=getvals(['male2imp','feml2imp'])

if male2imp==0 and feml2imp==0:
	zero_to_null(['male2imp','feml2imp'])

## lines 233-234

sladvoy,chil2imp,adlt2imp = getvals(['sladvoy','chil2imp','adlt2imp'])

if sladvoy >=1 and chil2imp >=1 and adlt2imp == 0 and sladvoy > chil2imp:
	assign_val(sladvoy-chil2imp,'adl2imp')
if sladvoy >=1 and adlt2imp >=1 and chil2imp == 0 and sladvoy > adlt2imp:
	assign_val(sladvoy=adlt2imp,'chil2imp')

## lines 235-236

sladvoy,feml2imp,male2imp = getvals(['sladvoy','feml2imp','male2imp'])

if sladvoy >=1 and feml2imp >=1 and male2imp == 0 and sladvoy > feml2imp:
	assign_val(sladvoy-feml2imp,'male2imp')
if sladvoy >=1 and male2imp >=1 and feml2imp==0 and sladvoy > male2imp:
	assign_vals(sladvoy-male2imp,'feml2imp')

## lines 241-248

zero_to_null(['men1','women1','boy1','girl1','child1','infant1','adult1','male1','female1',)'men2','women2','boy2','girl2','child2','Infant2','adult2','male2','female2','men3','women3','boy3','girl3','child3','infant3','adult3','male3','female3','men4','women4','boy4','girl4','child4','infant4','adult4','male4','female4','men5','women5','boy5','girl5','child5','infant5','adult5','male5','female5','men6','women6','boy6','girl6','child6','infant6','adult6','male6','female6']
import sys
import json
import re

'''
given an input json dump of a dictionary of django varnames in the style of the voyages-api options.json files
this will find text strings in the variables' metadata that look like SPSS variable names in the style of the TASTDB var names
specifically, the regex "\([1-9|A-Z]+\)"
if it finds too many matches, or no matches, it asks you to enter a manual value
it then dumps the file back out with the new key in each variables subdictionary: "spss_name"
'''

def main(fname):
	d=open(fname,'r')
	t=d.read()
	d.close()

	input_json=json.loads(t)
	output_json=dict(input_json)

	for k in input_json:
		allfieldstext='\n\t'.join([input_json[k][i] for i in output_json[k]]+[k])
		potentialspssvarnames=list(set(re.findall("\([1-9|A-Z]+\)",allfieldstext)))
		if len(potentialspssvarnames)>1:
			print(", ".join(potentialspssvarnames))
			spssname=input("Multiple potential spss variable names identified (%s) -- please input spss var name: " %", ".join(potentialspssvarnames))
		elif len(potentialspssvarnames)==0:
			print(type(allfieldstext),allfieldstext)
			spssname=input("No potential spss variable names identified in: \n%s\n-->please input spss var name: " %allfieldstext)
		else:
			spssname=potentialspssvarnames[0]
			spssname=re.sub("\(","",spssname)
			spssname=re.sub("\)","",spssname)
		output_json[k]['spss_name']=spssname

	d=open(fname,'w')
	d.write(json.dumps(output_json,indent=2))
	d.close()

if __name__=="__main__":
	fname=sys.argv[1]
	main(fname)
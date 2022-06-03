import yaml

def read_yml(ymlfile):
    with open(ymlfile) as file:
        out_dict = yaml.load(file, Loader=yaml.FullLoader)
    return out_dict
params_dict = read_yml(ymlfile="people.yml")
print(people_dict)

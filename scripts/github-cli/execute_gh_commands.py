import json
import subprocess

repos = []

with open("repos.json", "r") as file:
    repos = json.loads(file.read())

repo_names = [value['name'] for value in repos]

for name in repo_names:
    res = subprocess.run(
            ['gh', 'repo', 'archive', name],
            text=True,
            check=True,
            stdout=subprocess.PIPE
        )
    print(name)
    print(res)

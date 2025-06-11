import requests
import time 


i = 0
while True:
    task = {
        "name": f"added from container {i}",
        "done": False,
    }

    i += 1

    res = requests.post("http://backend:8080/api/add_tasks", json=task)
    print(f"status :{res.status_code}")
    print(f"response text :{res.text}")
    time.sleep(10)    
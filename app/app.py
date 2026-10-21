import os, time

name = os.environ.get("STUDENT_NAME", "Shaikhiyeva")
surname = os.environ.get("STUDENT_SURNAME", "Dariga")
group = os.environ.get("STUDENT_GROUP", "IT2-2314")
sid = os.environ.get("STUDENT_ID", "38340")

print("================================")
print("DevOps Student Application")
print("================================")
print(f"Name: {name}")
print(f"Surname: {surname}")
print(f"Group: {group}")
print(f"Student ID: {sid}")
print("Application is running successfully!", flush=True)

# Keep container alive (for docker exec / compose ps demos)
if os.environ.get("KEEP_ALIVE"):
    while True:
        time.sleep(60)

import os

file_path = "D:\\BaiduNetdiskDownload\\13-深入剖析Kubernetes"
for i in os.listdir(file_path):
    # print(read_path+"\\"+i)
    if os.path.isfile(file_path+"\\"+i):
        pass
    else:
        print("<h3>"+i+"</h3>")
        for j in os.listdir(file_path+"\\"+i):
            if j.split(".")[-1]=='pdf':
                print('<li><a href="./k8s?class=2.1">'+j[0:-4]+'</a></li>')
        
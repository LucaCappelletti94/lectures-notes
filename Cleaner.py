
# coding: utf-8

# In[19]:


import os
from os import listdir
from os.path import isfile

import json


# In[20]:


with open("cleaner_settings.json", "r") as f:
    settings = json.load(f)

black_list = settings["black-list"]
white_list = settings["white-list"]


# In[21]:


def get_file_in_folder(path=None):
    if path == None:
        path = os.getcwd()
    path += "/"
    file_list = []
    folder_list = []
    for entity in listdir(path):
        if os.path.isdir(path+entity):
            folder_list.append(entity)
        else:
            file_list.append(path+entity)

    for folder in folder_list:
        for file in get_file_in_folder(path+folder):
            file_list.append(file)
    return file_list


# In[25]:


for file in get_file_in_folder():
    # don't touch the white folder
    skip = False
    for white_folder in white_list:
        if white_folder in file:
            skip = True
            continue

    if skip == True:
        continue

    # get the extension of the file
    filename, extension = os.path.splitext(file)

    # remove blacklisted extension
    if extension in black_list and extension != "" and not file.endswith("main.pdf"):
        print(file)
        os.remove(file)



import os
from os import listdir
from os.path import isfile
import json
import sys


arguments = sys.argv[1:]
count = len(arguments)


with open("settings_cleaner.json", "r") as f:
    settings = json.load(f)

black_list = settings["black-list"]
white_list = settings["white-list"]


def get_file_in_folder(path=None):
    if path == None:
        path = os.getcwd()
    path += "/"
    file_list = []
    folder_list = []
    for entity in listdir(path):
        if os.path.isdir(path+entity):
            folder_list.append(path+entity)
        else:
            file_list.append(path+entity)

    for folder in folder_list:
        for file in get_file_in_folder(folder):
            file_list.append(file)
    return file_list


for file in get_file_in_folder():
    # don't touch the white folder
    skip = False
    for white in white_list:
        if white in file:
            skip = True
            continue
    if "images" in file.lower().split("/"):
        skip = True

    if count >0:
        if arguments[0] not in file.lower():
            skip = False

    if skip == True:
        continue

    # get the extension of the file
    filename, extension = os.path.splitext(file)

    # remove blacklisted extension
    if extension in black_list and extension != "":
        print(file)
        os.remove(file)

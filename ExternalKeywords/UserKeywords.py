import os

def create_folder(foldername):
  os.mkdir("C:\\" + foldername)

def create_sub_folder(foldername, subFoldername):
  os.mkdir("C:\\" + foldername + "\\" + subFoldername)

def concatenate_login_info(username, password):
  result = username + " " + password
  return result
cxid = "017848639769224862235:b7gsieimvak"
apikey = "AIzaSyB5Jv4i8B1uhGmUsSQ-k8LIRraN2pR9rUI"


#AIzaSyDunEmjcKvlxjNklM_6LiVa_EzZmu4Zfxs
#005266366316328525556:yuhznr1i0pg

from googleapiclient.discovery import build
import json
import requests
#from pprint import pprint
from PIL import Image

##Download the image for future implementation
def downloadImage(searchTerm):
    #use google custom search to retrieve the first image the serach returns
    service = build("customsearch", "v1",
            developerKey=apikey) #to use google custom search engine

    res = service.cse().list(
      q=searchTerm, #query to be searched
      cx=cxid, #custom search engine ID
      num=1, #no of images i want to download
      searchType='image', #type of file
      fileType='jpg', #extension
      safe='off', #not child friendly
    ).execute() #run this engine 
   # pprint(res)
    linkImg=""

    #extract link from returned JSON String
    for data in res['items']:
        linkImg=data['link']
        print(linkImg)

    #download image
    f=open('image.jpg','wb') 
    f.write(requests.get(linkImg).content)
    f.close()

    #uncomment to open image automatically
    """
    img=Image.open(searchTerm+'.jpg')
    img.show()
    """
#print ("enter query :")
#query=input()
#downloadImage(query)

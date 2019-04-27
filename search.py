def scrape(topic):
    from bs4 import BeautifulSoup
    import requests
    
    ##DATA FETCH FROM WIKIPEDIA
    #topic=input("Enter topic you want to search : ") #topic user wants to read about
    response = requests.get("https://en.wikipedia.org/w/index.php?search="+topic+"&title=Special%3ASearch&profile=advanced&fulltext=1")
    soup = BeautifulSoup(response.text,"lxml")
    headings=soup.find_all("div", class_="mw-search-result-heading") #extract all results

    t = soup.find_all("li", class_="mw-search-result") #fetch search results
    

    links=[] #store links in a list

    for i in range(0,len(t)):
        #print("OPTION : ")
        #print(i) #option number for future reference
        heading=headings[i].text
        desc=t[i].text
        #print(headings[i].text) #print headings of the search results
        #print(t[i].text) #print the description of the search
        link=t[i].a #extract the <a> </a> tag 

        href=heading+" "+desc+"|| https://www.wikipedia.org"+link['href'] #extract the link
        links.append(href) #append links to list 
        links.append(" ")
        #print("-----------------------------------")
        #print()

    return links
    #print("Select the link you want to make a ppt of : ")
    #i=int(input()) 
    
    #print(links[i]) #send this to the desired function 
    #return (links[i])

#str=input()
#scrape(str)
        

    

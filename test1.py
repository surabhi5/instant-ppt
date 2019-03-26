
def analyse(sentences):
    from nltk.sentiment.vader import SentimentIntensityAnalyzer

    sid = SentimentIntensityAnalyzer()
    neutral_sentences=[]
    positive_sentences=[]
    negative_sentences=[]
    for sentence in sentences:
        
        ss = sid.polarity_scores(sentence)
        determine=ss['compound']
        
        #print(sentence)
        

        if(determine>=0.4):
            positive_sentences.append(sentence)
        elif(determine<=-0.4):
            negative_sentences.append(sentence)
        else:
            neutral_sentences.append(sentence)       
        print()
    
    print("THINGS TO KNOW ABOUT :")

    for s in neutral_sentences :
        print(s)
        print()

    print("ADVANTAGES : ")
    for s in positive_sentences :
        print(s)
        print()
    print("DISADVANTAGES : ")
    for s in negative_sentences :
        print(s)
        print()
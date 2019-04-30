def analyze(sentences):
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

    return neutral_sentences,positive_sentences,negative_sentences

def analyze(sentences, num):
    print("Func callled : "+str(num))
    from textblob import TextBlob

    neutral_sentences=[]
    positive_sentences=[]
    negative_sentences=[]

    for sentence in sentences: 
        analysis = TextBlob(sentence)
        
        if(analysis.sentiment.polarity==0):
            neutral_sentences.append(sentence)
        elif(analysis.sentiment.polarity>0 and analysis.sentiment.polarity<=1):
            positive_sentences.append(sentence)
        elif(analysis.sentiment.polarity>=-1 and analysis.sentiment.polarity<0):
            negative_sentences.append(sentence)
    
    return neutral_sentences,positive_sentences,negative_sentences

    

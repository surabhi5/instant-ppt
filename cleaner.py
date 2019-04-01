def clean(text):
    import re
    return (re.sub('\[.*?\]', '', text)).strip()

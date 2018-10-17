using PyCall
@pyimport requests
@pyimport bs4
@pyimport urllib.request as urllib

text = "bitcoin"

url = string("https://google.com/search?q=",text)
# + text;
# url_news = "https://www.google.com/search?q="+text+"&source=lnms&tbm=nws";

response = requests.get(url)

soup = bs4.BeautifulSoup(response[:content]);


rule = soup[:find_all](class_="g");

for g in rule
    result = g[:text]
    println("-----------search results---------------")
    println(result)
end

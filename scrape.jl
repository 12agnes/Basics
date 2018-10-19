using Dates
using PyCall
@pyimport requests
@pyimport bs4
@pyimport urllib.request as urllib


function top_results(text)
    
    url = string("https://google.com/search?q=",text)
    response = requests.get(url)
    soup = bs4.BeautifulSoup(response[:content]);
    rule = soup[:find_all](class_="g");

    for g in rule
        result = g[:text]
        println("-----------search results---------------")
        println(result)
    end
     println(Dates.today())
end

text = chomp(readline());
top_results(text)

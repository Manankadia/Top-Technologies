import scrapy
from ..items import QuotesItem

class QuoteSpider(scrapy.Spider):
    name='quotes'
    start_urls=[
        'https://quotes.toscrape.com/'
    ]

    def parse(self,response):
        div_qutoes = response.css('div.quote')

        items = QuotesItem()
        for i in div_qutoes:

            title = i.css('span.text::text').extract()
            author = i.css('.author::text').extract()
            tag = i.css('.tag::text').extract()

            items['title']:title
            items['author']:author
            items['tag']:tag


            yield items
        

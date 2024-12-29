# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


# useful for handling different item types with a single interface
from itemadapter import ItemAdapter
import pymysql
class QuotesPipeline:

    def __init__(self):
        self.create_conn()
        self.create_table()
        


    def create_conn(self):
        self.conn = pymysql.connector.connect(
            host='localhost',
            user='root',
            password = 'tops?123',
            database = 'QuotesTutorial'
        )
        self.curr = self.conn.cursor()

    def create_table(self):
        self.curr.execute('''
        CREATE TABLE IF NOT EXISTS q(
        title TEXT,
        author TEXT,
        tags TEXT
        )
        ''')


    def process_item(self, item, spider):
        self.store_db(item)
        return item

    def store_db(self,item):
        tags = ','.join(item['tags'])if isinstance(item['tags']list) else item['tags']
        self.curr.execute('''
        INSERT  INTO q(title,author,tags)
                           VALUES     (%s, %s, %s)
        ''',(
        item['title'][0],
        item['author'][0],
        tags
        ))
        self.conn.commit()

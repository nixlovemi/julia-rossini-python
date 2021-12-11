import psycopg2
from psycopg2.extras import RealDictCursor

class DbConnection():
    conn = None
    query = None
    cursor = None
    variables = None

    def __init__(self):
        self.conn = psycopg2.connect(
            dbname='supersite',
            user='postgres',
            password='',
            host='postgresql'
        )
    
    def setQuery(self, sql: str):
        self.query = sql

    # vars should be []
    def setVariables(self, vars):
        self.variables = vars

    def executeQuery(self):
        self.cursor = self.conn.cursor(cursor_factory=RealDictCursor)
        self.cursor.execute(self.query, self.variables)

    def getAll(self):
        return self.cursor.fetchall()

    def getOne(self):
        return self.cursor.fetchone()

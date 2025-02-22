import vertica_python

conn_info = {'host': '[vertica.tgcloudenv.ru](http://vertica.tgcloudenv.ru/)', 
             'port': '5433',
             'user': 'stv2025021816',       
             'password': 'v9MMB9qewFYkdcB',
             'database': 'dwh',
             # Вначале он нам понадобится, а дальше — решите позже сами
            'autocommit': True
}

def try_select(conn_info=conn_info):
	# И рекомендуем использовать соединение вот так
	with vertica_python.connect(**conn_info) as conn:
		# Select 1 — ваш код здесь; 
        cur = conn.cursor()
        cur.execute('SELECT 1 as a1')
		res = cur.fetchall()
		return res
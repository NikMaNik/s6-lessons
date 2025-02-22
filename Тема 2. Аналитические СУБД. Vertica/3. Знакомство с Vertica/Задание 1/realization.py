import vertica_python

conn_info = {
    'host': 'vertica.tgcloudenv.ru',
    'port': '5433',
    'user': 'stv2025021816',       
    'password': 'v9MMB9qewFYkdcB',
    'database': 'dwh',
    'autocommit': True
}

def try_select(conn_info=conn_info):
	with vertica_python.connect(**conn_info) as conn:
		cur = conn.cursor()
		cur.execute('SELECT 1 as a1')
		res = cur.fetchall()
		return res
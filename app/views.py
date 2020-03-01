from flask import render_template, flash, redirect, request, url_for, g
from app import app
from config import NEWS_ON_PAGE, NEWS_ON_PAGE_RANDOM
from random import randint
import psycopg2


@app.route('/')
@app.route('/home')
@app.route('/index')
@app.route('/news/page/<page>')
def index(page=0):
    return render_template("index.html", sliderSection=True)


@app.route('/cat', methods=('GET', 'POST'))
def cat():
    g.cursor.execute(
        'select tags.tag, category.category from tags left outer join category on tags.id_category = category.id ORDER BY tags.id')
    tags = g.cursor.fetchall()
    g.cursor.execute('select id, category from category ')
    categories = g.cursor.fetchall()
    if request.method == 'GET':
        categories = [category[1] for category in categories] + [None]
        return render_template('set_category.html', tags=tags, categories=categories)
    else:
        categories_dict = {'None': None}
        for category in categories:
            categories_dict[category[1]] = category[0]

        query = 'UPDATE tags SET id_category = %s WHERE tag = %s'
        for tag in tags:
            category = request.form[tag[0]]
            data = (categories_dict[category], tag[0])
            g.cursor.execute(query, data)
        return redirect(url_for('index'))


@app.before_request
def before_request():
    g.connect = psycopg2.connect("dbname='it_news' user='postgres' host='127.0.0.1' password='1' port='5433'")
    g.cursor = g.connect.cursor()


@app.teardown_request
def teardown_request(exception):
    connect = getattr(g, 'connect', None)
    if connect is not None:
        connect.commit()
        connect.close()


@app.context_processor
def utility_processor():
    def get_last_news():
        g.cursor.execute('select id, title, image from news ORDER BY news.create_time desc limit 10')
        news = g.cursor.fetchall()
        print news
        return news

    def get_popular_news():
        g.cursor.execute('select id, title, image from news ORDER BY news.create_time desc limit 5')
        news = g.cursor.fetchall()
        return news

    def get_slider_news():
        g.cursor.execute('select id, title, image, teaser from news ORDER BY news.create_time desc limit 5')
        news = g.cursor.fetchall()
        return news

    def get_technology_news_top():
        g.cursor.execute("""select news.id, news.title, news.image, news.teaser
from news INNER JOIN tags_news on news.id = tags_news.id_news
INNER JOIN tags on tags_news.id_tags = tags."id"
INNER JOIN category on tags.id_category = category.id
where category.category = 'Technology'
GROUP BY news.id, news.title, news.image
limit 5""")
        news = g.cursor.fetchall()
        return news

    def get_mobile_news_top():
        g.cursor.execute("""select news.id, news.title, news.image, news.teaser
from news INNER JOIN tags_news on news.id = tags_news.id_news
INNER JOIN tags on tags_news.id_tags = tags."id"
INNER JOIN category on tags.id_category = category.id
where category.category = 'Mobile'
GROUP BY news.id, news.title, news.image
limit 5""")
        news = g.cursor.fetchall()
        return news

    def get_development_news_top():
        g.cursor.execute("""select news.id, news.title, news.image, news.teaser
from news INNER JOIN tags_news on news.id = tags_news.id_news
INNER JOIN tags on tags_news.id_tags = tags."id"
INNER JOIN category on tags.id_category = category.id
where category.category = 'Development'
GROUP BY news.id, news.title, news.image
limit 5""")
        news = g.cursor.fetchall()
        return news

    def get_os_news_top():
        g.cursor.execute("""select news.id, news.title, news.image, news.teaser
from news INNER JOIN tags_news on news.id = tags_news.id_news
INNER JOIN tags on tags_news.id_tags = tags."id"
INNER JOIN category on tags.id_category = category.id
where category.category = 'OS'
GROUP BY news.id, news.title, news.image
limit 5""")
        news = g.cursor.fetchall()
        return news

    def get_security_news_top():
        g.cursor.execute("""select news.id, news.title, news.image, news.teaser
from news INNER JOIN tags_news on news.id = tags_news.id_news
INNER JOIN tags on tags_news.id_tags = tags."id"
INNER JOIN category on tags.id_category = category.id
where category.category = 'Security'
GROUP BY news.id, news.title, news.image
limit 5""")
        news = g.cursor.fetchall()
        return news

    return dict(get_last_news=get_last_news, get_popular_news=get_popular_news, get_slider_news=get_slider_news,
                get_technology_news_top=get_technology_news_top, get_mobile_news_top=get_mobile_news_top,
                get_development_news_top=get_development_news_top, get_os_news_top=get_os_news_top,
                get_security_news_top=get_security_news_top)


@app.route('/<path:path>')
def static_proxy(path):
    return app.send_static_file(path)

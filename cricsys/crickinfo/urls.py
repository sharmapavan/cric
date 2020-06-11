from django.conf.urls import url
from crickinfo.views import *

urlpatterns = [
    url(r'^$', HomepageView.as_view(), name='home'),
    url(r'^matches/$', MatchesView.as_view(), name='matches'),
    url(r'^points/$', PointsTableView.as_view(), name='points'),
    url(r'^team/(?P<pk>.+)/$', TeamViews.as_view(), name='team'),
    url(r'^team/$', TeamViews.as_view(), name='team'),
    url(r'^player-detail/(?P<pk>.+)/$', PlayerHistoryView.as_view(), name='player-detail'),
    url(r'^player-detail/$', PlayerHistoryView.as_view(), name='player-detail'),

]

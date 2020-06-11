from django.contrib import admin
from  crickinfo.models import Countries,Teams,Players,Matches,PointsTable

# Register your models here.
admin.site.register(Countries)
admin.site.register(Teams)
admin.site.register(Players)
admin.site.register(Matches)
admin.site.register(PointsTable)
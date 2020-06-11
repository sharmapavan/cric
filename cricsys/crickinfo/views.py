from django.shortcuts import render
from django.views.generic import View
from django.shortcuts import render


from crickinfo.models import Teams, Players, Matches, PointsTable

# Create your views here.
class HomepageView(View):
    def get(self, request):
        teams = Teams.objects.all()
        context = {
            "teams": teams
        }
        return render(request, "home_page.html", context)


class TeamViews(View):
    
    def get(self, request, pk  = None):
        context = {}
        player_obj = Players.objects.filter(team__id=pk)
        if player_obj:
            team = player_obj[0].team.name
            context = {
                "team": team, 
                "player_obj": player_obj
            }
        return render(request, "team_detail.html", context)


class PlayerHistoryView(View):

    def get(self, request, pk= None):
        player_obj = Players.objects.get(id=pk)
        context = {
            "player_obj": player_obj
        }
        return render(request, "players.html", context)


class MatchesView(View):

    def get(self, request):
        match_det = Matches.objects.all()
        context = {
            "match_det": match_det
        }
        return render(request, "matches.html", context)


class PointsTableView(View):

    def get(self, request):
        points_obj = PointsTable.objects.all()
        context = {
            "points_obj": points_obj
        }
        return render(request, "points_table.html", context)

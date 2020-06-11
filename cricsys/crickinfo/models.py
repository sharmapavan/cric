from django.db import models
from django.contrib.auth.models import User


# Create your models here.
class Base(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True, null=True, blank=True)
    is_active = models.BooleanField(default=True)


class Countries(models.Model):
    name = models.CharField(max_length=50, unique=True)
    country_code = models.CharField(max_length=50)

    def __str__(self):
        return self.country_code

    class Meta:
        db_table = "country_info"


class Teams(Base):
    name = models.CharField(max_length=50, unique=True)
    team_code = models.CharField(max_length=10)
    logo = models.ImageField( upload_to='TeamLogo/', blank=True, null=True )
    clubstate = models.CharField(max_length=50)

    def __str__(self):
        return self.team_code

    class Meta:
        db_table = "team_info"
        unique_together = ('name', 'team_code')


class Players(Base):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    image = models.ImageField( upload_to='PlayerImages/', blank=True, null=True)
    jersey_number = models.CharField(max_length=3)
    team = models.ForeignKey(Teams, on_delete=models.CASCADE)
    country = models.ForeignKey(Countries, on_delete=models.CASCADE)
    total_matches = models.IntegerField(default=0)
    runs = models.IntegerField(default=10)
    highest_scores = models.IntegerField(default=0)
    fifties = models.IntegerField(default=0)
    hundreds = models.IntegerField(default=0)

    def __str__(self):
        return self.first_name +' '+ self.last_name

    class Meta:
        db_table = "player_info"


class Matches(Base):
    team1 = models.ForeignKey(Teams, related_name="team1", on_delete=models.CASCADE)
    team2 = models.ForeignKey(Teams, related_name="team2", on_delete=models.CASCADE)
    winner = models.ForeignKey(Teams, related_name="winner", on_delete=models.CASCADE)

    def __str__(self):
        return self.team1.name

    class Meta:
        db_table = "match_info"


class PointsTable(Base):
    team = models.ForeignKey(Teams, on_delete=models.CASCADE)
    match = models.IntegerField(default=0)
    points = models.IntegerField(default=0)
    wins = models.IntegerField(default=0)
    lose = models.IntegerField(default=0)

    class Meta:
        db_table = "points_table"



from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone


class Answers(models.Model):
    answer_text = models.CharField(max_length=50)
    answer_point = models.IntegerField()


class Results_of_users(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    global_severity_index = models.IntegerField()
    positive_symptom_total = models.IntegerField()
    somatization_p = models.FloatField()
    obsessive_compulsion_p = models.FloatField()
    interpersonal_sensitivity_p = models.FloatField()
    depression_p = models.FloatField()
    anxiety_p = models.FloatField()
    hostility_p = models.FloatField()
    phobic_anxiety_p = models.FloatField()
    paranoid_ideation_p = models.FloatField()
    psychoticism_p = models.FloatField()
    raw_som = models.IntegerField(default=0)
    raw_oc = models.IntegerField(default=0)
    raw_int = models.IntegerField(default=0)
    raw_dep = models.IntegerField(default=0)
    raw_anx = models.IntegerField(default=0)
    raw_hos = models.IntegerField(default=0)
    raw_pho = models.IntegerField(default=0)
    raw_par = models.IntegerField(default=0)
    raw_psy = models.IntegerField(default=0)

    avg_gsi = models.FloatField(default=0)
    date = models.DateTimeField(default=timezone.now)

    class Meta:
        verbose_name = 'SA-45 Result'


class Questions(models.Model):
    question_text = models.CharField(max_length=100)
    category = models.CharField(max_length=50)




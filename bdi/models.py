from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone


class Answers(models.Model):
    question_id = models.IntegerField(default=0)
    answer_text = models.CharField(max_length=100)
    answer_point = models.IntegerField()

    def __str__(self):
        return f'Text : {self.answer_text} Point : {self.answer_point}'


class Result_Of_Users(models.Model):
    score = models.IntegerField(default=0)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    result_label = models.CharField(max_length=100)
    date = models.DateTimeField(default=timezone.now)

    class Meta:
        verbose_name = 'BDI Result'

    def __str__(self):
        return f"User: {self.user} score: {self.score} result: {self.result_label}"

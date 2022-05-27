from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User


class Answers(models.Model):
    answer_point = models.IntegerField(default=0)
    answer_title = models.CharField(max_length=100)

    def __str__(self):
        return f'Title : {self.answer_title} Point : {self.answer_point}'


class Questions(models.Model):
    question_text = models.CharField(max_length=100)


class Result_Of_User(models.Model):
    score = models.IntegerField(default=0)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    result_label = models.CharField(max_length=100)
    date = models.DateTimeField(default=timezone.now)

    class Meta:
        verbose_name = 'BAI Result'

    def __str__(self):
        return f"User: {self.user} score: {self.score} result: {self.result_label}"





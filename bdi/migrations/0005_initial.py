# Generated by Django 4.0.4 on 2022-05-14 16:12

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('bdi', '0004_delete_answers'),
    ]

    operations = [
        migrations.CreateModel(
            name='Answers',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('question_id', models.IntegerField(default=0)),
                ('answer_text', models.CharField(max_length=100)),
                ('answer_point', models.IntegerField()),
            ],
        ),
    ]
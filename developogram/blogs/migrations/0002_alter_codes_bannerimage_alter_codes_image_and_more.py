# Generated by Django 4.1.4 on 2023-01-10 10:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blogs', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='codes',
            name='bannerimage',
            field=models.ImageField(default='default.png', upload_to='codeimages/'),
        ),
        migrations.AlterField(
            model_name='codes',
            name='image',
            field=models.ImageField(default='default.png', upload_to='codeimages/'),
        ),
        migrations.AlterField(
            model_name='post',
            name='bannerimage',
            field=models.ImageField(default='default.png', upload_to='blogimages/'),
        ),
        migrations.AlterField(
            model_name='post',
            name='image',
            field=models.ImageField(default='default.png', upload_to='blogimages/'),
        ),
    ]
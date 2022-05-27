from django.contrib import admin
from .models import Result_Of_User as BAI_result
from bdi.models import Result_Of_Users as BDI_result
from sa45.models import Results_of_users as SA45_result

# admin.site.register(Result_Of_User)
# admin.site.register(BDI_result)
# admin.site.register(SA45_result)


@admin.register(BAI_result)
class BaiAdmin(admin.ModelAdmin):
    list_display = ('user', 'score', 'result_label')
    ordering = ('score',)
    search_fields = ('user__username',)


@admin.register(BDI_result)
class BdiAdmin(admin.ModelAdmin):
    list_display = ('user', 'score', 'result_label')
    ordering = ('score',)
    search_fields = ('user__username',)


@admin.register(SA45_result)
class Sa45Admin(admin.ModelAdmin):
    list_display = ('user', 'global_severity_index')
    ordering = ('global_severity_index',)
    search_fields = ('user__username',)


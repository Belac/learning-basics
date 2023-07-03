from django.urls import path, include

# from .views import article_list, article_details
# from .views import ArticleList, ArticleDetails
from .views import ArticleViewSet
from rest_framework.routers import DefaultRouter

router = DefaultRouter()
router.register('articles', ArticleViewSet, basename='articles')

urlpatterns = [
    path('', include(router.urls)),
    # path('articles/', article_list),
    # path('articles/<slug:slug>/', article_details),
    # path('articles/', ArticleList.as_view()),
    # path('articles/<slug:slug>/', ArticleDetails.as_view()),

]

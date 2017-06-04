.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$1;
.super Ljava/lang/Object;
.source "KeywordSuggestionListViewAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)I
    .locals 3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getTranslatedSubCategory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getTranslatedSubCategory()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getTranslatedSubCategory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getTranslatedSubCategory()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    check-cast p2, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$1;->compare(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)I

    move-result v0

    return v0
.end method

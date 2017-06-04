.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;
.super Ljava/lang/Object;
.source "SuggestionListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionListItem"
.end annotation


# instance fields
.field final mLocationType:I

.field final mSuggestionCategory:Ljava/lang/String;

.field final mSuggestionItemId:I

.field final mSuggestionSubCategory:Ljava/lang/String;

.field final mSuggestionTranslatedSubCategory:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionCategory:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionSubCategory:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mLocationType:I

    iput p4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionItemId:I

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionTranslatedSubCategory:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->getSubCategoryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubCategoryName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionCategory:Ljava/lang/String;

    const-string/jumbo v2, "Time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionSubCategory:Ljava/lang/String;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionSubCategory:Ljava/lang/String;

    goto :goto_0
.end method

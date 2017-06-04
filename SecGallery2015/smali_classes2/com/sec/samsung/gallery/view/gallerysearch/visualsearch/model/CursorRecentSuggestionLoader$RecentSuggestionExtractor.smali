.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader$RecentSuggestionExtractor;
.super Ljava/lang/Object;
.source "CursorRecentSuggestionLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentSuggestionExtractor"
.end annotation


# instance fields
.field private final mCategoryItemCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader$RecentSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader$RecentSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    return-void
.end method

.method private extractSubCategory(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    const-string/jumbo v2, "Recent"

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Recent"

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setCategoryName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader$RecentSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader$RecentSuggestionExtractor;->extractSubCategory(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader$RecentSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader$RecentSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setTranslatedSubCategoryName(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

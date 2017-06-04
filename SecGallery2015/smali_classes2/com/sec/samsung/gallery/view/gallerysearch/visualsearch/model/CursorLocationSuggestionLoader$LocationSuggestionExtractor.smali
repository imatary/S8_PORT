.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;
.super Ljava/lang/Object;
.source "CursorLocationSuggestionLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationSuggestionExtractor"
.end annotation


# instance fields
.field private final categoryItemCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;->categoryItemCursor:Landroid/database/Cursor;

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
    .locals 6

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    const-string/jumbo v3, "Location"

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "suggestion_list_location"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;->categoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;->extractSubCategory(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->mMediaId:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;)I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->mMediaId:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setItemId(I)V

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_POI_FOR_VISUAL_SEARCH:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;->categoryItemCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    sget-object v3, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->POI:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setLocationType(I)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->LOCATION:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setLocationType(I)V

    goto :goto_0
.end method

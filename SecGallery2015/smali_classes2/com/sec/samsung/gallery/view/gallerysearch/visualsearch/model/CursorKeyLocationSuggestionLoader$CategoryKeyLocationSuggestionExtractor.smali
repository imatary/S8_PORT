.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;
.super Ljava/lang/Object;
.source "CursorKeyLocationSuggestionLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryKeyLocationSuggestionExtractor"
.end annotation


# instance fields
.field private final mCategoryItemCursor:Landroid/database/Cursor;

.field private final mCategoryName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    return-void
.end method

.method private extractCategory(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractCategoryType(Landroid/database/Cursor;)I
    .locals 3

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v2, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->LOCATION:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    sget-object v2, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->POI:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method private extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractCount(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractIsCloud(Landroid/database/Cursor;)I
    .locals 1

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractItemId(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractMediaType(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractOrientation(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractScenePosition(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractUri(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    if-lez p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/searchitem/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractCount(Landroid/database/Cursor;)I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractIsCloud(Landroid/database/Cursor;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setIsCloud(I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getIsCloud()I

    move-result v2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->CLOUD_ONLY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setCategoryName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractCategory(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractCategoryType(Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setLocationType(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractItemId(Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setItemId(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractMediaType(Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setMediaType(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractOrientation(Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setOrientation(I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractScenePosition(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setScenePosition(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getScenePosition()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->extractUri(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setUri(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->setCoverBitmap(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    goto/16 :goto_0
.end method

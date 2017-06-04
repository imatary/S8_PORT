.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;
.super Ljava/lang/Object;
.source "CursorTagviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryTagViewExtractor"
.end annotation


# instance fields
.field private final mCategoryItemCursor:Landroid/database/Cursor;

.field private final mCategoryName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    return-void
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

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractCropRegion(Landroid/database/Cursor;)Landroid/graphics/RectF;
    .locals 2

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/CategoryUtils;->convertToRect(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method private extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractDate()J
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
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

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractMediaType(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractOrientation(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractScenePosition(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "scene_position"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private extractSubCategoryName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "Other Documents"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Other Documents"

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private extractTagType(Landroid/database/Cursor;)I
    .locals 4

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v2, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->LOCATION:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne v1, v3, :cond_2

    sget-object v2, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->POI:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->LANDMARK:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v0

    goto :goto_0
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
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryName:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractCount(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setItemCount(I)V

    sget-boolean v4, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Others"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemCount()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    sget-boolean v4, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractIsCloud(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setIsCloud(I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getIsCloud()I

    move-result v4

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->CLOUD_ONLY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractSubCategoryName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractTagType(Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setLocationType(I)V

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->isAvailableTransition(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setTranslatedSubCategoryName(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractItemId(Landroid/database/Cursor;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setItemId(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractMediaType(Landroid/database/Cursor;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setMediaType(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractOrientation(Landroid/database/Cursor;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setOrientation(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractCropRegion(Landroid/database/Cursor;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setCropRegion(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractDate()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDate(J)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractScenePosition(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setScenePosition(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemId()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getScenePosition()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->extractUri(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setUri(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

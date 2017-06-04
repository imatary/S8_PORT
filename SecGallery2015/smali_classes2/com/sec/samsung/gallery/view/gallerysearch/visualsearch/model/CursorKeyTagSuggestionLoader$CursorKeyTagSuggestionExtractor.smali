.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;
.super Ljava/lang/Object;
.source "CursorKeyTagSuggestionLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorKeyTagSuggestionExtractor"
.end annotation


# instance fields
.field private final mCategoryItemCursor:Landroid/database/Cursor;

.field private final mCategoryName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    return-void
.end method

.method private extractCategory(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractCategoryType(Landroid/database/Cursor;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    :cond_0
    const-string/jumbo v0, "Location"

    sget-object v2, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->LANDMARK:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setLocationType(I)V

    :goto_0
    return-object v0

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v0, "My tags"

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 8

    const/4 v4, 0x0

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryName:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractCount(Landroid/database/Cursor;)I

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractCategory(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v1, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v5, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractCategoryType(Landroid/database/Cursor;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setCategoryName(Ljava/lang/String;)V

    sget-boolean v5, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getLocationType()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->isAvailableTransition(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setTranslatedSubCategoryName(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    sget-boolean v5, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractIsCloud(Landroid/database/Cursor;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setIsCloud(I)V

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getIsCloud()I

    move-result v5

    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->CLOUD_ONLY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v1, v4

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "Others"

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractItemId(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setItemId(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractMediaType(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setMediaType(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractOrientation(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setOrientation(I)V

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractScenePosition(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setScenePosition(Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemId()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getScenePosition()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->extractUri(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setUri(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->setCoverBitmap(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    goto/16 :goto_0
.end method

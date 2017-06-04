.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;
.super Ljava/lang/Object;
.source "CursorShotModeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryTypeExtractor"
.end annotation


# instance fields
.field private final mCategoryItemCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    return-void
.end method

.method private extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractCount(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method private extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractIs360Video(Landroid/database/Cursor;)I
    .locals 1

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractIsCloud(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x3

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

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractRecordingMode(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractSefFileType(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractSubCategory(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "SEF Shot Modes"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mCategory:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractSefFileType(Landroid/database/Cursor;)I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractRecordingMode(Landroid/database/Cursor;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->VIDEO_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractIs360Video(Landroid/database/Cursor;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a04bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Selfie Shot Modes"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mCategory:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Selfie"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "Burst Shot Modes"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mCategory:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a006a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private extractUri(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    const-string/jumbo v2, "Camera mode"

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractCount(Landroid/database/Cursor;)I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractIsCloud(Landroid/database/Cursor;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setIsCloud(I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getIsCloud()I

    move-result v2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->CLOUD_ONLY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractMediaType(Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setMediaType(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractOrientation(Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setOrientation(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractSubCategory(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->extractUri(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setUri(Ljava/lang/String;)V

    goto :goto_0
.end method

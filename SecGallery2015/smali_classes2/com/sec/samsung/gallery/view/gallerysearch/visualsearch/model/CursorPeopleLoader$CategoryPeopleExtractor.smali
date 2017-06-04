.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;
.super Ljava/lang/Object;
.source "CursorPeopleLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryPeopleExtractor"
.end annotation


# instance fields
.field private final mCategoryItemCursor:Landroid/database/Cursor;

.field private final mCategoryName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    return-void
.end method

.method private extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractDate(Landroid/database/Cursor;)J
    .locals 2

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private extractFace(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractFaceRect(Landroid/database/Cursor;)Landroid/graphics/RectF;
    .locals 2

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/CategoryUtils;->convertToFaceRect(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method private extractGroupId(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractIsCloud(Landroid/database/Cursor;)I
    .locals 1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractItemCount(Landroid/database/Cursor;)I
    .locals 1

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractMediaId(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractMediaType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private extractOrientation(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractPersonId(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractPersonName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryName:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractItemCount(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setItemCount(I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemCount()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractMediaId(Landroid/database/Cursor;)I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    sget-boolean v4, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractIsCloud(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setIsCloud(I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getIsCloud()I

    move-result v4

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->CLOUD_ONLY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractMediaType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setMediaType(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractOrientation(Landroid/database/Cursor;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setOrientation(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractFace(Landroid/database/Cursor;)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractFaceRect(Landroid/database/Cursor;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setFaceRect(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractPersonName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setPersonName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getPersonName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractPersonId(Landroid/database/Cursor;)I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/searchfaceitem/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setUri(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractMediaId(Landroid/database/Cursor;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setItemId(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->extractGroupId(Landroid/database/Cursor;)I

    move-result v2

    goto :goto_1
.end method

.class public Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
.super Ljava/lang/Object;
.source "CategoryItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem$BitmapReadyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryItem"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCategoryName:Ljava/lang/String;

.field private mCropRect:Landroid/graphics/RectF;

.field private mDataPath:Ljava/lang/String;

.field private mDate:J

.field private mFaceRect:Landroid/graphics/RectF;

.field private mIsCloud:I

.field private mItemCount:I

.field private mItemId:I

.field private mListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem$BitmapReadyListener;

.field private mLocationType:I

.field private mMediaType:I

.field private mOrientation:I

.field private mPersonName:Ljava/lang/String;

.field private mScenePosition:Ljava/lang/String;

.field private mSubCategoryName:Ljava/lang/String;

.field private mTranslatedSubCategoryName:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem$BitmapReadyListener;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mTranslatedSubCategoryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mScenePosition:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mCategoryName:Ljava/lang/String;

    return-void
.end method

.method private isSameCategory(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSameOrientation(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSamePersonName(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getPersonName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getPersonName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSameSubCategory(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSameTranslatedSubCategory(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getTranslatedSubCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getTranslatedSubCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSameUri(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    const-string/jumbo v2, "CategoryItem"

    const-string/jumbo v3, "Both items are null in equals of CategoryItem"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->isSameCategory(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->isSameSubCategory(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->isSameUri(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->isSamePersonName(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->isSameTranslatedSubCategory(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->isSameOrientation(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const-string/jumbo v1, "CategoryItem"

    const-string/jumbo v3, "this category item is same as other in equals of CategoryItem"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "CategoryItem"

    const-string/jumbo v3, "this category item is not Category in equals of CategoryItem"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapReadyListener()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem$BitmapReadyListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem$BitmapReadyListener;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mCropRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mDate:J

    return-wide v0
.end method

.method public getFaceRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mFaceRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getIsCloud()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mIsCloud:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mItemCount:I

    return v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mItemId:I

    return v0
.end method

.method public getLocationType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mLocationType:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mOrientation:I

    return v0
.end method

.method public getPersonName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mPersonName:Ljava/lang/String;

    return-object v0
.end method

.method public getScenePosition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mScenePosition:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mSubCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedSubCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mTranslatedSubCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isVideo()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mMediaType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mIsCloud:I

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->CLOUD_ONLY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBitmapReadyListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem$BitmapReadyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem$BitmapReadyListener;

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mCategoryName:Ljava/lang/String;

    return-void
.end method

.method public setCropRegion(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mCropRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setDataPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mDataPath:Ljava/lang/String;

    return-void
.end method

.method public setDate(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mDate:J

    return-void
.end method

.method public setFaceRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mFaceRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setIsCloud(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mIsCloud:I

    return-void
.end method

.method public setItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mItemCount:I

    return-void
.end method

.method public setItemId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mItemId:I

    return-void
.end method

.method public setLocationType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mLocationType:I

    return-void
.end method

.method public setMediaType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mMediaType:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mOrientation:I

    return-void
.end method

.method public setPersonName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mPersonName:Ljava/lang/String;

    return-void
.end method

.method public setScenePosition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mScenePosition:Ljava/lang/String;

    return-void
.end method

.method public setSubCategoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mSubCategoryName:Ljava/lang/String;

    return-void
.end method

.method public setTranslatedSubCategoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mTranslatedSubCategoryName:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->mUri:Ljava/lang/String;

    return-void
.end method

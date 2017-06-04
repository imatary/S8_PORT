.class public Lcom/sec/android/gallery3d/data/UnionSCloudImage;
.super Lcom/sec/android/gallery3d/data/UnionImage;
.source "UnionSCloudImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/UnionSCloudItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnionSCloudImage"


# instance fields
.field private disableUpdateRotation:Z

.field private mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

.field private mIsRotationSupported:Z

.field private mRotationSupportedInitialized:Z


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/sec/android/gallery3d/data/UnionImage;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mRotationSupportedInitialized:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mIsRotationSupported:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->disableUpdateRotation:Z

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v2, v3, v4, p3}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cursor invalid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v4, "UnionSCloudImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->loadFromCursor(Landroid/database/Cursor;)V

    new-instance v4, Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v4, v5, p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateAttributes()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/gallery3d/data/UnionImage;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mRotationSupportedInitialized:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mIsRotationSupported:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->disableUpdateRotation:Z

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->loadFromCursor(Landroid/database/Cursor;)V

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateAttributes()V

    return-void
.end method

.method private getCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/access/face/FaceData;->FACES_URI:Landroid/net/Uri;

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v5

    const-string/jumbo v0, "person_id"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string/jumbo v3, "recommended_id"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v3, "face_data"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "pos_left"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v3, "pos_top"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v3, "pos_right"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string/jumbo v3, "pos_bottom"

    aput-object v3, v2, v0

    const/16 v0, 0x8

    const-string/jumbo v3, "auto_group"

    aput-object v3, v2, v0

    const/16 v0, 0x9

    const-string/jumbo v3, "similarity"

    aput-object v3, v2, v0

    const/16 v0, 0xa

    const-string/jumbo v3, "group_id"

    aput-object v3, v2, v0

    const-string/jumbo v3, "image_id=?"

    new-array v4, v4, [Ljava/lang/String;

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionSCloudImage"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    return-object v7
.end method

.method private getRecommendId(IIIIILjava/util/HashMap;[Lcom/sec/android/gallery3d/data/Face;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;",
            ">;[",
            "Lcom/sec/android/gallery3d/data/Face;",
            "I)I"
        }
    .end annotation

    const v3, 0x7fffffff

    const/4 v2, 0x1

    if-le p3, v2, :cond_2

    if-ne p3, p2, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;

    iget v1, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mMaxSimilarity:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceIndex:I

    aget-object v1, p7, v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Face;->setRecommendedId(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceId:I

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknownIgnoreAutoGroup(Landroid/content/Context;I)V

    iput p8, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceIndex:I

    iput v3, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mMaxSimilarity:I

    iput p1, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return p5

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;

    invoke-direct {v0, p8, p1, v3}, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;-><init>(III)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-le p3, v2, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;

    iget v1, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mMaxSimilarity:I

    if-ge v1, p4, :cond_3

    iget v1, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceIndex:I

    aget-object v1, p7, v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Face;->setRecommendedId(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceId:I

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknownIgnoreAutoGroup(Landroid/content/Context;I)V

    iput p8, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceIndex:I

    iput p4, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mMaxSimilarity:I

    iput p1, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 p5, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknownIgnoreAutoGroup(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;

    invoke-direct {v0, p8, p1, p4}, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;-><init>(III)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isRotationSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mRotationSupportedInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mIsRotationSupported:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mRotationSupportedInitialized:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mIsRotationSupported:Z

    return v0
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudId:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->deleteImageCropRectInCache(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mIsMoving:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->deleteByServerId(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mIsMoving:Z

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 9

    const/16 v8, 0x13

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/UnionImage;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_original_size:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/16 v3, 0xe

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_original_size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    const/16 v3, 0x10

    iget v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->rotation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v3, 0xf

    const-string/jumbo v4, "%dx%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v3, 0x1f4

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x13

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "UnionSCloudImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v8, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getFaces()[Lcom/sec/android/gallery3d/data/Face;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->filePath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudCachedPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFileStatus()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->fileStatus:I

    return v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudId:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_size:J

    return-wide v0
.end method

.method public getSupportedOperations()J
    .locals 6

    const-wide v0, 0xc600084000605L

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isBroken()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide v2, 0x4000002000000020L    # 2.000061035156264

    or-long/2addr v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isRotationSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_1
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->groupId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const-wide v2, 0x80000000000L

    or-long/2addr v0, v2

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->is3DPanorama()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide v2, 0x4000000000L

    or-long/2addr v0, v2

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isFlipPhoto:Z

    if-nez v2, :cond_4

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isRaw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/32 v2, -0x4000001

    and-long/2addr v0, v2

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isGolf()Z

    move-result v2

    if-nez v2, :cond_6

    const-wide/high16 v2, 0x1000000000000000L

    or-long/2addr v0, v2

    :cond_6
    return-wide v0
.end method

.method public getUnionContentUri()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method getUnionSCloudImageAttributes()Lcom/sec/android/gallery3d/data/LocalImageAttributes;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrlVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrlVendor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrlVendor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrlVendor:Ljava/lang/String;

    goto :goto_0
.end method

.method public isBurstShotImage(Ljava/lang/String;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v8, 0x0

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v1, "count(*)"

    aput-object v1, v2, v11

    :try_start_0
    sget-object v1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->SCloudImageUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionSCloudImage"

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v1, "UnionSCloudImage"

    const-string/jumbo v3, "query fail"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v11

    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-le v1, v10, :cond_1

    move v1, v10

    :goto_1
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v11, v1

    goto :goto_0

    :cond_1
    move v1, v11

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_2
    const-string/jumbo v1, "UnionSCloudImage"

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public isGolf()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "image/golf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadFace()[Lcom/sec/android/gallery3d/data/Face;
    .locals 35

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isBroken()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const/16 v26, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->getCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v26

    if-eqz v26, :cond_6

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v24

    move/from16 v0, v24

    new-array v12, v0, [Lcom/sec/android/gallery3d/data/Face;

    const/4 v13, 0x0

    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v5, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v5, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/4 v5, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const/4 v5, 0x5

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    const/4 v5, 0x6

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    const/4 v5, 0x7

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v5, 0x8

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v5, 0x9

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v5, 0xa

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-gez v28, :cond_2

    const/16 v28, 0x0

    :cond_2
    if-gez v33, :cond_3

    const/16 v33, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I

    move/from16 v0, v31

    if-le v0, v5, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I

    move/from16 v31, v0

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    move/from16 v0, v22

    if-le v0, v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    move/from16 v22, v0

    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->rotation:I

    const/16 v14, 0x5a

    if-ne v5, v14, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    sub-int v29, v5, v22

    move/from16 v34, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    sub-int v32, v5, v33

    move/from16 v23, v31

    :goto_2
    move v10, v8

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->getRecommendId(IIIIILjava/util/HashMap;[Lcom/sec/android/gallery3d/data/Face;I)I

    move-result v10

    add-int/lit8 v27, v13, 0x1

    new-instance v14, Lcom/sec/android/gallery3d/data/Face;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v15, ""

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v34

    move/from16 v3, v32

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move v15, v6

    move/from16 v17, v10

    invoke-direct/range {v14 .. v21}, Lcom/sec/android/gallery3d/data/Face;-><init>(ILjava/lang/String;IILandroid/graphics/Rect;II)V

    aput-object v14, v12, v13

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->faces:[Lcom/sec/android/gallery3d/data/Face;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    invoke-static/range {v26 .. v26}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_3
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    goto/16 :goto_0

    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->rotation:I

    const/16 v14, 0xb4

    if-ne v5, v14, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I

    sub-int v29, v5, v31

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    sub-int v34, v5, v22

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I

    sub-int v32, v5, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    sub-int v23, v5, v33

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->rotation:I

    const/16 v14, 0x10e

    if-ne v5, v14, :cond_9

    move/from16 v29, v33

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I

    sub-int v34, v5, v31

    move/from16 v32, v22

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v23, v5, v28

    goto/16 :goto_2

    :cond_9
    move/from16 v29, v28

    move/from16 v34, v33

    move/from16 v32, v31

    move/from16 v23, v22

    goto/16 :goto_2

    :catch_0
    move-exception v25

    :try_start_2
    const-string/jumbo v5, "UnionSCloudImage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "RuntimeException : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {v25 .. v25}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v26 .. v26}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception v5

    invoke-static/range {v26 .. v26}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v5

    :cond_a
    move/from16 v13, v27

    goto/16 :goto_1
.end method

.method public loadFromCursor(Landroid/database/Cursor;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->id:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->latitude:D

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->longitude:D

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->dateTakenInMs:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->dateAddedInSec:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->dateModifiedInSec:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->filePath:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->rotation:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->bucketId:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->fileSize:J

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->groupId:J

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mArcWidth:I

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mArcHeight:I

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->FEATURE_3D_PANORAMA_ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->sphericalMosaic:I

    :cond_0
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->sefFileType:I

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mIsFavorite:Z

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isdrm:Z

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->sefFileSubType:I

    :cond_2
    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->FEATURE_USE_BEST_PHOTO_FIELD:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->bestImage:I

    :cond_3
    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->FEATURE_USE_GO_TO_URL:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrl:Ljava/lang/String;

    const/16 v0, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrlVendor:Ljava/lang/String;

    :cond_4
    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->FEATURE_USE_SECRET_BOX:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isSceretBoxItem:Z

    :cond_5
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isCloud:I

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudId:I

    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerId:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudCachedPath:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudThumbPath:Ljava/lang/String;

    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->fileStatus:I

    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerPath:Ljava/lang/String;

    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_size:J

    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_original_size:J

    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_is_available_thumb:I

    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITH_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    return-object v0
.end method

.method public requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;",
            ")",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/data/UnionMediaItem$SCloudThumbRequest;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->dateModifiedInSec:J

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudThumbPath:Ljava/lang/String;

    move-object v1, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/gallery3d/data/UnionMediaItem$SCloudThumbRequest;-><init>(Lcom/sec/android/gallery3d/data/UnionMediaItem;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;-><init>(Lcom/sec/android/gallery3d/data/UnionSCloudImage;Lcom/sec/android/gallery3d/data/UnionSCloudImage$1;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 8

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const-string/jumbo v3, "image/jpeg"

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->rotation:I

    add-int/2addr v3, p1

    rem-int/lit16 v0, v3, 0x168

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x168

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerId:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->setOrientationWithBlocking(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "UnionSCloudImage"

    const-string/jumbo v4, "Rotate cloud image successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->rotation:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->disableUpdateRotation:Z

    :cond_1
    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->groupId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->bucketId:I

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->groupId:J

    iget v5, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->rotation:I

    invoke-static {v3, v4, v6, v7, v5}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->rotateBurstShot(Landroid/content/Context;IJI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "UnionSCloudImage"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a049e

    invoke-static {v1, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setLatLong([D)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerId:Ljava/lang/String;

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->setLocationWithBlocking(Landroid/content/Context;Ljava/lang/String;DD)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/UnionImage;->setLatLong([D)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "UnionSCloudImage"

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateFromCursor(Landroid/database/Cursor;)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Lcom/sec/android/gallery3d/util/UpdateHelper;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;-><init>()V

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->id:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->id:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->caption:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->caption:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mimeType:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mimeType:Ljava/lang/String;

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->latitude:D

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->latitude:D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->longitude:D

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->longitude:D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->dateTakenInMs:J

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->dateTakenInMs:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->dateAddedInSec:J

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->dateAddedInSec:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->dateModifiedInSec:J

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->dateModifiedInSec:J

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->filePath:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->filePath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->disableUpdateRotation:Z

    if-eqz v2, :cond_6

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->disableUpdateRotation:Z

    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->bucketId:I

    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->bucketId:I

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->fileSize:J

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->fileSize:J

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I

    const/16 v5, 0xc

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    const/16 v5, 0xd

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->groupId:J

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->groupId:J

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->width:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mArcWidth:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->height:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mArcHeight:I

    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->FEATURE_3D_PANORAMA_ENABLED:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->sphericalMosaic:I

    :cond_0
    const/16 v2, 0x10

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->sefFileType:I

    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mIsFavorite:Z

    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x1f

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->sefFileSubType:I

    :cond_1
    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->FEATURE_USE_BEST_PHOTO_FIELD:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->bestImage:I

    :cond_2
    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->FEATURE_USE_GO_TO_URL:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrl:Ljava/lang/String;

    const/16 v5, 0x21

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrlVendor:Ljava/lang/String;

    const/16 v5, 0x22

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mUrlVendor:Ljava/lang/String;

    :cond_3
    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->FEATURE_USE_SECRET_BOX:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->filePath:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isSceretBoxItem:Z

    :cond_4
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isdrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isdrm:Z

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isCloud:I

    const/16 v5, 0x13

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isCloud:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudId:I

    const/16 v5, 0x15

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudId:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerId:Ljava/lang/String;

    const/16 v5, 0x16

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudCachedPath:Ljava/lang/String;

    const/16 v5, 0x17

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudCachedPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudThumbPath:Ljava/lang/String;

    const/16 v5, 0x18

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudThumbPath:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->fileStatus:I

    const/16 v5, 0x19

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->fileStatus:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerPath:Ljava/lang/String;

    const/16 v5, 0x1a

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerPath:Ljava/lang/String;

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_size:J

    const/16 v2, 0x1b

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_size:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_original_size:J

    const/16 v2, 0x1c

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_original_size:J

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_is_available_thumb:I

    const/16 v5, 0x1e

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloud_is_available_thumb:I

    invoke-virtual {p0, v1, p1, v4}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isItemRenamed(Lcom/sec/android/gallery3d/util/UpdateHelper;Landroid/database/Cursor;Z)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v3

    :goto_3
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateAttributes()V

    :cond_5
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v2

    return v2

    :cond_6
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->rotation:I

    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->rotation:I

    goto/16 :goto_0

    :cond_7
    move v2, v4

    goto/16 :goto_1

    :cond_8
    move v2, v4

    goto/16 :goto_2

    :cond_9
    move v0, v4

    goto :goto_3
.end method

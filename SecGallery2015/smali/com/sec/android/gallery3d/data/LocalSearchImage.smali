.class public Lcom/sec/android/gallery3d/data/LocalSearchImage;
.super Lcom/sec/android/gallery3d/data/LocalImage;
.source "LocalSearchImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/SearchMediaItem;


# static fields
.field public static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field private static final ITEM_PATH_STR:Ljava/lang/String; = "/search/local/image"

.field private static final TAG:Ljava/lang/String; = "LocalSearchImage"


# instance fields
.field private final mFaceRect:Landroid/graphics/RectF;

.field private mNeedToUpdate:Z

.field private final mPosRatio:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/search/local/image"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/data/LocalImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mNeedToUpdate:Z

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mPosRatio:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/CategoryUtils;->convertToFaceRect(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mFaceRect:Landroid/graphics/RectF;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/android/gallery3d/data/LocalImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mNeedToUpdate:Z

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mPosRatio:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/CategoryUtils;->convertToFaceRect(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mFaceRect:Landroid/graphics/RectF;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFaceRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mFaceRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPosRatio()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mPosRatio:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedToUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mNeedToUpdate:Z

    return v0
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

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/data/LocalSearchImage;->requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    return-object v0
.end method

.method public requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 10
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

    const/4 p1, 0x1

    new-instance v1, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->dateModifiedInSec:J

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->filePath:Ljava/lang/String;

    const/4 v8, 0x0

    move v6, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;ZLcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)V

    return-object v1
.end method

.method public setNeedToUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mNeedToUpdate:Z

    return-void
.end method

.method public updateAttrs()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :try_start_0
    sget-object v4, Lcom/sec/android/gallery3d/data/LocalSearchImage;->PROJECTION:[Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;->id:I

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/LocalSearchImage;->updateFromCursor(Landroid/database/Cursor;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v4, "LocalSearchImage"

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

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v5, :cond_4

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v4

    :catch_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

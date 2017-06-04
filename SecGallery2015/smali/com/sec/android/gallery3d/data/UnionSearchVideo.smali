.class public Lcom/sec/android/gallery3d/data/UnionSearchVideo;
.super Lcom/sec/android/gallery3d/data/UnionLocalVideo;
.source "UnionSearchVideo.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/SearchMediaItem;


# static fields
.field public static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field private static final ITEM_PATH_STR:Ljava/lang/String; = "/search/union/video"

.field private static final TAG:Ljava/lang/String; = "UnionSearchVideo"


# instance fields
.field private mNeedToUpdate:Z

.field private final mVideoThumbFrame:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/search/union/video"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/data/UnionLocalVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->mNeedToUpdate:Z

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->mVideoThumbFrame:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPosRatio()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNeedToUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->mNeedToUpdate:Z

    return v0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->dateModifiedInSec:J

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->filePath:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->mVideoThumbFrame:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move v6, p1

    move-object v9, p0

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;ZLcom/sec/android/gallery3d/data/MediaItem;J)V

    return-object v1
.end method

.method public setNeedToUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->mNeedToUpdate:Z

    return-void
.end method

.method public updateAttrs()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    :try_start_0
    sget-object v4, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->PROJECTION:[Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->id:I

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->updateFromCursor(Landroid/database/Cursor;)Z
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

    const-string/jumbo v4, "UnionSearchVideo"

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

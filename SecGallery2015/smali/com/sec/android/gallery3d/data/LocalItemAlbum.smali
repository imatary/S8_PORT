.class public Lcom/sec/android/gallery3d/data/LocalItemAlbum;
.super Lcom/sec/android/gallery3d/data/LocalAlbumSet;
.source "LocalItemAlbum.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Z)V

    return-void
.end method


# virtual methods
.method protected getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public declared-synchronized reload()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalItemAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalItemAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalItemAlbum;->mNotifierOrder:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalItemAlbum;->mNotifierOrder:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->clearDirty()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalItemAlbum;->mCachedCount:I

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalItemAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalItemAlbum;->mDataVersion:J

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalItemAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setDCIMName(Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalItemAlbum;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

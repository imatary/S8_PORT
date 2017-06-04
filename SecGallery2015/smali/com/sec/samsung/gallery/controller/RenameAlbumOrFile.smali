.class public Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "RenameAlbumOrFile.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final TAG:Ljava/lang/String; = "RenameAlbumOrFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreviousAlbumBucketId:I

.field private mPreviousAlbumIsUpsideAlbum:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mPreviousAlbumIsUpsideAlbum:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mPreviousAlbumBucketId:I

    return-void
.end method

.method private getCurrentMediaItem(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 7

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "RenameAlbumOrFile"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    goto :goto_0
.end method

.method private getCurrentSelectedItem()Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string/jumbo v4, "RenameAlbumOrFile"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMediaItemProviderOperation(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/content/ContentProviderOperation;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    const-string/jumbo v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "_data"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "_display_name"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method

.method private getSubItemList(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaItemList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private handleException(Ljava/lang/Exception;I)V
    .locals 2

    const-string/jumbo v0, "RenameAlbumOrFile"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method private renameAlbum(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->getSubItemList(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v9, :cond_5

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getCloudServerPath()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v7, :cond_0

    const/4 v5, 0x0

    const/16 v9, 0x2f

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    if-eqz v5, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "RenameAlbumOrFile"

    const-string/jumbo v10, "making a destination album folder is failed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    const v10, 0x7f0a003a

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_6
    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "renameAlbum() failed"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    invoke-direct {p0, v1, p2}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->updateMoreAlbumDB(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p2, p1, v3}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->updateAlbumDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private renameFile(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/util/FileUtil;->rename(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->updateItemDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)V

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/SearchMediaItem;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/data/SearchMediaItem;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/sec/android/gallery3d/data/SearchMediaItem;->setNeedToUpdate(Z)V

    goto :goto_0
.end method

.method private updateAlbumDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v31, "external"

    invoke-static/range {v31 .. v31}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v31, "_data"

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v31, "_display_name"

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v31, 0x0

    const-string/jumbo v32, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v31, 0x0

    aput-object v26, v21, v31

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v31

    const-string/jumbo v32, "_data = ?"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_0
    :goto_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_a

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-lez v32, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v32

    move-object/from16 v0, p3

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBurstShotItems(J)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_0

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v7, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    move/from16 v33, v0

    if-eqz v33, :cond_2

    move-object/from16 v30, v7

    check-cast v30, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v33

    if-eqz v33, :cond_1

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getCloudServerPath()Ljava/lang/String;

    move-result-object v14

    :goto_2
    const-string/jumbo v33, "/"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    instance-of v0, v7, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    move/from16 v33, v0

    if-eqz v33, :cond_4

    move-object/from16 v30, v7

    check-cast v30, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v33

    if-eqz v33, :cond_3

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getServerId()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v13, v7}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->getMediaItemProviderOperation(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v13, v7}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->getMediaItemProviderOperation(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    move/from16 v32, v0

    if-eqz v32, :cond_7

    move-object/from16 v30, v19

    check-cast v30, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getCloudServerPath()Ljava/lang/String;

    move-result-object v14

    :goto_3
    const-string/jumbo v32, "/"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    move/from16 v32, v0

    if-eqz v32, :cond_9

    move-object/from16 v30, v19

    check-cast v30, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v32

    if-eqz v32, :cond_8

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getServerId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_7
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v13, v2}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->getMediaItemProviderOperation(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/content/ContentProviderOperation;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v13, v2}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->getMediaItemProviderOperation(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/content/ContentProviderOperation;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :try_start_0
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    const/16 v27, 0x3e8

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_c

    const/16 v16, 0x64

    const/16 v18, 0x0

    :cond_b
    move/from16 v0, v18

    mul-int/lit16 v15, v0, 0x3e8

    add-int/lit8 v31, v18, 0x1

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_e

    move/from16 v28, v29

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    new-instance v32, Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v10, v15, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v33, Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v9, v15, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v34, 0x1

    invoke-static/range {v31 .. v34}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->moveListByServerId(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)I

    move-result v17

    const/16 v31, 0xc8

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    const/16 v16, 0xc8

    const-string/jumbo v31, "RenameAlbumOrFile"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "stopped reason ["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/16 v31, 0xc8

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f0a001f

    invoke-static/range {v31 .. v32}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_6
    new-instance v20, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct/range {v20 .. v20}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object p1, v31, v32

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanDirectories([Ljava/lang/String;)V

    sget-object v31, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v31 .. v31}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v31

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    check-cast v31, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v4

    const/16 v31, 0x1

    const-string/jumbo v32, "images_event_album"

    move/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateLocalDB(ZLjava/lang/String;)Ljava/util/List;

    const/16 v31, 0x0

    const-string/jumbo v32, "video_event_album"

    move/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateLocalDB(ZLjava/lang/String;)Ljava/util/List;

    :cond_d
    return-void

    :cond_e
    add-int/lit8 v31, v18, 0x1

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    goto/16 :goto_4

    :cond_f
    const/16 v31, 0x65

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    const/16 v16, 0xc8

    :cond_10
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v29

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    goto/16 :goto_5

    :catch_0
    move-exception v12

    const-string/jumbo v31, "RenameAlbumOrFile"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private updateEventItem(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 6

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const-string/jumbo v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const-string/jumbo v2, "images_event_album"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v1, v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "video_event_album"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateItemDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 9

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->getMediaItemProviderOperation(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->updateEventItem(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    invoke-interface {v2, v6}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanFiles([Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "content://force_reload"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "RenameAlbumOrFile"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->scanExternalStorage(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateMoreAlbumDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isDisabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mPreviousAlbumBucketId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mPreviousAlbumIsUpsideAlbum:Z

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "_id"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "bucket_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "_data"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "bucket_display_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "album_more"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "album_extra"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "album_sort_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "album_sort_type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v1

    iget v3, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mPreviousAlbumBucketId:I

    invoke-virtual {v1, v3, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->insertNDeleteNewAlbumDisplayInfo(ILandroid/content/ContentValues;)Z

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 11

    const v10, 0x7f0a048b

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v5, v7

    check-cast v5, [Ljava/lang/Object;

    aget-object v7, v5, v8

    check-cast v7, Landroid/content/Context;

    iput-object v7, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    aget-object v4, v5, v9

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v5, v7

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v3, v5, v7

    check-cast v3, Ljava/lang/String;

    array-length v7, v5

    const/4 v8, 0x6

    if-lt v7, v8, :cond_0

    const/4 v7, 0x4

    aget-object v7, v5, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mPreviousAlbumBucketId:I

    const/4 v7, 0x5

    aget-object v7, v5, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mPreviousAlbumIsUpsideAlbum:Z

    :cond_0
    if-eqz v6, :cond_2

    :try_start_0
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->getCurrentMediaItem(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    instance-of v7, v1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_3

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v1, v4}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->renameAlbum(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v6, :cond_4

    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v0, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v7

    const-string/jumbo v8, "EXIT_SELECTION_MODE"

    invoke-virtual {v7, v8, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->getCurrentSelectedItem()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    goto :goto_0

    :cond_3
    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v1, v4}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->renameFile(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/samsung/gallery/util/DestAlreadyExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v2

    const v7, 0x7f0a004a

    invoke-direct {p0, v2, v7}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->handleException(Ljava/lang/Exception;I)V

    goto :goto_2

    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v7

    const-string/jumbo v8, "EXIT_SELECTION_MODE"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/sec/samsung/gallery/util/DestAlreadyExistException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-direct {p0, v2, v10}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->handleException(Ljava/lang/Exception;I)V

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-direct {p0, v2, v10}, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;->handleException(Ljava/lang/Exception;I)V

    goto :goto_2
.end method

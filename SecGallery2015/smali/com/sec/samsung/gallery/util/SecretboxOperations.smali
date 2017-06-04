.class public Lcom/sec/samsung/gallery/util/SecretboxOperations;
.super Landroid/os/AsyncTask;
.source "SecretboxOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/util/SecretboxOperations$MediaObjectComparator;,
        Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final OP_MOVE_TO_SECRETBOX:I = 0x0

.field public static final OP_REMOVE_FROM_SECRETBOX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SecretboxOperations"

.field private static final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field public static mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mOperationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/util/SecretboxOperations$MediaObjectComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/util/SecretboxOperations$MediaObjectComparator;-><init>(Lcom/sec/samsung/gallery/util/SecretboxOperations$1;)V

    sput-object v0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(ILcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p1, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOperationId:I

    sput-object p2, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    iput-object p3, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    return-void
.end method

.method private getDstAlbumPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-static {p2, v0}, Lcom/sec/android/gallery3d/common/Utils;->addPostfix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    :goto_2
    return-object v6

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 14

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v9

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :try_start_0
    sget-object v11, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mComparator:Ljava/util/Comparator;

    invoke-static {v5, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaObject;

    iget v11, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOperationId:I

    if-nez v11, :cond_a

    instance-of v11, v6, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v11, :cond_5

    move-object v7, v6

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v11, v7, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v11, :cond_1

    instance-of v11, v7, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v11, :cond_0

    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v13

    invoke-virtual {v7, v11, v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v11, v13}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->getDstAlbumPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    :goto_2
    if-ltz v2, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v11, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v8, 0x0

    :cond_2
    if-eqz v8, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v11, "SecretboxOperations"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v11, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    invoke-interface {v11, v3, v0}, Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;->handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    sget-object v11, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    invoke-interface {v11, v10}, Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;->onCompleted(I)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_3
    return-object v11

    :cond_5
    instance-of v11, v6, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v11, :cond_6

    instance-of v11, v6, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v11, :cond_0

    :cond_6
    instance-of v11, v6, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v11, :cond_8

    iget-object v13, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mContext:Landroid/content/Context;

    move-object v11, v6

    check-cast v11, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v8, 0x0

    :cond_7
    :goto_4
    if-eqz v8, :cond_0

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_8
    instance-of v11, v6, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v11, :cond_9

    iget-object v13, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mContext:Landroid/content/Context;

    move-object v11, v6

    check-cast v11, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    invoke-interface {v11}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    sget-object v11, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    const/4 v13, 0x0

    invoke-interface {v11, v6, v13}, Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;->handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    sget-object v11, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    invoke-interface {v11, v10}, Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;->onCompleted(I)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_3

    :cond_a
    iget v11, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOperationId:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_0

    instance-of v11, v6, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v11, :cond_0

    move-object v7, v6

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v11, v7, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v11, :cond_b

    instance-of v11, v7, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v11, :cond_0

    :cond_b
    const/4 v11, 0x0

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v13

    invoke-virtual {v7, v11, v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    sget-object v11, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->RESTORE_PATH:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v11, v13}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->getDstAlbumPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    :goto_5
    if-ltz v2, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    sget-object v11, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    invoke-interface {v11, v3, v0}, Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;->handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    sget-object v11, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    invoke-interface {v11, v10}, Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;->onCompleted(I)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_3

    :cond_c
    if-eqz v8, :cond_d

    add-int/lit8 v10, v10, 0x1

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mOnSecretboxListener:Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;->onCompleted(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/SecretboxOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

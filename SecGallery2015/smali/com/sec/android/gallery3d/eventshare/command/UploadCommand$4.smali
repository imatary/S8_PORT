.class Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;
.super Ljava/lang/Object;
.source "UploadCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->onFileUploaded(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createShareItemPath(Ljava/lang/String;Landroid/database/Cursor;)Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;
    .locals 11

    const/4 v4, 0x1

    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;-><init>(Ljava/lang/String;IILjava/lang/String;JJLjava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;-><init>(Ljava/lang/String;IILjava/lang/String;JJ)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;-><init>(Ljava/lang/String;IILjava/lang/String;JJ)V

    goto :goto_0
.end method

.method private getExtractID(Z)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "_id"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "media_id"

    goto :goto_0

    :cond_1
    # getter for: Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->USE_SCLOUD:Z
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo v0, "cloud_id"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "media_id"

    goto :goto_0
.end method

.method private getOriginalItemPath(ILcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;)Lcom/sec/android/gallery3d/data/Path;
    .locals 4

    const v3, 0xf4240

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->USE_SCLOUD:Z
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    if-lt p1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    # getter for: Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->USE_SCLOUD:Z
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->access$100()Z

    move-result v1

    if-eqz v1, :cond_6

    if-lt p1, v3, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getProjection(Z)[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_size"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v4

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v5

    const-string/jumbo v1, "date_modified"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "cloud_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "cloud_cached_path"

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v1, v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "cloud_size"

    :goto_1
    aput-object v0, v1, v3

    const-string/jumbo v0, "mime_type"

    aput-object v0, v1, v4

    const-string/jumbo v0, "datetaken"

    aput-object v0, v1, v5

    const-string/jumbo v0, "date_modified"

    aput-object v0, v1, v6

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "_size"

    goto :goto_1
.end method

.method private getShareEventItem(Landroid/content/Context;ILcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;Ljava/lang/String;I)Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;
    .locals 25

    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/.face/.shareEvent/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "UploadCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fail make dir : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->saveSharedHiddenThumbnail(Ljava/lang/String;ILandroid/content/Context;Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;Ljava/io/File;)Ljava/lang/String;

    move-result-object v24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "/channel/channelalbum"

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    const-string/jumbo v3, "image/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    const-string/jumbo v3, "image/jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->updateExif(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->getInstance()Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->val$fileName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mDateTaken:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mFileId:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mFileSize:I

    move/from16 v23, v0

    move-object v14, v8

    move-object/from16 v17, v11

    move/from16 v18, p2

    invoke-virtual/range {v13 .. v23}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->getShareEventItem(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JII)Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    const-string/jumbo v3, "image/gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mTimeModified:J

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->updateExif(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1
.end method

.method private getShareItemPath(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;
    .locals 11

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v10, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0, p4}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->getExtractID(Z)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-direct {p0, p4}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->getProjection(Z)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "UploadCommand"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, v8}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->createShareItemPath(Ljava/lang/String;Landroid/database/Cursor;)Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    :cond_0
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v10

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v1, "UploadCommand"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private saveSharedHiddenThumbnail(Ljava/lang/String;ILandroid/content/Context;Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;Ljava/io/File;)Ljava/lang/String;
    .locals 12

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    const-string/jumbo v11, "gif"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".gif"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v4, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-direct {p0, p2, v0}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->getOriginalItemPath(ILcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    const-string/jumbo v11, "gif"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mCloudCachedPath:Ljava/lang/String;

    if-eqz v10, :cond_3

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mCloudCachedPath:Ljava/lang/String;

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".gif"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {p3, v8, v10, v9}, Lcom/sec/samsung/gallery/util/FileUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v10, "UploadCommand"

    const-string/jumbo v11, "cannot copy gif file"

    invoke-static {v10, v11}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_2
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    return-object v9

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2f8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".jpeg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_3
    move-object v8, p1

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p4

    invoke-static {p3, v0, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getBitmap(Landroid/content/Context;Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;Lcom/sec/android/gallery3d/data/Path;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v1, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    move-object v5, v6

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    :try_start_3
    const-string/jumbo v10, "UploadCommand"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v10

    :goto_5
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    :catchall_1
    move-exception v10

    move-object v5, v6

    goto :goto_5

    :catch_1
    move-exception v3

    move-object v5, v6

    goto :goto_4
.end method

.method private updateCMHTable(Landroid/content/Context;ILcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;Z)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v15, v15, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mRemoveOriginalFileIdArray:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v15, v15, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mThumbnailItemList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-static/range {p1 .. p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelAllInfo(Landroid/content/Context;I)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getOwner()I

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setOwner(I)V

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    const/4 v7, 0x0

    sget-boolean v15, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v15, v15, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v15, "+"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v15, v15, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "UploadCommand"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "SOCIAL_STORY : onFileUploaded - fileOwner myName "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", uploadPhoneNumber "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p5, :cond_5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    iget v15, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mFileId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v15, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v15, :cond_3

    new-instance v15, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    invoke-direct {v15, v14, v7}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, p1

    invoke-static {v0, v10, v3, v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->addChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/util/ArrayList;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v15, v15, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v8, v15, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->removeOriginalChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Integer;Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->STORY_WATCHER_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-boolean v15, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v15, :cond_4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v15, "SHARE_EVENT_ITEM_ID"

    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getCMHFileId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v15, "SHARE_EVENT_ITEM_UNIQUE_PATH"

    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getFilePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v15, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    move-object/from16 v16, v0

    sget-object v17, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;->CREATE_BY_CONTENT:Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v4, v1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;)V

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->excute()V

    :cond_4
    :goto_0
    const/4 v15, 0x1

    :goto_1
    return v15

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v15, v15, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v15, v15, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setUGCI(Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v15, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mThumbnailItemList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v15, v15, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mThumbnailItemList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v15, v15, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mThumbnailItemList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move-object v15, v0

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v15, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v15, :cond_6

    new-instance v15, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    invoke-direct {v15, v14, v7}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    check-cast v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getCMHFileId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v5, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    :cond_7
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v0, v6, v3, v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->addChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/util/ArrayList;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v15, v15, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mRemoveOriginalFileIdArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v15, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->removeOriginalChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Integer;Z)Z

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->STORY_WATCHER_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-boolean v15, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v15, :cond_4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v15, "SHARE_EVENT_ITEM_IDS"

    invoke-virtual {v4, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v15, "SHARE_EVENT_ITEM_UNIQUE_PATHS"

    invoke-virtual {v4, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    new-instance v15, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->excute()V

    goto/16 :goto_0

    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_1
.end method

.method private updateExif(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 7

    if-eqz p5, :cond_a

    :try_start_0
    new-instance v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;

    invoke-direct {v3, p1}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsAltitude:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "GPSAltitude"

    iget-object v5, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsAltitude:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v4, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsAltitudeRef:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "GPSAltitudeRef"

    iget-object v5, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsAltitudeRef:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsDateStamp:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "GPSDateStamp"

    iget-object v5, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsDateStamp:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v4, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->dateTime:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string/jumbo v4, "DateTime"

    iget-object v5, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v4, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLatitude:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string/jumbo v4, "GPSLatitude"

    iget-object v5, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLatitude:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v4, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLatitudeRef:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string/jumbo v4, "GPSLatitudeRef"

    iget-object v5, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLatitudeRef:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v4, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLongitude:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string/jumbo v4, "GPSLongitude"

    iget-object v5, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLongitude:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v4, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLongitudeRef:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string/jumbo v4, "GPSLongitudeRef"

    iget-object v5, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLongitudeRef:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v4, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsProcessMethod:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string/jumbo v4, "GPSProcessingMethod"

    iget-object v5, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsProcessMethod:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v4, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsTimeStamp:Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string/jumbo v4, "GPSTimeStamp"

    iget-object v5, v3, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "UploadCommand"

    const-string/jumbo v5, "cannot find file to set exif: "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v4, "UploadCommand"

    const-string/jumbo v5, "cannot set exif data - write orientation"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    :try_start_1
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "DateTime"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v4, "UploadCommand"

    const-string/jumbo v5, "cannot find file to set exif: "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v2

    const-string/jumbo v4, "UploadCommand"

    const-string/jumbo v5, "cannot set exif data - write orientation"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 14

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileMediaIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileCMHIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileMediaIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileLocalPathMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileMediaIdMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileCMHIdMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    const/4 v11, 0x1

    :cond_3
    if-eqz v12, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v5, 0xf4240

    if-lt v0, v5, :cond_6

    const/4 v11, 0x1

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v4, v0, v11}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->getShareItemPath(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->getShareEventItem(Landroid/content/Context;ILcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;Ljava/lang/String;I)Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mThumbnailItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v5, v5, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mThumbnailItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setThumbnailItemList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mRemoveOriginalFileIdArray:Ljava/util/ArrayList;

    iget v5, v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mFileId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v5, v5, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mRemoveOriginalFileIdArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setRemoveOriginalFileIdArray(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    instance-of v10, v0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;

    const-string/jumbo v0, "UploadCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SOCIAL_STORY : onFileUploaded mIsUploadRunning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mIsUploadRunning:Z
    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isSharedState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mIsUploadRunning:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v10, :cond_0

    :cond_5
    move-object v5, p0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;->updateCMHTable(Landroid/content/Context;ILcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;Z)Z

    move-result v13

    const-string/jumbo v0, "UploadCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

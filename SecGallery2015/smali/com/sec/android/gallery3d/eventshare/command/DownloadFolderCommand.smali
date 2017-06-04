.class public Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;
.super Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;
.source "DownloadFolderCommand.java"


# static fields
.field private static final INDEX_CHANNEL_FILE_ID:I = 0x1

.field private static final INDEX_CHANNEL_THUMBNAIL_ORIGINAL_PATH:I = 0x3

.field private static final INDEX_CHANNEL_THUMBNAIL_PATH:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DownloadFolderCommand"

.field private static final mBaseUri:Landroid/net/Uri;

.field private static final mOrderClause:Ljava/lang/String; = "datetaken DESC,media_id DESC"

.field private static final mProjection:[Ljava/lang/String;

.field private static final mWhereClause:Ljava/lang/String; = "story_id = ? and is_recommended != 0"


# instance fields
.field private final mDirectoryResponse:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "story_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "fileid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "cloudCachePath"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "original_filepath"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/eventshare/EventState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mDirectoryResponse:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mIsRequestNoti:Z

    iput-object p4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mSenderDuid:Ljava/lang/String;

    return-void
.end method

.method private getCursor(I)Landroid/database/Cursor;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mProjection:[Ljava/lang/String;

    const-string/jumbo v3, "story_id = ? and is_recommended != 0"

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string/jumbo v5, "datetaken DESC,media_id DESC"

    const-string/jumbo v6, "DownloadFolderCommand"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "It takes  %d ms in getCursor of GetFolderInfoCommand with CMH story."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method protected getFiles()Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v19

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v6

    if-gtz v6, :cond_0

    const-string/jumbo v22, "DownloadFolderCommand"

    const-string/jumbo v23, "event id is null !!"

    invoke-static/range {v22 .. v23}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    const/4 v11, 0x1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->getCursor(I)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_4

    :cond_2
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3

    if-eqz v14, :cond_3

    const-string/jumbo v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v22

    if-nez v22, :cond_2

    :cond_4
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v22, "Gallery_Performance"

    const-string/jumbo v23, "It takes  %d ms in making existing file list."

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v20

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mDirectoryResponse:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->getChildren()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v9, v23, -0x1

    :goto_2
    if-lez v9, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->getChildren()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    move-result-object v23

    aget-object v3, v23, v9

    if-eqz v3, :cond_7

    if-nez v11, :cond_8

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->getPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    const-string/jumbo v23, "DownloadFolderCommand"

    const-string/jumbo v24, "skip!!"

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_1
    const-string/jumbo v22, "DownloadFolderCommand"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v22, "Gallery_Performance"

    const-string/jumbo v23, "It takes  %d ms in making existing file list."

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v20

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v22

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v23, "Gallery_Performance"

    const-string/jumbo v24, "It takes  %d ms in making existing file list."

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v20

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v22

    :cond_8
    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->isFileDeleted()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_7

    new-instance v12, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-direct {v12, v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;-><init>(J)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->getPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->getPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->setOriginalUrl(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->getSize()Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->setFileSize(Ljava/lang/Long;)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->getInstance()Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;

    move-result-object v23

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v12, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->getTimestamp()Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v12, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->sync_time:J

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->getTag()Ljava/lang/String;

    move-result-object v15

    sget-boolean v23, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v23, :cond_9

    if-eqz v15, :cond_9

    invoke-static {v15}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNameWithNormalNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v23, "DownloadFolderCommand"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "SOCIAL_STORY :  response name is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", its phonenumber : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v13}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->setOwnerName(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->setOwnerNumber(Ljava/lang/String;)V

    :cond_9
    const-string/jumbo v23, "DownloadFolderCommand"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "item :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v22, "Gallery_Performance"

    const-string/jumbo v23, "It takes  %d ms in making candidates."

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v20

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

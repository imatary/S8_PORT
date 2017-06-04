.class public abstract Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;
.super Ljava/lang/Object;
.source "DownloadCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;,
        Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadCommand"


# instance fields
.field mCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentChannelId:I

.field final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field mIsGifDownload:Z

.field mIsRequestNoti:Z

.field private mLatestFileThumbPath:Ljava/lang/String;

.field final mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

.field mSenderDuid:Ljava/lang/String;

.field private mSenderFileCount:I

.field private mSenderNumber:Ljava/lang/String;

.field final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field private final mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

.field final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

.field private mSyncTime:J


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mIsGifDownload:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->processEvent(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderFileCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mLatestFileThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSyncTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    return-object v0
.end method

.method private processEvent(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;)V
    .locals 7

    iget-object v0, p1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;->mPath:Ljava/lang/String;

    iget-wide v2, p1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;->timestamp:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->updateCMHTable(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v4, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "SHARE_EVENT_ITEM_UNIQUE_PATH"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v6, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;->CREATE_BY_CONTENT_AND_SEARCH:Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;

    invoke-direct {v4, v5, v1, v6}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->excute()V

    :cond_0
    return-void
.end method

.method private updateCMHTable(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;Ljava/lang/String;J)Z
    .locals 37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "DownloadCommand"

    const-string/jumbo v7, "updateCMHTable : ugci is null or empty "

    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v33, 0x0

    :goto_0
    return v33

    :cond_1
    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ugci"

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " = "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "story_id"

    aput-object v8, v6, v7

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "DownloadCommand"

    invoke-static/range {v4 .. v10}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    if-eqz v22, :cond_d

    const/16 v21, 0x0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    :cond_2
    if-eqz v21, :cond_3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCurrentChannelId:I

    :cond_3
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_8

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCandidates:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;->mOriginalPath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    if-nez v24, :cond_6

    const-string/jumbo v4, "DownloadCommand"

    const-string/jumbo v7, "fileInfo is null!!"

    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v33, 0x0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    :cond_6
    :try_start_1
    const-string/jumbo v4, "/channel/channelalbum"

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->getInstance()Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    if-nez v5, :cond_7

    const/16 v33, 0x0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->getDateTime(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCurrentChannelId:I

    move-object/from16 v0, v24

    iget-object v11, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->mMimeType:Ljava/lang/String;

    const/4 v14, -0x1

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getFileSize()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v15

    move-object/from16 v9, p2

    invoke-virtual/range {v5 .. v15}, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;->getShareEventItem(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JII)Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move-result-object v26

    const-string/jumbo v4, "DownloadCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mediaItems : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v4, :cond_8

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getOwnerName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getOwnerNumber()Ljava/lang/String;

    move-result-object v30

    new-instance v7, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    if-eqz v30, :cond_a

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object/from16 v0, v29

    invoke-direct {v7, v0, v4}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderNumber:Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderNumber:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderFileCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderFileCount:I

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v14

    const-string/jumbo v4, "DownloadCommand"

    const-string/jumbo v7, "channel updated"

    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCurrentChannelId:I

    invoke-static {v4, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelAllInfo(Landroid/content/Context;I)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    move-result-object v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-static {v4, v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->addChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/util/ArrayList;)Z

    move-result v33

    if-eqz v33, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getSyncTime()J

    move-result-wide v8

    cmp-long v4, v8, p3

    if-gez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCurrentChannelId:I

    move/from16 v16, v0

    const-string/jumbo v17, "sync_time"

    move-wide/from16 v18, p3

    invoke-virtual/range {v14 .. v19}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelLongColumn(Landroid/content/Context;ILjava/lang/String;J)Z

    move-result v31

    const-string/jumbo v4, "DownloadCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set time stamp success: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v33, :cond_c

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSyncTime:J

    cmp-long v4, v8, p3

    if-gez v4, :cond_b

    const-string/jumbo v4, "DownloadCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SOCIAL_STORY : updateCMHTable - mSyncTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSyncTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", time_stamp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSyncTime:J

    const/16 v25, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v32

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_b

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mLatestFileThumbPath:Ljava/lang/String;

    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v4, v30

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCurrentChannelId:I

    const-string/jumbo v8, "notify_status"

    const/4 v9, 0x0

    invoke-virtual {v14, v4, v7, v8, v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_d
    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_4
    const/16 v33, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v23

    :try_start_3
    const-string/jumbo v4, "DownloadCommand"

    const-string/jumbo v7, "exception occurred processEvent"

    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_4

    :catchall_0
    move-exception v4

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4
.end method


# virtual methods
.method public excute()V
    .locals 6

    const-string/jumbo v3, "DownloadCommand"

    const/4 v4, 0x2

    const-string/jumbo v5, "excute"

    invoke-static {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->getFiles()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCandidates:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderDuid:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderDuid:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderNumber:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "DownloadCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "download ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mIsGifDownload:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setDownloadCandidates(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mIsGifDownload:Z

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setIsGifDownload(Z)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v5, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->download(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    :goto_2
    return-void

    :cond_3
    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;-><init>()V

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->onDownloadCompleted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "DownloadCommand"

    const-string/jumbo v4, "cancel download"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->excute()V

    goto :goto_2
.end method

.method protected abstract getFiles()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public onDownloadCompleted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "DownloadCommand"

    const-string/jumbo v4, "onDownloadCompleted : Download completed and saved"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setShareID(J)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mIsGifDownload:Z

    if-eqz v3, :cond_2

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mIsGifDownload:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setIsGifDownload(Z)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setDownloadCandidates(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v1, v5, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->download(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;-><init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public onDownloadStarted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getShareId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "DownloadCommand"

    const-string/jumbo v3, "onDownloadStarted"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$2;-><init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 2

    const-string/jumbo v0, "DownloadCommand"

    const-string/jumbo v1, "onError occurred while Download"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V

    const-string/jumbo v0, "Canceled"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Paused"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;-><init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onFileDownloaded(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 10

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getContentUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DownloadCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onFileDownloaded : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v6, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->sync_time:J

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;-><init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$1;)V

    invoke-virtual {v1, v0, v4, v6, v7}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;->setData(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v8, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$1;

    invoke-direct {v8, p0, v1}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;)V

    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgress(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    return-void
.end method

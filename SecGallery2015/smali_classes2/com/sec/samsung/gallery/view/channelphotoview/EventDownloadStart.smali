.class public Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;
.super Ljava/lang/Object;
.source "EventDownloadStart.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventDownloadStart"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventname:Ljava/lang/String;

.field private final mGroupId:Ljava/lang/String;

.field private final mRequestNoti:Z

.field private final mSenderDuid:Ljava/lang/String;

.field private final mUseMobileData:Z

.field private sync_time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->sync_time:J

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mGroupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mEventname:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mUseMobileData:Z

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mRequestNoti:Z

    iput-object p6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mSenderDuid:Ljava/lang/String;

    return-void
.end method

.method private startGetFolderInfo()V
    .locals 14

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mGroupId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ugci"

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "sync_time"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "story_id"

    aput-object v5, v2, v4

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "EventDownloadStart"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    if-eqz v12, :cond_2

    move v3, v11

    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->sync_time:J

    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v11

    :cond_3
    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "is_visible"

    invoke-static {v0, v3, v2, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    :cond_4
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mGroupId:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mEventname:Ljava/lang/String;

    iget-wide v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->sync_time:J

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mUseMobileData:Z

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mRequestNoti:Z

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->mSenderDuid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->startReceivingEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v3, v11

    :goto_3
    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move v3, v11

    :goto_4
    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->startGetFolderInfo()V

    return-void
.end method

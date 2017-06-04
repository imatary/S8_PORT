.class public Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;
.super Ljava/lang/Object;
.source "ShareNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;
    }
.end annotation


# static fields
.field private static final GALLERY_GROUP_KEY:Ljava/lang/String; = "gallery_group_key"

.field private static final GALLERY_SOCIAL_GROUP_SUMMARY_NOTI_ID:I = 0x1

.field private static final GALLERY_SUMMARY_NOTI:Ljava/lang/String; = "gallery_summary_noti"

.field private static final TAG:Ljava/lang/String; = "ShareNotiManager"

.field public static final UPLOADING_CANCELLED_STATE:I = 0x1

.field public static final UPLOADING_STATE:I = 0x0

.field public static final UPLOAINDG_COMPLETED_STATE:I = 0x2

.field public static final UPLOAINDG_FAILED_STATE:I = 0x3

.field public static final UPLOAINDG_PAUSED_STATE:I = 0x4

.field private static instance:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

.field private static final state_title:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->state_title:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a04ad
        0x7f0a0867
        0x7f0a01ad
        0x7f0a04ae
        0x7f0a04a4
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private createAcceptIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "event-view-share-notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "event-view-accept-event"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "event-view-share-groupid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "event-view-share-req-id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "event-view-share-eventname"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "event-view-empty-channel-id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.gallery3d"

    const-string/jumbo v2, "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private createDeclineIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.FIND_GALLERY_CHANNEL_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "event-view-empty-channel-id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "event-view-share-groupid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "event-view-share-eventname"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private createDeleteIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.REFRESH_GALLERY_CHANNEL_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "refresh_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private createGroupSummaryNotification()V
    .locals 14

    const v13, 0x7f0202e2

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v8}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v1, 0x0

    array-length v6, v4

    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v8, v4, v1

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "gallery_group_key"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "ShareNotiManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SOCIAL_STORY : createGroupSummaryNotification notificationCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    const-string/jumbo v8, "ShareNotiManager"

    const-string/jumbo v9, "SOCIAL_STORY : createGroupSummaryNotification create Noti Group Summary"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v9, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "gallery_group_key"

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [J

    fill-array-data v9, :array_0

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v9, 0x7f1000dd

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_1
    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createOpenNotificationIntent()Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x8000000

    invoke-static {v8, v11, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v9, "gallery_summary_noti"

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v8, v9, v12, v10}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_2
    return-void

    :cond_3
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNotificationIcon:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v9, 0x7f1000d9

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/high16 v8, 0x7f030000

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private createOpenDetailViewIntent(IILjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 7

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "refresh_notification"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "article_id"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "show_like_view"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "show_comment_view"

    invoke-virtual {v0, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "story_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "media-set-position"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "KEY_IS_FROM_GALLERY_NOTIFCATION_VIEW"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "*/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v5, "fileid"

    const-string/jumbo v6, "mime_type"

    invoke-static {v3, v4, v5, p2, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemStringColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    const-string/jumbo v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SHARE_EVENT_IMAGE_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v3, "KEY_MEDIA_ITEM_PATH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/channel/channelalbum/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v3, "com.sec.android.gallery3d"

    const-string/jumbo v4, "com.sec.android.gallery3d.app.GalleryActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_2
    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SHARE_EVENT_VIDEO_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private createOpenNotificationIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "receive-story-from-notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "refresh_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "com.sec.android.gallery3d"

    const-string/jumbo v2, "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private createOpenStoryDetailViewIntent(IIZ)Landroid/content/Intent;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "refresh_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "start-story-detail-view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "story_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "media-set-position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "member_joined"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.gallery3d"

    const-string/jumbo v2, "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private createSharedEventIntent(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.gallery3d"

    const-string/jumbo v2, "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "event-view-share-notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "event-view-share-groupid"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "event-view-share-eventname"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "event-view-empty-channel-id"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getContextText(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0a04dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0a04db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getContextTile(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->state_title:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->instance:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->instance:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->instance:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLargeIconFromChannelId(I)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/channel/channelalbum/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getLargeIconFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getLargeIconFromContact(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactPhotoByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f020083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method private getLargeIconFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b04fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int v5, v3, v0

    int-to-float v2, v5

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private wakeUpForNotification()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v2, 0x1000001a

    const-string/jumbo v3, "wakeUpForNotification_Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 3

    const-string/jumbo v0, "ShareNotiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancel shared event id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->refreshNotification()V

    :cond_0
    return-void
.end method

.method public notifyChoice(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    if-nez p2, :cond_0

    const-string/jumbo v12, "ShareNotiManager"

    const-string/jumbo v13, "Cannot get group id"

    invoke-static {v12, v13}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->wakeUpForNotification()V

    sget-boolean v12, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v12, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createGroupSummaryNotification()V

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getLargeIconFromContact(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct/range {p0 .. p4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createAcceptIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct/range {p0 .. p3}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createDeclineIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createOpenNotificationIntent()Landroid/content/Intent;

    move-result-object v14

    const/high16 v15, 0x8000000

    invoke-static {v12, v13, v14, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v12}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v6

    new-instance v12, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x3

    new-array v13, v13, [J

    fill-array-data v13, :array_0

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0433

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v14, 0x7f0a034a

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p5, v15, v16

    const/16 v16, 0x1

    aput-object p3, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    new-instance v13, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v13}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a034a

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p5, v16, v17

    const/16 v17, 0x1

    aput-object p3, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a00df

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0348

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    sget-object v12, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v12}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v13, 0x7f1000dd

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v12, 0x7f0202e2

    invoke-virtual {v10, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_1
    sget-boolean v12, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "gallery_group_key"

    invoke-virtual {v10, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createDeleteIntent()Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v7, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v12, "ShareNotiManager"

    const-string/jumbo v13, "SOCIAL_STORY : notifyState set Delete Intent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_3
    sget-object v12, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNotificationIcon:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v12}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v12

    if-eqz v12, :cond_4

    const v12, 0x7f0202e2

    invoke-virtual {v10, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v13, 0x7f1000d9

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/high16 v12, 0x7f030000

    invoke-virtual {v10, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    :array_0
    .array-data 8
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public notifyProgress(Lcom/sec/android/gallery3d/eventshare/SharedEvent;I)V
    .locals 11

    const-string/jumbo v6, "ShareNotiManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyProgress shared event id :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v6, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createGroupSummaryNotification()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createSharedEventIntent(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Landroid/content/Intent;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v7

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0a04ad

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/16 v7, 0x64

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const-string/jumbo v7, "%d%%"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v7, 0x7f1000dd

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v6, 0x7f0202e2

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_0
    sget-boolean v6, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "gallery_group_key"

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createDeleteIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v6, "ShareNotiManager"

    const-string/jumbo v7, "SOCIAL_STORY : notifyProgress set Delete Intent"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v7

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_2
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNotificationIcon:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f0202e2

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_3
    const/high16 v6, 0x7f030000

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public notifySocialInfo(Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 18

    if-nez p3, :cond_0

    const-string/jumbo v3, "ShareNotiManager"

    const-string/jumbo v4, "Cannot get group id"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->wakeUpForNotification()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createGroupSummaryNotification()V

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v11

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "gallery_group_key"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v16

    const/4 v10, 0x0

    move-object/from16 v17, p4

    const/4 v14, 0x0

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$1;->$SwitchMap$com$sec$android$gallery3d$eventshare$utils$ShareNotificationManager$SocialPushType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    move/from16 v0, p5

    invoke-static {v3, v0, v10, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual/range {v16 .. v17}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f1000dd

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v3, 0x7f0202e2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createDeleteIntent()Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v12, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v3, v0, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getLargeIconFromChannelId(I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createOpenStoryDetailViewIntent(IIZ)Landroid/content/Intent;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0237

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p6, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    move/from16 v0, p8

    invoke-static {v3, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemFilePathFromFileId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getLargeIconFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createOpenStoryDetailViewIntent(IIZ)Landroid/content/Intent;

    move-result-object v10

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a033b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p6, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    move/from16 v0, p8

    invoke-static {v3, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemFilePathFromFileId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getLargeIconFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p8

    move-object/from16 v6, p7

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createOpenDetailViewIntent(IILjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v10

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00aa

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p6, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    move/from16 v0, p8

    invoke-static {v3, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemFilePathFromFileId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getLargeIconFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p8

    move-object/from16 v6, p7

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createOpenDetailViewIntent(IILjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v10

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0242

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p6, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :cond_4
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNotificationIcon:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f0202e2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f1000d9

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/high16 v3, 0x7f030000

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_2

    nop

    :array_0
    .array-data 8
        0x1
        0x1
        0x1
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyState(Lcom/sec/android/gallery3d/eventshare/SharedEvent;I)V
    .locals 10

    const-string/jumbo v7, "ShareNotiManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notifyState shared event id :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createGroupSummaryNotification()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createSharedEventIntent(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Landroid/content/Intent;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v8

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getContextTile(I)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const v8, 0x7f1000dd

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v7, 0x7f0202e2

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getContextText(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    sget-boolean v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "gallery_group_key"

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->createDeleteIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v7, "ShareNotiManager"

    const-string/jumbo v8, "SOCIAL_STORY : notifyState set Delete Intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v7, 0x1

    if-ne p2, v7, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->cancel(I)V

    :goto_1
    return-void

    :cond_3
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNotificationIcon:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f0202e2

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_4
    const/high16 v7, 0x7f030000

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v8

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1
.end method

.method public refreshNotification()V
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v7, "ShareNotiManager"

    const-string/jumbo v8, "SOCIAL_STORY : refreshNotification"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "gallery_group_key"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    const-string/jumbo v7, "gallery_summary_noti"

    aget-object v8, v4, v1

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v6, v4, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v9, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v8, "gallery_summary_noti"

    invoke-virtual {v7, v8, v9}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.class public Lcom/sec/android/gallery3d/eventshare/receiver/ChannelNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChannelNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string/jumbo v5, "com.samsung.android.intent.action.FIND_GALLERY_CHANNEL_NOTIFICATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "event-view-share-req-id"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "event-view-empty-channel-id"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v5, "event-view-share-groupid"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "ChannelNotificationReceiver"

    const-string/jumbo v6, "Reject > Accept > in upsm"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0a0018

    invoke-static {p1, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v4, :cond_3

    const-string/jumbo v5, "event-view-share-eventname"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v0, v3, v1}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->startSharingEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->cancel(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v0, v3, v5}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->deleteMember(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xc8

    invoke-static {p1, v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->updateEventBadgeCount(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "com.samsung.android.intent.action.REFRESH_GALLERY_CHANNEL_NOTIFICATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->refreshNotification()V

    goto :goto_0
.end method

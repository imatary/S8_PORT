.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;
.super Ljava/lang/Object;
.source "GalleryNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$AsyncDrawable;
    }
.end annotation


# static fields
.field private static final EVENT_NOTIFICATION_AGIF:Ljava/lang/String;

.field private static final EVENT_NOTIFICATION_COLLAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NotificationHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_COLLAGE_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->EVENT_NOTIFICATION_COLLAGE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->ANIMATED_GIF_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->EVENT_NOTIFICATION_AGIF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$2;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$2;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static getActivityEventBadgeCount(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "event_activity_notification_badge_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getContentEventBadgeCount(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "event_content_notification_badge_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getDestinationAlbumPath(Landroid/content/Context;Landroid/os/Handler;I)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->VIDEO_COLLAGE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->COLLAGE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->EVENT_NOTIFICATION_COLLAGE:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->AGIF:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->EVENT_NOTIFICATION_AGIF:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "NotificationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong story type ! > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0a048e

    invoke-static {p0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/16 v1, 0x70

    const-wide/16 v2, 0x32

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTotalEventBadgeCount(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "event_notification_badge_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static saveHiddenCoverFile(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;I)V
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const-string/jumbo v0, "NotificationHelper"

    const-string/jumbo v1, "srcFilePath is a Null or Empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a048e

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p0, p3, p4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->getDestinationAlbumPath(Landroid/content/Context;Landroid/os/Handler;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;

    move-object v1, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    const-string/jumbo v1, "saveHiddenCoverFile"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static setActivityEventBadgeCount(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "event_activity_notification_badge_count"

    if-lez p1, :cond_0

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static setContentEventBadgeCount(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "event_content_notification_badge_count"

    if-lez p1, :cond_0

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static setEventBadgeCountAll(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    :goto_0
    if-lez p2, :cond_1

    :goto_1
    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->setTotalEventBadgeCount(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->setContentEventBadgeCount(Landroid/content/Context;I)V

    invoke-static {p0, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->setActivityEventBadgeCount(Landroid/content/Context;I)V

    return-void

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_1
.end method

.method public static setTotalEventBadgeCount(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "event_notification_badge_count"

    if-lez p1, :cond_0

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static updateEventBadgeCount(Landroid/content/Context;I)V
    .locals 6

    invoke-static {p0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v1

    if-lez p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$3;

    invoke-direct {v2, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$3;-><init>(Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;)V

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(I)V

    goto :goto_0
.end method

.method public static updateEventBadgeCountOnTab(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.gallery3d.eventshare.UPDATE_TAB_BADGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

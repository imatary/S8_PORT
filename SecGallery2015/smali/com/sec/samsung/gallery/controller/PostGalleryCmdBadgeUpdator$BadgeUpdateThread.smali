.class Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;
.super Ljava/lang/Thread;
.source "PostGalleryCmdBadgeUpdator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BadgeUpdateThread"
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, "BadgeUpdateThread"

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;->setName(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private updateBadgeCountData(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryNotificationInterface;->getGalleryNotificationCount(Landroid/content/Context;Z)I

    move-result v0

    invoke-static {p1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryNotificationInterface;->getGalleryNotificationNewActivityCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->setEventBadgeCountAll(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryNotificationInterface;->getGalleryNotificationCount(Landroid/content/Context;Z)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->setTotalEventBadgeCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private updateBadgeCountView(Landroid/app/Activity;)V
    .locals 2

    move-object v1, p1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->refreshEventBadge()V

    invoke-static {}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->updateEventBadgeCountOnTab(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string/jumbo v1, "PostGallCmdBadgeUpdator"

    const-string/jumbo v2, "BadgeUpdateThread run"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string/jumbo v1, "PostGallCmdBadgeUpdator"

    const-string/jumbo v2, "Can\'t update badge count; activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;->updateBadgeCountData(Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;->updateBadgeCountView(Landroid/app/Activity;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

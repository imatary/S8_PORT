.class public Lcom/sec/android/gallery3d/eventshare/event/EventShareService;
.super Lcom/sec/android/gallery3d/eventshare/ShareService;
.source "EventShareService.java"


# instance fields
.field private mSharedEventManager:Lcom/sec/android/gallery3d/eventshare/EventManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "EventShareService"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/ShareService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/gallery3d/eventshare/ShareService;->onCreate()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->setUp(Landroid/content/Context;)V

    const v0, 0x7f0c015d

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareService;->setTheme(I)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/EventShareService;->mServiceHandler:Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/EventShareService;->mSharedEventManager:Lcom/sec/android/gallery3d/eventshare/EventManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/EventShareService;->mSharedEventManager:Lcom/sec/android/gallery3d/eventshare/EventManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventManager;->start()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/EventShareService;->mSharedEventManager:Lcom/sec/android/gallery3d/eventshare/EventManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/EventShareService;->mSharedEventManager:Lcom/sec/android/gallery3d/eventshare/EventManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventManager;->stop()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/eventshare/ShareService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/EventShareService;->mSharedEventManager:Lcom/sec/android/gallery3d/eventshare/EventManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/EventShareService;->mSharedEventManager:Lcom/sec/android/gallery3d/eventshare/EventManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->process(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

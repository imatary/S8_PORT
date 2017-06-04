.class public abstract Lcom/sec/android/gallery3d/eventshare/ShareService;
.super Landroid/app/Service;
.source "ShareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field protected volatile mServiceHandler:Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mName:Ljava/lang/String;

    return-void
.end method

.method private onInit(Landroid/content/Intent;I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mServiceHandler:Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mServiceHandler:Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ShareService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mServiceLooper:Landroid/os/Looper;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;-><init>(Lcom/sec/android/gallery3d/eventshare/ShareService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mServiceHandler:Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/ShareService;->mThread:Landroid/os/HandlerThread;

    return-void
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/sec/android/gallery3d/eventshare/ShareService;->onInit(Landroid/content/Intent;I)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

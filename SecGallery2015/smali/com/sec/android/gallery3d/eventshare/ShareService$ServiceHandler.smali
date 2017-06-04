.class final Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;
.super Landroid/os/Handler;
.source "ShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/ShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/ShareService;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/ShareService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;->this$0:Lcom/sec/android/gallery3d/eventshare/ShareService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;->this$0:Lcom/sec/android/gallery3d/eventshare/ShareService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/eventshare/ShareService;->onHandleIntent(Landroid/content/Intent;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/ShareService$ServiceHandler;->this$0:Lcom/sec/android/gallery3d/eventshare/ShareService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/ShareService;->stopSelf(I)V

    :cond_0
    return-void
.end method

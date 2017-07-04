.class Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$3;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceiverCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v1, "BroadcastReceiverCmd"

    const-string/jumbo v2, "Talkback_Toggle Receive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTalkBackEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->access$000(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchGenericMotionCancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/GLView;->onGenericMotionCancel()V

    goto :goto_0
.end method

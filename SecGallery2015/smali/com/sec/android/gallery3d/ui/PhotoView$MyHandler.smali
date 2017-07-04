.class Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;
.super Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/PhotoView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->cancelScale()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2802(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z

    :cond_0
    :goto_0
    return-void

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2900(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3000(Lcom/sec/android/gallery3d/ui/PhotoView;I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$400(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v2

    and-int/lit8 v2, v2, -0x5

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$402(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3100(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3200(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3300(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3400(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/ProgressSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3302(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getLevelCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3302(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->hidePreDisplayScreen()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "GalleryOnLockscreen"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3500(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3600(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->isMoreInfoOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->isFastOptionViewShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1100(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v1

    const/16 v2, 0xe02

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setSystemUiVisibility(I)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3700(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/BoostHelper;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/util/BoostHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/BoostHelper;->acquireAGIFBoost()V

    goto/16 :goto_0

    :sswitch_c
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/BoostHelper;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/util/BoostHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/BoostHelper;->releaseAGIFBoost()V

    goto/16 :goto_0

    :sswitch_d
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/BoostHelper;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/util/BoostHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/BoostHelper;->releaseFlickBoost()V

    goto/16 :goto_0

    :sswitch_e
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3800()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->setHideVideoIcon(Z)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3900(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0x69 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6b -> :sswitch_a
        0x6c -> :sswitch_b
        0x6d -> :sswitch_c
        0x6e -> :sswitch_e
        0x6f -> :sswitch_f
        0x70 -> :sswitch_d
    .end sparse-switch
.end method

.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$41;
.super Landroid/content/BroadcastReceiver;
.source "ChannelViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$41;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "ChannelViewState"

    const-string/jumbo v2, "EAM Receive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$41;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$17900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_CAMERA"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$41;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$17800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

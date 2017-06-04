.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->addGLIdleListener()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateOptionMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public onGLIdle()V
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNeedIdleProcess:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$14400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    const/4 v2, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNeedIdleProcess:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$14402(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$14500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;->setBeamListener()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->enableResStroke(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$14600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->updateOptionMenu()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$14700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/view/Menu;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkNeedToUpdateApk(Landroid/content/Context;Landroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseEventShare:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$14800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelAlbumMgr:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$14900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->clearGarbageHiddenFolder(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

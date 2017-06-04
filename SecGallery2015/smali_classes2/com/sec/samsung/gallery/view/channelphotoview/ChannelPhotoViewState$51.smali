.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$51;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->addGLIdleListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$51;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGLIdle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$51;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNeedIdleProcess:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$51;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNeedIdleProcess:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22002(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$51;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;->setBeamListener()V

    goto :goto_0
.end method

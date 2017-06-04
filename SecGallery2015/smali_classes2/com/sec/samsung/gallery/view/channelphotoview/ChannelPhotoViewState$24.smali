.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->onViewInitialize()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateWithId(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v4

    const-string/jumbo v5, "ugci"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->refresh(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->needRefreshFriendsBar()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->resetSharedFriendsBar()V
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->stopShareRetryProgress()V

    goto :goto_0
.end method

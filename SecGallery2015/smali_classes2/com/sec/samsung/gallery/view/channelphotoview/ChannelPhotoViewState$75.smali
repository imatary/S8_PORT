.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createFailedToUploadDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$30100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$30200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->setOnUploading(Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->resetSharedFriendsBar()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->stopShareProgress(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$30300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v3

    const-string/jumbo v4, "is_shared"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$30400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v3

    const-string/jumbo v4, "ugci"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$30500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->hostDeleteGroup(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$30600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->cancelRetry(Landroid/content/Context;I)V

    goto :goto_0
.end method

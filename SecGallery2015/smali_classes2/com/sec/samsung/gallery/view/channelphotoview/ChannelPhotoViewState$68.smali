.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createUploadCancelDialog(ZI)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->stopShareProgress(Z)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$28800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateWithId(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/EventState$State;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$28900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->cancelWifiWait(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$29000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v4

    const-string/jumbo v5, "is_shared"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$29100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->stopUploading(Landroid/content/Context;I)V

    const-string/jumbo v3, "ChannelPhotoViewState"

    const-string/jumbo v4, "Stop uploading..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$29200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->stopSendingEvent(Landroid/content/Context;I)V

    const-string/jumbo v3, "ChannelPhotoViewState"

    const-string/jumbo v4, "Stop event sharing..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateWithId(I)I

    move-result v2

    sget-object v5, Lcom/sec/android/gallery3d/eventshare/EventState$State;->FAILED_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/EventState$State;->ordinal()I

    move-result v5

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "3086"

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0186

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createFailedToUploadDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v3, v7, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->pauseUploading(Landroid/content/Context;I)V

    const-string/jumbo v5, "ChannelPhotoViewState"

    const-string/jumbo v6, "Stop event sharing..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getUploadTotalCount()I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createUploadCancelDialog(ZI)V
    invoke-static {v5, v0, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;ZI)V

    goto :goto_0
.end method

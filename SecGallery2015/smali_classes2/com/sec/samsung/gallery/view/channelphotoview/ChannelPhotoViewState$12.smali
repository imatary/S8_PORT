.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$12;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange(III)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentLayout:I
    invoke-static {v1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$10202(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$10300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const-string/jumbo v2, "eventphtoViewColCnt"

    invoke-static {v1, v2, p2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$10400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$10500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x7f0a07c7

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$10600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const-string/jumbo v2, "StoryViewMode"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailViewInUIThread(II)V
    invoke-static {v1, p2, p3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$10700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;II)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setThumbReslevel(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

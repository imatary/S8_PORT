.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$27;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLikeCountClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLikeCountClick(I)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$7400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->LIKE_COUNT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getChannelCommentActivityState()Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$17200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;->IDLE:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    sget-object v2, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;->START_REQUESTED:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setChannelCommentsActivityState(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$17300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$7400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3032"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

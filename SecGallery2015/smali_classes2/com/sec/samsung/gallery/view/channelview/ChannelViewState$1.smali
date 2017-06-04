.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    const/4 v6, 0x0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # operator++ for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRefreshUpdateCount:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$108(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRefreshUpdateCount:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_8

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->removeMessages(I)V

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    iput v9, v5, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # operator++ for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRefreshUpdateCount:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$108(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I

    const-wide/16 v8, 0x64

    invoke-virtual {p0, v5, v8, v9}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # operator++ for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRefreshUpdateCount:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$108(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v7

    if-ne v7, v2, :cond_7

    move v0, v3

    :cond_6
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    move-object v1, v6

    check-cast v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRefreshUpdateCount:I
    invoke-static {v7, v9}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$102(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;I)I

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsStartPhotoViewNewEvent:Z
    invoke-static {v7, v9}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$202(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoViewFromClick(II)Ljava/lang/Boolean;
    invoke-static {v7, v0, v9}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;II)Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRefreshUpdateCount:I
    invoke-static {v7, v9}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$102(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;I)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setActionbarBackground()V
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    const/4 v8, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setActionBarMenuColor(Z)V
    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v8

    # setter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsEventSharingServiceOn:Z
    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$702(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsEventSharingServiceOn:Z
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkToRestoreEventShareInvitePush()V
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->restoreEventFromServer()V
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->addMemberToGuidGroup()V
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    :cond_9
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateEventShareStatus()V
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

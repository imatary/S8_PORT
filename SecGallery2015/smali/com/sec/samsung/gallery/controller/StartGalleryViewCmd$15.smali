.class Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;
.super Ljava/lang/Object;
.source "StartGalleryViewCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startDeviceCogMode(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

.field final synthetic val$deviceCogTabIndex:I

.field final synthetic val$launchStateId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    iput p2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->val$deviceCogTabIndex:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->val$launchStateId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v3

    sget-object v4, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v4

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    :cond_0
    iget v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->val$deviceCogTabIndex:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;)V

    if-eqz v0, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "DC_LAUNCH_STATE_ID"

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->val$launchStateId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForLaunch()V

    :goto_1
    return-void

    :pswitch_0
    const-class v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto :goto_0

    :pswitch_1
    const-class v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto :goto_0

    :pswitch_2
    const-class v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$15;->val$launchStateId:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

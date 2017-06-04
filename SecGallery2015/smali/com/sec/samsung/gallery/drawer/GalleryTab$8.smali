.class Lcom/sec/samsung/gallery/drawer/GalleryTab$8;
.super Ljava/lang/Thread;
.source "GalleryTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/GalleryTab;->checkAllToUpdateDynamicTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "GalleryTab"

    const-string/jumbo v4, "checkAllToUpdateDynamicTabs"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$2200(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->checkMTP()Z
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$2300(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Z

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsTabAdded:[Z
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1900(Lcom/sec/samsung/gallery/drawer/GalleryTab;)[Z

    move-result-object v3

    const/4 v4, 0x3

    aget-boolean v3, v3, v4

    if-eq v1, v3, :cond_3

    const-string/jumbo v3, "GalleryTab"

    const-string/jumbo v4, "update dynamic tabs"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "key_check_mtp"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v5, v2, Landroid/os/Message;->what:I

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$2400(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$2400(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$2400(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1800(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "GalleryTab"

    const-string/jumbo v4, "photo view is shown but mtp is not activated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v6, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$2400(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$2400(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$2400(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

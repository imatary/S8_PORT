.class Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$9;
.super Ljava/lang/Object;
.source "StartGalleryViewCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startChannelViewModeMaxGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "KEY_IS_MAX_EVENT_GROUP"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->FEATURE_USE_TAB_UI:Z
    invoke-static {}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    :cond_0
    return-void
.end method

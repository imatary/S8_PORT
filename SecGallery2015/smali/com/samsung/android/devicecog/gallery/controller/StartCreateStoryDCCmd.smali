.class public Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartCreateStoryDCCmd.java"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private getStateID(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AddToStory"

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "CreateStory"

    goto :goto_0
.end method

.method private handleDCCreateStory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    const-string/jumbo v2, "enable_name"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->prepareDCCreateChannel(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "duplicate"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateStoryState;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v3, p1}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateStoryState;-><init>(ZZLjava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->prepareCreateChannelDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v2}, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;->getStateID(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "CreateStory"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateStoryState;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v2}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateStoryState;-><init>(ZZLjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v3, p0, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x1

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;->handleDCCreateStory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

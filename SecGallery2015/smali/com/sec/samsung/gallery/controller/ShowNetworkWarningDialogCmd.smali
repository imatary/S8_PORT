.class public Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowNetworkWarningDialogCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

.field private mPreferenceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private handleNetworkWarningDialog()V
    .locals 5

    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    aput-object v3, v1, v2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3, v0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/core/Event;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v2, p0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->showDialog()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mPreferenceType:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 2

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mPreferenceType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->handleNetworkWarningDialog()V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/ActivityState;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->dismissDialog()V

    return-void
.end method

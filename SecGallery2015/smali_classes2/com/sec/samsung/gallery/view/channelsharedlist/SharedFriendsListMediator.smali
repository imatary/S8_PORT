.class public Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "SharedFriendsListMediator.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/GalleryEvent$OnPauseListener;
.implements Lcom/sec/android/gallery3d/app/GalleryEvent$OnResumeListener;


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mChannelId:I

.field private mIsEnabled:Z

.field private mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mChannelId:I

    return-void
.end method

.method private dismissSharedFriendsListView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->isSharedListEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SHARED_FRIENDS_LIST_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->unregisterListeners()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->getViewComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private registerListeners()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/ActivityState;->registerOnPauseListener(Lcom/sec/android/gallery3d/app/GalleryEvent$OnPauseListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/ActivityState;->registerOnResumeListener(Lcom/sec/android/gallery3d/app/GalleryEvent$OnResumeListener;)V

    :cond_0
    return-void
.end method

.method private showSharedFriendsListView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->registerListeners()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mChannelId:I

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;-><init>(I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->setContext(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->reloadList()V

    return-void
.end method

.method private unregisterListeners()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/ActivityState;->unregisterOnPauseListener(Lcom/sec/android/gallery3d/app/GalleryEvent$OnPauseListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/ActivityState;->unregisterOnResumeListener(Lcom/sec/android/gallery3d/app/GalleryEvent$OnResumeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 0

    return-void
.end method

.method public isSharedListEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mIsEnabled:Z

    return v0
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->refresh()V

    :cond_0
    return-void
.end method

.method public reloadList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->reloadList()V

    :cond_0
    return-void
.end method

.method public setButtonText(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->setButtonText(Z)V

    :cond_0
    return-void
.end method

.method public setSharedListEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->showSharedFriendsListView()V

    :goto_1
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mIsEnabled:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->mSharedListView:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->destroyView()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->dismissSharedFriendsListView()V

    goto :goto_1
.end method

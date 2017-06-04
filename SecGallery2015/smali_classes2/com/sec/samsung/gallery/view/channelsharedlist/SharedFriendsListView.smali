.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;
.super Ljava/lang/Object;
.source "SharedFriendsListView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SharedFriendsListView"


# instance fields
.field private final mChannelID:I

.field private mContext:Landroid/content/Context;

.field private mGalleryActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mIsSender:Z

.field private mRootView:Landroid/view/View;

.field private mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

.field private mStopButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mIsSender:Z

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mChannelID:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->showStopSharingDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->stopSharing()V

    return-void
.end method

.method private createLayout()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400f9

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mRootView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->setListView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mRootView:Landroid/view/View;

    const v1, 0x7f120243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mStopButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mStopButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView$2;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setListView(Landroid/view/View;)V
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mChannelID:I

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

    const v1, 0x7f120242

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView$1;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showStopSharingDialog()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mGalleryActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mIsSender:Z

    if-eqz v4, :cond_0

    const v3, 0x7f0a00ed

    const v2, 0x7f0a042d

    const v1, 0x7f0a00e0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView$3;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView$3;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    const v4, 0x7f0a0080

    new-instance v5, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView$4;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView$4;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v3, 0x7f0a023f

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v2, 0x7f0a042c

    :goto_1
    const v1, 0x7f0a023d

    goto :goto_0

    :cond_1
    const v2, 0x7f0a042b

    goto :goto_1
.end method

.method private stopSharing()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SHARED_FRIENDS_LIST"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroyView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mRootView:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mRootView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SharedFriendsListView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->refresh()V

    :cond_0
    return-void
.end method

.method public reloadList()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->destroyView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->createLayout()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mIsSender:Z

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->setButtonText(Z)V

    return-void
.end method

.method public setButtonText(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mStopButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mIsSender:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mStopButton:Landroid/widget/Button;

    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mStopButton:Landroid/widget/Button;

    const v1, 0x7f0a023e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public setContext(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mGalleryActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListView;->mContext:Landroid/content/Context;

    return-void
.end method

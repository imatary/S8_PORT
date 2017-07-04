.class public Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "SharedFriendsListViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;
    }
.end annotation


# static fields
.field private static final FEATURE_USE_NAVIGATION_BAR:Z

.field public static final KEY_IS_MASTER:Ljava/lang/String; = "is_master"

.field private static final KEY_SELECTION_MODE:Ljava/lang/String; = "selection_mode"

.field private static final KEY_SELECT_LIST:Ljava/lang/String; = "select_list"

.field private static final REQUEST_MULTI_CONTACT_PICK:I = 0xe00

.field private static final TAG:Ljava/lang/String; = "ShredFrindLstViwState"


# instance fields
.field private eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

.field private mChannelID:I

.field private mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mErrorDialog:Landroid/app/Dialog;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mIsMaster:Z

.field private mIsMultiWindow:Z

.field private mIsPenSelectionMode:Z

.field private mListView:Landroid/widget/ListView;

.field private volatile mNeedIdleProcess:Z

.field private final mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field private mRootView:Landroid/view/View;

.field private mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

.field private final mSharedFriendsListViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private phoneNumbers:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->FEATURE_USE_NAVIGATION_BAR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsMaster:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->phoneNumbers:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsPenSelectionMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mNeedIdleProcess:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$9;

    const-string/jumbo v1, "GALLERY_SHARED_FRIENDS_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$9;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mSharedFriendsListViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mNeedIdleProcess:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mNeedIdleProcess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->initListenersForContactListView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->stopSharing()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->ownerLeaveGroup()V

    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->FEATURE_USE_NAVIGATION_BAR:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->updateNavigationBarLayout()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setMultiWindowMode(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->refreshListView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mErrorDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setStateChangeListener()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showErrorDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->addSharingMember(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showNetworkErrorDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsMaster:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->checkSMSMember(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->updateListView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsPenSelectionMode:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsPenSelectionMode:Z

    return p1
.end method

.method private addGLIdleListener()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$1;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$1;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addMarginTopForStatusBar()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mRootView:Landroid/view/View;

    const v3, 0x7f120244

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addSharingMember(Landroid/content/Intent;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    const-string/jumbo v4, "ugci"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->phoneNumbers:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->isCheckAddMember(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->processPickContactResult(Landroid/content/Intent;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->createNlgFromContactPicker(Z)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->refresh()V

    return-void
.end method

.method private checkInvalidNumber([Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    array-length v4, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, p1, v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5, v2}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private checkRequiredPermissions([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkSMSMember(I)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    :cond_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkSelectableMember()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->checkSMSMember(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private createNlgFromContactPicker(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a07bf

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "AddStoryMember"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v1, "Members"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "EnhancedFeatures"

    const-string/jumbo v2, "NotSignIn"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method

.method private deleteMembers()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0340

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "3070"

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    const-string/jumbo v4, "ugci"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    new-instance v12, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v12}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v13, v2, :cond_5

    invoke-virtual {v10, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v10, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    if-nez v14, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    iget-object v15, v14, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, v15}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "+"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, v15}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_3
    if-nez v11, :cond_4

    if-eqz v15, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v12, v2, v3, v0, v11}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->deleteMember(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a07c2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v16

    const-string/jumbo v2, "ContactName"

    iget-object v3, v14, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "Remove"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    move-object/from16 v0, v16

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private enterSelectionMode()V
    .locals 2

    const-string/jumbo v0, "ShredFrindLstViwState"

    const-string/jumbo v1, "enterSelectionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsMaster:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->setSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setActionBar()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method private exitSelectionMode()V
    .locals 2

    const-string/jumbo v0, "ShredFrindLstViwState"

    const-string/jumbo v1, "exitSelectionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->setSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setActionBar()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method private getActionbarOverFlow()Landroid/view/View;
    .locals 8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "action_bar"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0266

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :cond_0
    return-object v2
.end method

.method private getActionbarUpButton()Landroid/widget/ImageButton;
    .locals 12

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "action_bar"

    const-string/jumbo v9, "id"

    const-string/jumbo v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a02b2

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v4, v6, v7}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v6, v2, Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getEasySignUpAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneNumbersByDataID(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    new-array v3, v4, [Landroid/net/Uri;

    const/4 v1, 0x0

    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    aget-object v5, v2, v1

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object v0, p1

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    invoke-direct {p0, v4, v3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->startAddMembers(I[Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private handleDCSelectItem(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->checkSMSMember(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->selectItem(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "MembersSelectedView"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :goto_2
    return-void

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_3

    const v4, 0x7f0a07c1

    :goto_3
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "MembersSelectedView"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_2

    :cond_3
    const v4, 0x7f0a07c0

    goto :goto_3
.end method

.method private handleDeleteGroupPopup()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->isEventOwner()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "3071"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showStopSharingDialog(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a07c4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "DeleteGroupPopUp"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    const-string/jumbo v2, "3082"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleLeaveGroupPopup()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3072"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showStopSharingDialog(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a07c5

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "LeaveGroupPopUp"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method private initListenersForContactListView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$2;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$3;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private ownerLeaveGroup()V
    .locals 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0340

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v6, v4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    const-string/jumbo v2, "ugci"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, -0x1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->ownerLeaveGroup(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private prepareAddMember(Landroid/content/Intent;)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "result"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getPhoneNumbersFromContacts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->phoneNumbers:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->phoneNumbers:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v5, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    const-string/jumbo v6, "ugci"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setCountOfDayLimit()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->phoneNumbers:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->checkInvalidNumber([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showInvalidNumberDialog(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->phoneNumbers:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->isCheckAddMember(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_2
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a046e

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->phoneNumbers:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuidNumbers(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v2, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showSMSMemberDialog([Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->addSharingMember(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "ShredFrindLstViwState"

    const-string/jumbo v5, "phoneNumbers are null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processPickContactResult(Landroid/content/Intent;)V
    .locals 26

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string/jumbo v24, "result"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v23, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/4 v6, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v6, v0, :cond_b

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string/jumbo v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getEasySignUpAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v23, 0x1

    aget-object v16, v21, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    if-eqz v12, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-object v13, v21, v23

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v23, ";"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string/jumbo v23, "ShredFrindLstViwState"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v20

    const/4 v6, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v6, v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    instance-of v0, v14, Ljava/util/ArrayList;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object v11, v14

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_4
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    instance-of v0, v15, Landroid/net/Uri;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "content://com.android.contacts"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    check-cast v15, Landroid/net/Uri;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->isExistedContactWithLookUpUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v23

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "invalid contacts"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_4
    return-void

    :cond_8
    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->isExistedContactWithLookUpUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v24

    if-eqz v24, :cond_9

    const/4 v7, 0x1

    :cond_a
    if-nez v7, :cond_7

    const-string/jumbo v23, "ShredFrindLstViwState"

    const-string/jumbo v24, "none of selected contacts are valid, exiting share"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "invalid contacts"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getPhoneNumbersByDataID(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private refreshListView()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    const-string/jumbo v3, "ugci"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->onBackPressed()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->checkSelectableMember()I

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->exitSelectionMode()V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->refresh()V

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setActionBarTitle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v4, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->checkSelectableMember()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->setEnableSelectionOnActionBar(Z)V

    goto :goto_0
.end method

.method private refreshStatusBarStyle()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    return-void
.end method

.method private registerDownloadStateReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.gallery3d.eventshare.STATE_NOTIFIY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.gallery3d.eventshare.PROGRESS_NOTIFIY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.gallery3d.eventshare.UPLOAD_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.gallery3d.eventshare.REFRESH_UPLOADED_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private selectAll()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->checkSMSMember(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setActionBarTitle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private selectItem(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setActionBarTitle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setActionBar()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setActionBarTitle(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->checkSelectableMember()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->setEnableSelectionOnActionBar(Z)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setOverFlowColor()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->setEnableSelectionOnActionBar(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->updateSelectAllButton()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    check-cast v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->setTitle(I)V

    goto :goto_0
.end method

.method private setActionBarTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->setTitle(I)V

    :cond_0
    return-void
.end method

.method private setCountOfDayLimit()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "event_share_one_day_limit_invite_day"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "event_share_one_day_limit_invite_day"

    invoke-static {v4, v5, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "event_share_one_day_limit_invite_count"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->resetFileCountQuota(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->resetCapacityQuota(Landroid/content/Context;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "event_share_one_day_limit_invite_count"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->phoneNumbers:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "event_share_one_day_limit_invite_count"

    invoke-static {v4, v5, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setMultiWindowMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsMultiWindow:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->updateListViewMargin(Z)V

    :cond_0
    return-void
.end method

.method private setOverFlowColor()V
    .locals 9

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getActionbarOverFlow()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f100017

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101045c

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v0, 0x7f02009c

    :goto_1
    instance-of v6, v3, Landroid/widget/TextView;

    if-eqz v6, :cond_6

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-object v6, v3

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {v5, v6}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->clearAllTextEffect(Landroid/widget/TextView;)V

    move-object v6, v3

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f02009b

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v0, 0x7f020099

    :goto_2
    goto :goto_1

    :cond_4
    const v0, 0x7f020098

    goto :goto_2

    :cond_5
    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1

    :cond_6
    instance-of v6, v3, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setStateChangeListener()V
    .locals 3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    new-instance v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$10;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$10;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->setStateChangeListener(Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;)V

    :cond_0
    return-void
.end method

.method private setUpBtnColor()V
    .locals 9

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getActionbarUpButton()Landroid/widget/ImageButton;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f100012

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNavigateUpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_2

    move-object v6, v1

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101045c

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1
.end method

.method private showDeleteGroupPopup()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a042d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00e0

    new-instance v3, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$5;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$5;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    const v1, 0x7f0a0080

    new-instance v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$6;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$6;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showErrorDialog()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02f4

    new-instance v4, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$11;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$11;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mErrorDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mErrorDialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showInvalidNumberDialog(I)V
    .locals 8

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a046f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02f4

    new-instance v5, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$12;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$12;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0470

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a029d

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private showLeaveGroupPopup(Z)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0a042c

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a023d

    new-instance v4, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$7;

    invoke-direct {v4, p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$7;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    const v2, 0x7f0a0080

    new-instance v3, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$8;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$8;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v1, 0x7f0a042b

    goto :goto_0
.end method

.method private showNetworkErrorDialog()V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0196

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02f4

    new-instance v5, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$13;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$13;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showPermissionRequestDialog([Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x6f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showSMSMemberDialog([Ljava/lang/String;Landroid/content/Intent;)V
    .locals 13

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v11, "layout_inflater"

    invoke-virtual {v9, v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v11, 0x7f040102

    const/4 v9, 0x0

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v3, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v9, 0x7f12024e

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/samsung/gallery/lib/factory/HorizontalListViewSmsMemberFactory;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/lib/factory/HorizontalListViewSmsMemberFactory;-><init>()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v5, v9}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSmsMemberInterface;

    new-instance v7, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f0400a2

    invoke-direct {v7, v9, v11}, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b07f0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-interface {v2, v6, v9, v7, v11}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSmsMemberInterface;->addView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/widget/ArrayAdapter;I)V

    array-length v11, p1

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v8, p1, v9

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    array-length v9, p1

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1

    const v9, 0x7f12024f

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0a0114

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v9, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v11, 0x7f0a0459

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v11, 0x7f0a02f4

    new-instance v12, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$15;

    invoke-direct {v12, p0, p2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$15;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Landroid/content/Intent;)V

    invoke-virtual {v9, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v11, 0x7f0a0080

    new-instance v12, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$14;

    invoke-direct {v12, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$14;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    invoke-virtual {v9, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0, v10}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->createNlgFromContactPicker(Z)V

    :cond_2
    return-void
.end method

.method private startAddMembers(I[Landroid/net/Uri;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    const-string/jumbo v4, "title"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EventAddMemberCmd"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private stopSharing()V
    .locals 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0105

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v6, v4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    const-string/jumbo v2, "ugci"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, -0x1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->deleteMember(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unSelectAll()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setActionBarTitle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v1, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateListView(Landroid/view/View;Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->checkSelectableMember()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setActionBarTitle(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, v2, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    const v2, 0x7f1201b2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private updateListViewMargin(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private updateNavigationBarLayout()V
    .locals 8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    move v1, v2

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mRootView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mRootView:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v3, v7, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private updateSelectAllButton()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->checkSelectableMember()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setActionBarTitle(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MembersEmptySelectedView"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "MembersSelectedView"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Members"

    goto :goto_0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsMaster:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "214"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "213"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "217"

    goto :goto_0
.end method

.method protected onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->exitSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->refresh()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsMultiWindow:Z

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->updateListViewMargin(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, -0x1

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "SharedFriendsListViewState onCreate Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "KEY_EVENT_VIEW_ALBUM_BUCKET_ID"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    new-instance v1, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400fa

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mRootView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->addMarginTopForStatusBar()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->refreshStatusBarStyle()V

    :cond_0
    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mRootView:Landroid/view/View;

    const v2, 0x7f120242

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    const-string/jumbo v1, "is_master"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsMaster:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SharedFriendsListViewDCHandler;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SharedFriendsListViewDCHandler;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    :cond_1
    sget-boolean v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->updateNavigationBarLayout()V

    :cond_2
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "SharedFriendsListViewState onCreate End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "SharedFriendsListViewState onDestroy Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mRootView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "SharedFriendsListViewState onDestroy End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShredFrindLstViwState"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDisplayChanged(I)V
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->updateNavigationBarLayout()V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onMultiWindowModeChanged(Z)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setMultiWindowMode(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "SharedFriendsListViewState onPause Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "GALLERY_SHARED_FRIENDS_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "SharedFriendsListViewState onPause End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/ActivityState;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->onBackPressed()V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v2, "ShredFrindLstViwState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestoreInstanceState, adapter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", listView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "selection_mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->setSelectionMode()V

    const-string/jumbo v2, "select_list"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "SharedFriendsListViewState onResume Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->checkRequiredPermissions([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showPermissionRequestDialog([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mNeedIdleProcess:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->addGLIdleListener()V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onResume()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setActionBar()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setUpBtnColor()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->registerDownloadStateReceiver()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->refresh()V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mSharedFriendsListViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "SharedFriendsListViewState onResume End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "ShredFrindLstViwState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaveInstanceState, adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", listView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "selection_mode"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getSelectionMode()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "select_list"

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;-><init>(Landroid/util/SparseBooleanArray;)V

    goto :goto_1
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    const-string/jumbo v0, "ShredFrindLstViwState"

    const-string/jumbo v1, "data is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getPhoneNumbersFromContacts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ShredFrindLstViwState"

    const-string/jumbo v1, "intent data is wrong from contacts app"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    new-instance v0, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;-><init>(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    invoke-virtual {p0, p2, p3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->setStateResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ShredFrindLstViwState"

    const-string/jumbo v1, "data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->prepareAddMember(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe00
        :pswitch_0
    .end packed-switch
.end method

.method public onViewInitialize()V
    .locals 0

    return-void
.end method

.method public showStopSharingDialog(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsMaster:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showDeleteGroupPopup()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showLeaveGroupPopup(Z)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    if-eq v1, v5, :cond_0

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ENTER_EMPTY_SELECTION:I

    if-ne v1, v5, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->enterSelectionMode()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    if-ne v1, v5, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->selectAll()V

    goto :goto_0

    :cond_3
    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    if-ne v1, v5, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->unSelectAll()V

    goto :goto_0

    :cond_4
    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_MEMBERS:I

    if-ne v1, v5, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->deleteMembers()V

    goto :goto_0

    :cond_5
    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    if-ne v1, v5, :cond_6

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v3, v2, v5

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->handleDCSelectItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_LEAVE_GROUP_POPUP:I

    if-ne v1, v5, :cond_7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->handleLeaveGroupPopup()V

    goto :goto_0

    :cond_7
    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_DELETE_GROUP_POPUP:I

    if-ne v1, v5, :cond_8

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->handleDeleteGroupPopup()V

    goto :goto_0

    :cond_8
    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ADD_STORY_MEMBER:I

    if-ne v1, v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0512

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v6, "AddStoryMember"

    sget-object v7, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v5, v6, v7, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_9
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->getResultData()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->prepareAddMember(Landroid/content/Intent;)V

    goto :goto_0
.end method

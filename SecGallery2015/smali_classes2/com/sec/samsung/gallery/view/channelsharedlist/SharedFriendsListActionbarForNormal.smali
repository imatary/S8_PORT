.class public Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "SharedFriendsListActionbarForNormal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShredFrndLstActnbarNrml"

.field private static mNumberOfSelectedContact:I


# instance fields
.field private final FEATURE_USE_SETTINGS:Z

.field private mChannelId:I

.field private mLimitAddMember:I

.field private mMenu:Landroid/view/Menu;

.field private mRegisterDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mNumberOfSelectedContact:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mChannelId:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->FEATURE_USE_SETTINGS:Z

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mChannelId:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$1;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mNumberOfSelectedContact:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mNumberOfSelectedContact:I

    return p0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mChannelId:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private checkServerPolicy()Z
    .locals 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_day"

    invoke-static {v7, v8, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_day"

    invoke-static {v7, v8, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_count"

    invoke-static {v7, v8, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->resetFileCountQuota(Landroid/content/Context;)V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_count"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "max_member_per_day"

    const/16 v9, 0xc8

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a0474

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a0301

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v5

    invoke-virtual {v8, v9, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$5;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$5;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createRegisterDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a02f4

    new-instance v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$3;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$3;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0080

    new-instance v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$4;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$4;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mRegisterDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mRegisterDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startMultiContactPick()V
    .locals 7

    const/4 v6, 0x1

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mChannelId:I

    const-string/jumbo v5, "max_member"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I

    sget v4, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mNumberOfSelectedContact:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "START_MULTI_CONTACT_PICK"

    invoke-virtual {v3, v4, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mRegisterDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mRegisterDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a007b

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a007c

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->createRegisterDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->FEATURE_USE_SETTINGS:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0164

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0018

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->createRegisterDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0163

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public isEventOwner()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mChannelId:I

    const-string/jumbo v3, "owner"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 10

    const v9, 0x7f1202d7

    const v8, 0x7f120292

    const/4 v7, 0x1

    const v6, 0x7f1202d5

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mMenu:Landroid/view/Menu;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f13004d

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mChannelId:I

    const-string/jumbo v4, "max_member"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I

    if-gtz v2, :cond_0

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v8, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v6, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v9, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f1202d6

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mChannelId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->isEventOwner()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, v8, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mNumberOfSelectedContact:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I

    if-ge v2, v3, :cond_2

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_1
    invoke-static {p1, v9, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_2
    invoke-static {p1, v6, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_1

    :cond_3
    const v2, 0x7f1202d6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a023e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemTitle(Landroid/view/Menu;ILjava/lang/String;)V

    invoke-static {p1, v8, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v6, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v9, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v3, "3067"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->checkServerPolicy()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->startMultiContactPick()V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "3070"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    instance-of v3, v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mChannelId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->isEventOwner()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "3071"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    check-cast v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showStopSharingDialog(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "3082"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    instance-of v3, v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "3072"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showStopSharingDialog(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f120292 -> :sswitch_1
        0x7f1202d5 -> :sswitch_0
        0x7f1202d6 -> :sswitch_2
        0x7f1202d7 -> :sswitch_3
    .end sparse-switch
.end method

.method public setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

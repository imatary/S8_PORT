.class public Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "SharedFriendsListActionbar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShredFrindLstActnbar"


# instance fields
.field private mChannelId:I

.field private mLimitAddMember:I

.field private mNumberOfItemsInAlbum:I

.field private mRegisterDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mChannelId:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mNumberOfItemsInAlbum:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mLimitAddMember:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mChannelId:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$1;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mChannelId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mNumberOfItemsInAlbum:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mLimitAddMember:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mLimitAddMember:I

    return p1
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

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_day"

    invoke-static {v7, v8, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_day"

    invoke-static {v7, v8, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_count"

    invoke-static {v7, v8, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->resetFileCountQuota(Landroid/content/Context;)V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_count"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "max_member_per_day"

    const/16 v9, 0xc8

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a0474

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a0301

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v5

    invoke-virtual {v8, v9, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$5;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$5;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createRegisterDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a02f4

    new-instance v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$3;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$3;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0080

    new-instance v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$4;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$4;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mRegisterDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mRegisterDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private isEventOwner()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mChannelId:I

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


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    const v6, 0x7f1202d5

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f13004d

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mChannelId:I

    const-string/jumbo v4, "max_member"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mLimitAddMember:I

    if-gtz v2, :cond_0

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mLimitAddMember:I

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mChannelId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->isEventOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mNumberOfItemsInAlbum:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mLimitAddMember:I

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-static {p1, v6, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_0
    const v2, 0x7f120292

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f1202d6

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f1202d7

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    return-void

    :cond_1
    invoke-static {p1, v6, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->checkServerPolicy()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mLimitAddMember:I

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mChannelId:I

    const-string/jumbo v5, "max_member"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mLimitAddMember:I

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mLimitAddMember:I

    iget v5, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mNumberOfItemsInAlbum:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "START_MULTI_CONTACT_PICK"

    invoke-virtual {v3, v4, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mRegisterDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mRegisterDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0018

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0163

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->createRegisterDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1202d5
        :pswitch_0
    .end packed-switch
.end method

.method public setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

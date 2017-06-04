.class public Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
.super Ljava/lang/Object;
.source "NavigationSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/drawer/NavigationSpinner$PopupMenuItemClickListener;,
        Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnKeyListener;,
        Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;
    }
.end annotation


# static fields
.field private static final KEY_CONTACT_CALLER_ID:Ljava/lang/String; = "caller_id_pick"

.field private static final KEY_ONLY_MAGIC:Ljava/lang/String; = "onlyMagic"

.field public static final MSG_DATASET_UPDATED:I = 0x3

.field private static final MSG_NOTIFY_DATASET_CHANGED:I = 0x2

.field private static final MSG_SELECT_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NavigationSpinner"


# instance fields
.field private mActionbarTitle:Ljava/lang/CharSequence;

.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mDropDownButton:Landroid/widget/TextView;

.field private final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private final mHandler:Landroid/os/Handler;

.field private mIsMultiPickMode:Z

.field private mIsOnlyAlbumModePick:Z

.field private mIsPickMode:Z

.field private mIsSignatureAlbumPickMode:Z

.field private mPopupMenu:Landroid/widget/ListPopupWindow;

.field private mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

.field private mSpinnerTitle:Ljava/lang/CharSequence;

.field private mSpinnerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsPickMode:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsMultiPickMode:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsOnlyAlbumModePick:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsSignatureAlbumPickMode:Z

    new-instance v0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->selectItem(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setPopupMenuWidth()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsPickMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsMultiPickMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/ListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActionbarTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private adjustDropDownPopupOffset()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    :cond_0
    return-void
.end method

.method private checkPickerMode()V
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v8, v9, :cond_5

    :cond_0
    iput-boolean v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsPickMode:Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v8, v9, :cond_1

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsMultiPickMode:Z

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->isSingleAlbumMode()Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsSignatureAlbumPickMode:Z

    const-string/jumbo v8, "album-pick"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v8, v9, :cond_6

    :cond_2
    move v2, v7

    :goto_0
    const-string/jumbo v8, "onlyMagic"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v8, "android.intent.action.PERSON_PICK"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v8, "caller_id_pick"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v0, 0x0

    if-eqz v3, :cond_7

    const/16 v0, 0x4000

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    iput-boolean v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsOnlyAlbumModePick:Z

    :cond_5
    return-void

    :cond_6
    move v2, v6

    goto :goto_0

    :cond_7
    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v8, v9, :cond_3

    const-string/jumbo v8, "include-recommend"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    const/high16 v0, 0x10000

    goto :goto_1

    :cond_8
    const v0, 0x8000

    goto :goto_1
.end method

.method private initSpinner()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isReCreateActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->checkPickerMode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->setHandler(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->checkPickerMode()V

    goto :goto_0
.end method

.method private isSingleAlbumMode()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "single-album"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isSpinnerHideMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsOnlyAlbumModePick:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsSignatureAlbumPickMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getHiddenAlbumStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshActionbarTitle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$4;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectItem(I)V
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->getChild(I)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseChnUsageAlertPopup:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIsInViewMode(Z)V

    move v1, p1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->isGroupNameItem()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsPickMode:Z

    invoke-virtual {v2, v3, v1, v4}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->selectItem(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->requestFocusToSpinnerTitle()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "NavigationSpinner"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "NavigationSpinner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectItem() : ignore selected item, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " drawer adapter size is changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPopupMenuWidth()V
    .locals 11

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b02a3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->getCount()I

    move-result v7

    if-ge v1, v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v2, v8}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v6, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-le v3, v4, :cond_3

    move v4, v3

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v7

    if-eq v7, v4, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private setSpinnerStyle()V
    .locals 5

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTabE7DeltaModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerView:Landroid/view/View;

    const v3, 0x7f120076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0451

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerView:Landroid/view/View;

    const v3, 0x7f120075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0213

    invoke-static {v2, v1, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkMaxFontSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-void
.end method


# virtual methods
.method public closeDropDownPopup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$7;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getSpinnerView()Landroid/view/View;
    .locals 5

    const v4, 0x7f040028

    const v3, 0x7f040023

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerView:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->isSpinnerHideMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setSpinnerStyle()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerView:Landroid/view/View;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setSpinnerStyle()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getHiddenAlbumStatus()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setSpinnerStyle()V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSpinnerLayoutChangeStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setSpinnerStyle()V

    goto :goto_0
.end method

.method public getTitle(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActionbarTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNeedToPostJob()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->isNeedToPostJob()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$3;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$3;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->isSpinnerHideMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0202d7

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFWActionBarBtnBG(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->closeDropDownPopup()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->initSpinner()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public requestFocusToSpinnerTitle()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public resume(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setActionbarTitle(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setSpinnerTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$2;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActionbarTitle()V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v3, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v3

    if-ne v2, v3, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/core/ViewByFilterType;->VIEW_BY_FILTER_STARING_MAP:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setActionbarTitle(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setActionbarTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActionbarTitle:Ljava/lang/CharSequence;

    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->refreshActionbarTitle()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActionbarTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setNaviSpinnerDisable()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$5;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setNaviSpinnerEnable()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$6;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSpinnerTitle()V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v3, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v3

    if-ne v2, v3, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/core/ViewByFilterType;->VIEW_BY_FILTER_STARING_MAP:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getHiddenAlbumStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setSpinnerTitle(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setSpinnerTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setSpinnerTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerTitle:Ljava/lang/CharSequence;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setupPopupMenu()V
    .locals 9

    const/4 v8, 0x1

    const v5, 0x7f0b02a4

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerView:Landroid/view/View;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->getSpinnerView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerView:Landroid/view/View;

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerView:Landroid/view/View;

    const v3, 0x7f120076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSystemUiVisibility(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTabE7DeltaModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    const v4, 0x7f0b0451

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkMaxFontSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    :goto_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsMassModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    invoke-static {v2, v3, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkMaxFontSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0202d7

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0421

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a041e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->isSpinnerHideMode()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    invoke-static {v2, v3, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkMaxFontSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFWActionBarBtnBG(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    new-instance v3, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;

    invoke-direct {v3, p0, v7}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnClickListener;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    new-instance v3, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnKeyListener;

    invoke-direct {v3, p0, v7}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$DropDownButtonOnKeyListener;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    if-nez v2, :cond_6

    new-instance v2, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->setHandler(Landroid/os/Handler;)V

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    if-nez v2, :cond_7

    new-instance v2, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v7, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0202da

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    const v3, 0x7f0c00fc

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mSpinnerMenuAdapter:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    new-instance v3, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$PopupMenuItemClickListener;

    invoke-direct {v3, p0, v7}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$PopupMenuItemClickListener;-><init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;Lcom/sec/samsung/gallery/drawer/NavigationSpinner$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->adjustDropDownPopupOffset()V

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mIsPickMode:Z

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ka"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setPopupMenuWidth()V

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSpinnerLayoutChangeStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mPopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mDropDownButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->adjustDropDownPopupOffset()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSpinnerLayoutChange(Z)V

    goto/16 :goto_2
.end method

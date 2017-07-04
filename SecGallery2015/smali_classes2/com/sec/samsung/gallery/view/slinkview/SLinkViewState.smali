.class public Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "SLinkViewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$SlinkItemClickListener;
    }
.end annotation


# static fields
.field private static final MAX_REGISTER_DEVICES_COUNT:I = 0x6

.field private static final SLINK_REFRESH_ICON_ANIM_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "SLinkViewState"

.field private static final USE_DEVICE_LIST_VIEW:I = 0x1

.field private static final USE_REGISTER_GUIDE_VIEW:I = 0x2


# instance fields
.field private final MSG_START_REFRESH:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mDeviceCountView:Landroid/widget/TextView;

.field private final mDeviceListRefreshHandler:Landroid/os/Handler;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mLastViewType:I

.field private mListView:Landroid/widget/ListView;

.field private mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

.field private mRefreshButton:Landroid/widget/ImageView;

.field private final mRegisteredDevicesObserver:Landroid/database/ContentObserver;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSLinkViewLayout:Landroid/view/ViewGroup;

.field private final mSlinkOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->MSG_START_REFRESH:I

    new-instance v0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$1;-><init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRegisteredDevicesObserver:Landroid/database/ContentObserver;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$2;-><init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mDeviceListRefreshHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$3;-><init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSlinkOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->updateSLinkItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->updateView()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRefreshButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mDeviceListRefreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->selectItem(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private adjustLayout()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mLastViewType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->calItemTitleViewWidth()V

    :cond_0
    return-void
.end method

.method private getSLinkViewLayout()Landroid/view/ViewGroup;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mLastViewType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v2, 0x7f040100

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    return-object v1

    :cond_0
    const v2, 0x7f040101

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    iget v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mLastViewType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f12024a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mDeviceCountView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f12024b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRefreshButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRefreshButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSlinkOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f12024c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$SlinkItemClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$SlinkItemClickListener;-><init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f12024d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSlinkOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isSLinkDevice(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "SLinkViewState"

    const-string/jumbo v1, "isSLinkDevice : mediaSetPath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "slink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private selectItem(I)V
    .locals 12

    const/high16 v11, 0x1040000

    const/4 v10, 0x0

    const v9, 0x7f0a0068

    :try_start_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    invoke-virtual {v7, p1}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getNameStringId()I

    move-result v7

    if-ne v7, v9, :cond_1

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a03dc

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$4;

    invoke-direct {v8, p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$4;-><init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)V

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v7, "SLinkViewState"

    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "SLinkViewState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "selectItem() : ignore selected item, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " drawer adapter size is changed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getNameStringId()I

    move-result v7

    const v8, 0x7f0a088c

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->createHowToUseViewIntent()Landroid/content/Intent;

    move-result-object v4

    :try_start_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v7, "SLinkViewState"

    const-string/jumbo v8, "Activity Not Found !!! "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f040032

    invoke-static {v7, v8, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getMediaSetPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SLinkViewState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sLinkSelected : mediaSetPath = [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->isSLinkDevice(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v0, :cond_3

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a0246

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a02f4

    new-instance v9, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$5;

    invoke-direct {v9, p0, v6}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$5;-><init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v8, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v8, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v7

    const-class v8, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-virtual {v7, v8, v1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private updateDeviceCountView()V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mDeviceCountView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f12024a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mDeviceCountView:Landroid/widget/TextView;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mDeviceCountView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSLinkItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const-string/jumbo v7, "slink"

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->getSLinkClient()Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_2

    move-object v1, v5

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->getStorageCount()I

    move-result v2

    const-string/jumbo v6, "SLinkViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSLinkItems : length ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    const/4 v6, 0x6

    if-le v2, v6, :cond_4

    :cond_3
    move-object v1, v5

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    const/4 v5, 0x3

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->getDeviceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->getStoragePath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->getStorageId(I)I

    move-result v8

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->getNetworkMode(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->createSLinkItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateView()V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->viewType()I

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mLastViewType:I

    if-eq v1, v0, :cond_3

    iput v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mLastViewType:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->getSLinkViewLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->initView()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mLastViewType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->updateDeviceCountView()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->adjustLayout()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private viewType()I
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x2

    :cond_1
    return v1
.end method


# virtual methods
.method public getSAScreenId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->adjustLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "SLinkViewState onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SLinkViewState"

    const-string/jumbo v1, "mActivity is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    new-instance v0, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->initSpinner()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200d5

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mLastViewType:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->getSLinkViewLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->initView()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "SLinkViewState onCreate End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "SLinkViewState onPause Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mDeviceListRefreshHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRegisteredDevicesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mSLinkViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "SLinkViewState onPause End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "SLinkViewState onResume Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SLinkViewState"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onResume()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->setCurrentClusterType(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1, v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->setIsPhotoPage(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SLINK:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/slinkview/SLinkActionBarForNormal;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/slinkview/SLinkActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mRegisteredDevicesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_0
    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->updateSLinkItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->setItems(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->updateView()V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "SLinkViewState onResume End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

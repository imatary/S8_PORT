.class public Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "ChannelPhotoViewActionBarForEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;
    }
.end annotation


# static fields
.field private static final FeatureLowStorageMode:Z


# instance fields
.field private mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

.field private mQuantitySelectedAlbum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 2

    or-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mQuantitySelectedAlbum:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mQuantitySelectedAlbum:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method private createCustomMenu(Landroid/view/Menu;)V
    .locals 10

    const v9, 0x7f120290

    const v8, 0x7f120275

    const v7, 0x7f0a03cd

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->FeatureLowStorageMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "is_low_storage"

    invoke-static {v0, v1, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v6, v5

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    const v2, 0x7f120292

    const v3, 0x7f0a035a

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;

    const v1, 0x7f120292

    invoke-direct {v4, p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;I)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    const v3, 0x7f0a00e0

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;

    invoke-direct {v4, p0, v8}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;I)V

    move-object v1, p1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;

    invoke-direct {v4, p0, v9}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;I)V

    move-object v1, p1

    move v2, v9

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    const v2, 0x7f1202c2

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;

    const v1, 0x7f1202c2

    invoke-direct {v4, p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;I)V

    move-object v1, p1

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    const v2, 0x7f120293

    const v3, 0x7f0a0131

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;

    const v1, 0x7f120293

    invoke-direct {v4, p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;I)V

    move-object v1, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    const v2, 0x7f120297

    const v3, 0x7f0a00ce

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;

    const v1, 0x7f120297

    invoke-direct {v4, p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;I)V

    move-object v1, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    const v2, 0x7f120298

    const v3, 0x7f0a037c

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;

    const v1, 0x7f120298

    invoke-direct {v4, p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;I)V

    move-object v1, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method private getOptionMenuId()I
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const v0, 0x7f13003b

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->FeatureLowStorageMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "is_low_storage"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f13000f

    goto :goto_0

    :cond_1
    const v0, 0x7f13000e

    goto :goto_0
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->getOptionMenuId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->createCustomMenu(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->setStyleSelectChannelActionbar()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 3

    const/4 v1, 0x7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Long press"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3026"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Menu"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Long press"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Menu"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Long press"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1013"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHARE_FROM_EVENTVIEW:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Menu"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Long press"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3065"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DOWNLOAD_FROM_EVENTVIEW:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Menu"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1014"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startGifMaker()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1015"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startCollageMaker()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120275 -> :sswitch_1
        0x7f120290 -> :sswitch_2
        0x7f120292 -> :sswitch_0
        0x7f120293 -> :sswitch_3
        0x7f120294 -> :sswitch_4
        0x7f120295 -> :sswitch_4
        0x7f120296 -> :sswitch_5
        0x7f120297 -> :sswitch_4
        0x7f120298 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->onPrepareOptionsInShareMode(Landroid/view/Menu;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mQuantitySelectedAlbum:I

    if-lez v2, :cond_2

    const v2, 0x7f120290

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f120292

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedItem()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-static {p1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForShare(Landroid/view/Menu;I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->hasSelectedItem()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInGifMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInCollageMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const v2, 0x7f120294

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f120295

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f120297

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f120296

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f120298

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method protected setSelectedItemCount(I)V
    .locals 0

    return-void
.end method

.method protected setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setTitle(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$2;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.class public Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "ChannelPhotoViewActionBarForEventNotificationEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit$CustomMenuOnClickListener;
    }
.end annotation


# instance fields
.field private mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

.field private mQuantitySelectedAlbum:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 2

    or-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mQuantitySelectedAlbum:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mQuantitySelectedAlbum:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private createCustomMenu(Landroid/view/Menu;)V
    .locals 6

    const v2, 0x7f120292

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    const v3, 0x7f0a035a

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit$CustomMenuOnClickListener;

    invoke-direct {v4, p0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;I)V

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method private getOptionMenuId()I
    .locals 1

    const v0, 0x7f130010

    return v0
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->getOptionMenuId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->createCustomMenu(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->setStyleSelectChannelActionbar()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Long press"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Menu"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f120292
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mQuantitySelectedAlbum:I

    if-lez v0, :cond_0

    const v0, 0x7f120292

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method protected setSelectedItemCount(I)V
    .locals 0

    return-void
.end method

.method protected setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit$1;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

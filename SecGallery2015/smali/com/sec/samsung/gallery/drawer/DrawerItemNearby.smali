.class public Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;
.super Lcom/sec/samsung/gallery/drawer/DrawerItem;
.source "DrawerItemNearby.java"


# instance fields
.field private mDevice:Lcom/samsung/android/allshare/Device;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(IILcom/sec/samsung/gallery/core/TabTagType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/drawer/DrawerItem;-><init>(IILcom/sec/samsung/gallery/core/TabTagType;)V

    return-void
.end method

.method private constructor <init>(ILcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;Lcom/samsung/android/allshare/Device;Landroid/os/Handler;)V
    .locals 2

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/drawer/DrawerItem;-><init>(ILjava/lang/CharSequence;Lcom/sec/samsung/gallery/core/TabTagType;)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mDevice:Lcom/samsung/android/allshare/Device;

    iput-object p4, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mMediaSetPath:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mMediaSetPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public static createNearByItem(ILcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;Lcom/samsung/android/allshare/Device;Landroid/os/Handler;)Lcom/sec/samsung/gallery/drawer/DrawerItem;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;-><init>(ILcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;Lcom/samsung/android/allshare/Device;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createNearbyNormalItem(II)Lcom/sec/samsung/gallery/drawer/DrawerItem;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;-><init>(IILcom/sec/samsung/gallery/core/TabTagType;)V

    return-object v0
.end method


# virtual methods
.method public getMediaSetPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mMediaSetPath:Ljava/lang/String;

    return-object v0
.end method

.method public selectItem(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mNameStringId:I

    const v3, 0x7f0a0043

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "KEY_MEDIA_SET_PATH"

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mMediaSetPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setIcon(Landroid/widget/ImageView;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "NearbyIcon"

    const-string/jumbo v2, "setIcon"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->sIconCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;-><init>(Landroid/net/Uri;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->mHandler:Landroid/os/Handler;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

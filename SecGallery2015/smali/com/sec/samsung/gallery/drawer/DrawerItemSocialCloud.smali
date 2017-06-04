.class public Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;
.super Lcom/sec/samsung/gallery/drawer/DrawerItem;
.source "DrawerItemSocialCloud.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawerItemSocialCloud"


# instance fields
.field private final mType:Lcom/sec/samsung/gallery/core/ViewByFilterType;


# direct methods
.method private constructor <init>(IILcom/sec/samsung/gallery/core/ViewByFilterType;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/drawer/DrawerItem;-><init>(IILcom/sec/samsung/gallery/core/TabTagType;)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->mType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    return-void
.end method

.method public static createSocialCloudItem(IIILcom/sec/samsung/gallery/core/ViewByFilterType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;

    invoke-direct {v0, p0, p1, p3}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;-><init>(IILcom/sec/samsung/gallery/core/ViewByFilterType;)V

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->setIconId(I)V

    return-object v0
.end method

.method private determineTypeBits(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->mType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    if-ne v1, v2, :cond_0

    const/16 v0, 0x14

    :goto_0
    const-string/jumbo v1, "DrawerItemSocialCloud"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "determineTypeBits() : ViewByFilterType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->mType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", typeBit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v1, "DrawerItemSocialCloud"

    const-string/jumbo v2, "determineTypeBits() : no match viewBytFilterType!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->mType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    if-ne v1, v2, :cond_2

    const/16 v0, 0x15

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "DrawerItemSocialCloud"

    const-string/jumbo v2, "determineTypeBits() : no match viewBytFilterType!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->mType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    if-ne v1, v2, :cond_4

    const/16 v0, 0x8

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "DrawerItemSocialCloud"

    const-string/jumbo v2, "determineTypeBits() : no match viewBytFilterType!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getFilteredSetPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->determineTypeBits(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getLogExtra()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->mType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "Dropbox"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "DrawerItemSocialCloud"

    const-string/jumbo v2, "getLogExtra() : no match viewBytFilterType!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNewPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->getContentType(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->mContentType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->mContentType:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->getFilterType(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->setMediaFilterType(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->getFilteredSetPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private startPickMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->getNewPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v3

    invoke-static {v3, v1}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_PICK_MEDIA_TYPE"

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->getFilterTypeToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_MEDIA_SET_POSITION"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "DrawerItemSocialCloud"

    const-string/jumbo v4, "startPickMode() : newPath is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getViewByFilterType()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->mType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v0

    return v0
.end method

.method public selectItem(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V
    .locals 7

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v5, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->mType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v5

    invoke-virtual {v1, v5, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->startPickMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    :goto_0
    const-string/jumbo v5, "GDVG"

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->getLogExtra()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "GDVS"

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->getLogExtra()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->mType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    sget-object v6, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    if-ne v5, v6, :cond_2

    sget-object v5, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->ALBUM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    const-string/jumbo v5, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "KEY_MEDIA_SET_POSITION"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    const-class v6, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v5, v6, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "DrawerItemSocialCloud"

    const-string/jumbo v6, "selectItem() : no match viewBytFilterType!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

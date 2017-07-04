.class public Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "DexContextMenuForThumbnail.java"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private final mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private checkPrintMenuVisibility(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePrintMenuInActionbar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide/high16 v2, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkRotateMenuVisibility(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x100000

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x400

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkShareMenuVisibility(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDownloadable(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudMultiDownload:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportAddTag(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSCloudImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportAddToEvent(J)Z
    .locals 5

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportAddToEventMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x4000000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    if-eq v4, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->notifyObservers(Ljava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    move v2, v3

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/16 v4, -0x5a

    invoke-virtual {v2, v1, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->handleImageRotation(Lcom/sec/android/gallery3d/data/MediaItem;I)V

    move v2, v3

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/16 v4, 0x5a

    invoke-virtual {v2, v1, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->handleImageRotation(Lcom/sec/android/gallery3d/data/MediaItem;I)V

    move v2, v3

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "TISE"

    const-string/jumbo v5, "Copy to album"

    invoke-static {v2, v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->notifyObservers(Ljava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "TISE"

    const-string/jumbo v5, "Move to album"

    invoke-static {v2, v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->notifyObservers(Ljava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TO_EVENT:I

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->notifyObservers(Ljava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :sswitch_7
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "SCLOUD_MULTI_DOWNLOAD"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TAG:I

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->notifyObservers(Ljava/lang/Object;)V

    move v2, v3

    goto/16 :goto_0

    :sswitch_9
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "TISE"

    const-string/jumbo v6, "Move to Private"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v4, v3, v2, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToSecretBox(ZZZ)V

    move v2, v3

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->notifyObservers(Ljava/lang/Object;)V

    move v2, v3

    goto/16 :goto_0

    :sswitch_b
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "TISE"

    const-string/jumbo v6, "Move to KNOX"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox1ContainerId()I

    move-result v5

    invoke-virtual {v4, v3, v2, v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    move v2, v3

    goto/16 :goto_0

    :sswitch_c
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "TISE"

    const-string/jumbo v6, "Move to KNOX"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox2ContainerId()I

    move-result v5

    invoke-virtual {v4, v3, v2, v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    move v2, v3

    goto/16 :goto_0

    :sswitch_d
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "TISE"

    const-string/jumbo v6, "Move to KNOX"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox1ContainerId()I

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    move v2, v3

    goto/16 :goto_0

    :sswitch_e
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox2ContainerId()I

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isSecureFolderEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "MTSF"

    const-string/jumbo v5, "Move To Secure Folder"

    invoke-static {v2, v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v2, v3

    goto/16 :goto_0

    :sswitch_f
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startActionPrint(Lcom/sec/android/gallery3d/data/MediaItem;)V

    move v2, v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f120275 -> :sswitch_0
        0x7f120277 -> :sswitch_b
        0x7f120278 -> :sswitch_c
        0x7f12027c -> :sswitch_4
        0x7f12027d -> :sswitch_5
        0x7f12027e -> :sswitch_f
        0x7f12027f -> :sswitch_9
        0x7f120280 -> :sswitch_a
        0x7f120281 -> :sswitch_d
        0x7f120282 -> :sswitch_e
        0x7f120290 -> :sswitch_1
        0x7f1202a5 -> :sswitch_2
        0x7f1202a6 -> :sswitch_3
        0x7f1202a9 -> :sswitch_7
        0x7f1202c5 -> :sswitch_6
        0x7f1202c6 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    if-eq v8, v6, :cond_0

    :goto_0
    return v7

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v8, 0x7f130054

    invoke-virtual {v0, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    invoke-static {p1, v4, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, p1, v4, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForSecretBox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, p1, v4, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForKnox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    if-nez v1, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->checkRotateMenuVisibility(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v6

    :goto_1
    const v8, 0x7f1202a5

    invoke-static {p1, v8, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v8, 0x7f1202a6

    invoke-static {p1, v8, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v8, 0x7f12027e

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->checkPrintMenuVisibility(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v6

    :cond_1
    invoke-static {p1, v8, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v7, 0x7f120290

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->checkShareMenuVisibility(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    invoke-static {p1, v7, v8}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v7, 0x7f1202c5

    invoke-direct {p0, v4, v5}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->isSupportAddToEvent(J)Z

    move-result v8

    invoke-static {p1, v7, v8}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v7, 0x7f1202a9

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->isDownloadable(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    invoke-static {p1, v7, v8}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v7, 0x7f1202c6

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForThumbnail;->isSupportAddTag(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    invoke-static {p1, v7, v8}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionForCopyMoveToAlbum(Landroid/view/Menu;)V

    move v7, v6

    goto :goto_0

    :cond_2
    move v2, v7

    goto :goto_1
.end method

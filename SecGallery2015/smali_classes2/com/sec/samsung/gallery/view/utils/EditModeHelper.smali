.class public Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
.super Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;
.source "EditModeHelper.java"


# static fields
.field private static final CONTACT_DATA_DELIMETER:C = ';'

.field private static final IMAGE_360EDITOR_CLASS_NAME:Ljava/lang/String;

.field private static final MAX_DOWNLOAD_SELECTION_NUMBER:I = 0x32

.field private static final MAX_EDIT_SELECTION_NUMBER:I = 0x8

.field public static final MIN_DEFAULT_SELECTION_NUMBER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EditModeHelper"

.field private static mIsShowChoiceDialog:Z


# instance fields
.field private FEATURE_USE_SCLOUD_ONLY:Z

.field private FEATURE_USE_UNION_CMH:Z

.field private isEvent:Z

.field public isSDCardEject:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private final mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mIsShowDeleteDialog:Z

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mIsShowChoiceDialog:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.sec.android.mimage.gear360editor.PE360"

    :goto_0
    sput-object v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->IMAGE_360EDITOR_CLASS_NAME:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "com.srib.gear360editor.PE360"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isSDCardEject:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mIsShowDeleteDialog:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isEvent:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->FEATURE_USE_UNION_CMH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->FEATURE_USE_SCLOUD_ONLY:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    return-void
.end method

.method private CopyToEvent(Z)V
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "COPY_TO_EVENT"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private extractAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getImageToEdit()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SNS:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v5, :cond_0

    :cond_3
    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "EditModeHelper"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "EditModeHelper"

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_0
.end method

.method private getMediaItemForShareUrl()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToURL:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMediaSetArray(Lcom/sec/android/gallery3d/data/MediaSet;)[Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    new-array v3, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private handle360PhotoEditorNlgAboutNameAvailable(Z)V
    .locals 5

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v2, "CrossPhotoEditorPhoto360Editor"

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Edit"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "CrossPhotoEditorPhoto360Editor"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v2, "DetailView"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Edit"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "CrossPhotoEditorPhoto360Editor"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method private imageEdit(Ljava/util/ArrayList;Ljava/lang/String;JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "IMAGE_EDIT"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private isNeedImageVideoConversion()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isASoundSceneFileSelected(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/golf/GolfMgr;->isGolfFileSelected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/Play3DTourCmd;->isSelected3DTour(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/PlayInteractiveShotCmd;->isVirtualShotFileSelected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/PlayMotionPanaromaCmd;->isSelectedMotionPanorama(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/PlayMotionPhotoCmd;->isSelectedMotionPhoto(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/PlaySelfMotionPanaromaCmd;->isSelectedSelfMotionPanorama(Landroid/content/Context;)Z

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

.method private showImageVideoConversionShareDialog(ZZ)V
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_IMAGE_VIDEO_CONVERSION_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showRenameDialog(ZZZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    :cond_0
    const/4 v3, 0x7

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    aput-object v5, v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v4, "SHOW_RENAME_DIALOG"

    invoke-virtual {v3, v4, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showRenameDialog(ZZZLjava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2, p4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    const-string/jumbo v2, "EditModeHelper"

    const-string/jumbo v3, "showRenameDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p4, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "SHOW_RENAME_DIALOG"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showShareDialog()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_SHARE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showShareDialog(Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_SHARE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showShareDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    aput-object p2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_SHARE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showShareUrlImageDialog(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHARE_URL_TO_IMAGE_OR_TEXT_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public checkCloud360Content(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "com.sec.android.mimage.gear360editor"

    sget-object v2, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->IMAGE_360EDITOR_CLASS_NAME:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkComponentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0029

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->handle360PhotoEditorNlgAboutNameAvailable(Z)V

    :goto_0
    return-void

    :cond_0
    instance-of v1, p2, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_360_CONTENTS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SCLOUD_TEMP_DOWNLOAD"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->handle360PhotoEditorNlgAboutNameAvailable(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->start360ImageEditor(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public chooseShareDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isNeedImageVideoConversion()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showImageVideoConversionShareDialog(ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getMediaItemForShareUrl()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showShareUrlImageDialog(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showShareDialog()V

    goto :goto_0
.end method

.method public chooseShareDialog(Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isNeedImageVideoConversion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showImageVideoConversionShareDialog(ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showShareDialog(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public copyBurstShotImage()V
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "COPY_BURSTSHOT_IMAGE"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public copyBurstShotImageCloud()V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_BURST_SHOT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v5, "SCLOUD_TEMP_DOWNLOAD"

    invoke-virtual {v4, v5, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "EditModeHelper"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "EditModeHelper"

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dismissDialogs()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialog(Z)V

    invoke-direct {p0, v1, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showImageVideoConversionShareDialog(ZZ)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDetailsDialog(Z)V

    invoke-virtual {p0, v2, v1, v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showAlbumListDialogToCopyMove(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showNewAlbumDialog(Z)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRemoveConfirmTagDialog(ZLcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isSDCardEject:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showNewAlbumCopyMoveDialog(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0, v2, v1, v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->CopyToEvent(Z)V

    return-void
.end method

.method public download()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v8}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v11, v13

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v6, v9, :cond_6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v13, v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-eqz v13, :cond_1

    move-object v5, v7

    check-cast v5, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    const/4 v13, 0x0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->getMediaItemCount()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v13, v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    instance-of v13, v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-nez v13, :cond_2

    instance-of v13, v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    if-eqz v13, :cond_3

    :cond_2
    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    instance-of v13, v7, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v13, :cond_4

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    instance-of v13, v7, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;

    if-nez v13, :cond_5

    instance-of v13, v7, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v13, :cond_5

    instance-of v13, v7, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v13, :cond_0

    :cond_5
    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v13, v10}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->getStorageShortageInByte(Landroid/content/Context;Ljava/util/List;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v13, v14, v15}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->getStorageAlertDialog(Landroid/content/Context;J)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :goto_2
    return-void

    :cond_7
    const/4 v13, 0x0

    aput-object v10, v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v16, "DOWNLOAD_NEARBY"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v11}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v13, v12}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->downloadFiles(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    const/16 v16, 0x32

    move/from16 v0, v16

    if-le v13, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0a0253

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x32

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    const/4 v13, 0x0

    aput-object v3, v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v16, "DOWNLOAD_CLOUDBY"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v11}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v16, "EXIT_SELECTION_MODE"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public getPhoneNumbersFromContacts(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "EditModeHelper"

    const-string/jumbo v4, "contacts is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "EditModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", phoneNumbers are null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getSupportedOperationForSelectedAlbumItem()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedAlbumItem(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSupportedOperationForSelectedAlbumItem(Z)J
    .locals 22

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_0
    const-wide/16 v16, 0x0

    :cond_1
    :goto_0
    return-wide v16

    :cond_2
    const-wide/16 v16, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->FEATURE_USE_UNION_CMH:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->FEATURE_USE_SCLOUD_ONLY:Z

    if-eqz v13, :cond_3

    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCloudBucketIds(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_3
    monitor-enter v12

    :try_start_0
    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v0, v11, Lcom/sec/android/gallery3d/data/MediaSet;

    move/from16 v18, v0

    if-nez v18, :cond_6

    instance-of v0, v11, Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v14

    if-eqz v6, :cond_5

    const-wide/32 v18, 0x2000000

    and-long v18, v18, v14

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_5

    const/4 v6, 0x0

    :cond_5
    if-eqz v8, :cond_4

    const-wide/32 v18, 0x1000000

    and-long v18, v18, v14

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_4

    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    move-object v0, v11

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object v10, v0

    instance-of v0, v10, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    move/from16 v18, v0

    if-nez v18, :cond_7

    instance-of v0, v10, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    move/from16 v18, v0

    if-nez v18, :cond_7

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :cond_7
    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v14

    if-nez v9, :cond_8

    const-wide v18, 0x200000000000L

    and-long v18, v18, v14

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_e

    const/4 v9, 0x1

    :cond_8
    :goto_2
    if-eqz v6, :cond_9

    const-wide/32 v18, 0x2000000

    and-long v18, v18, v14

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_9

    const/4 v6, 0x0

    :cond_9
    if-eqz v8, :cond_a

    const-wide/32 v18, 0x1000000

    and-long v18, v18, v14

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_a

    const/4 v8, 0x0

    :cond_a
    sget-object v18, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v18

    if-eqz v18, :cond_c

    if-eqz v7, :cond_b

    const-wide/32 v18, 0x40000000

    and-long v18, v18, v14

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_b

    const/4 v7, 0x0

    :cond_b
    if-eqz v6, :cond_c

    const-wide/32 v18, 0x20000000

    and-long v18, v18, v14

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_c

    const/4 v6, 0x0

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->FEATURE_USE_UNION_CMH:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->FEATURE_USE_SCLOUD_ONLY:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    if-nez p1, :cond_d

    instance-of v0, v10, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    if-nez v4, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_d

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    :cond_d
    and-long v16, v16, v14

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v9, 0x0

    goto :goto_2

    :cond_f
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->FEATURE_USE_UNION_CMH:Z

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->FEATURE_USE_SCLOUD_ONLY:Z

    if-eqz v13, :cond_10

    if-eqz p1, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->isIncludeCloudOnlyContents(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_10
    if-lez v3, :cond_11

    const-wide/high16 v18, 0x2000000000000000L

    or-long v16, v16, v18

    :cond_11
    const/4 v13, 0x1

    if-le v3, v13, :cond_12

    const-wide v18, -0x940000000080001L

    and-long v16, v16, v18

    :cond_12
    if-nez v6, :cond_13

    const-wide/32 v18, -0x2000001

    and-long v16, v16, v18

    :cond_13
    if-nez v8, :cond_14

    const-wide/32 v18, -0x1000001

    and-long v16, v16, v18

    :cond_14
    if-eqz v7, :cond_15

    if-nez v5, :cond_15

    const-wide/32 v18, 0x40000000

    or-long v16, v16, v18

    const-wide/32 v18, -0x20000001

    and-long v16, v16, v18

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    :cond_15
    if-nez v7, :cond_1

    const-wide/32 v18, -0x40000001

    and-long v16, v16, v18

    goto/16 :goto_0
.end method

.method public getSupportedOperationForSelectedItem()J
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_0

    const-wide/16 v24, 0x0

    :goto_0
    return-wide v24

    :cond_0
    const-wide/16 v24, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v22, 0x1

    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v26, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v26 .. v26}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v27

    monitor-enter v27

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_1
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_16

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/data/MediaObject;

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    move/from16 v28, v0

    if-nez v28, :cond_2

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    move/from16 v28, v0

    if-nez v28, :cond_2

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :cond_2
    move-object/from16 v0, v17

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object v15, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v18

    if-nez v14, :cond_3

    const-wide v28, 0x200000000000L

    and-long v28, v28, v18

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_e

    const/4 v14, 0x1

    :cond_3
    :goto_2
    if-eqz v13, :cond_5

    const-wide/16 v28, 0x4

    and-long v28, v28, v18

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_f

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v28

    if-eqz v28, :cond_10

    if-eqz v9, :cond_10

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v28

    if-eqz v28, :cond_4

    if-eqz v8, :cond_11

    :cond_4
    if-eqz v9, :cond_11

    const/4 v13, 0x1

    :cond_5
    :goto_5
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    and-long v28, v28, v18

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_12

    const/4 v6, 0x0

    :goto_6
    const-wide v28, 0x2000000000L

    and-long v28, v28, v18

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_13

    const/4 v7, 0x0

    :goto_7
    sget-object v28, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v28 .. v28}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v28

    if-eqz v28, :cond_7

    if-nez v12, :cond_6

    const-wide/32 v28, 0x40000000

    and-long v28, v28, v18

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_6

    const/4 v12, 0x1

    :cond_6
    if-eqz v11, :cond_7

    const-wide/32 v28, 0x20000000

    and-long v28, v28, v18

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_7

    const/4 v11, 0x0

    :cond_7
    and-long v24, v24, v18

    const-wide v28, 0x80000000000L

    and-long v28, v28, v24

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    :cond_8
    const/16 v22, 0x0

    :cond_9
    if-nez v5, :cond_a

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v28

    if-eqz v28, :cond_a

    const/4 v5, 0x1

    const-wide v28, -0x140000000000022bL    # -1.6832434884953758E212

    and-long v24, v24, v28

    :cond_a
    const-wide/32 v28, 0x2000000

    and-long v28, v28, v24

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_b

    const-wide/32 v28, -0x2000001

    and-long v24, v24, v28

    :cond_b
    const-wide/32 v28, 0x1000000

    and-long v28, v28, v24

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_c

    const-wide/32 v28, -0x1000001

    and-long v24, v24, v28

    :cond_c
    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v28

    if-nez v28, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSCloudImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v28

    if-eqz v28, :cond_14

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    :cond_d
    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v28

    if-nez v28, :cond_14

    const/16 v20, 0x1

    :goto_8
    if-eqz v21, :cond_15

    const-wide/32 v28, 0x4000000

    and-long v28, v28, v18

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_15

    const/16 v21, 0x1

    :goto_9
    goto/16 :goto_1

    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_14
    const/16 v20, 0x0

    goto :goto_8

    :cond_15
    const/16 v21, 0x0

    goto :goto_9

    :cond_16
    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v26, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_17

    const-wide v26, -0x80e000000000001L    # -5.943313475276233E269

    and-long v24, v24, v26

    :cond_17
    const/16 v26, 0x1

    move/from16 v0, v26

    if-le v4, v0, :cond_23

    const-wide v26, -0x800000000000029L

    and-long v24, v24, v26

    const/16 v26, 0x8

    move/from16 v0, v26

    if-le v4, v0, :cond_18

    const-wide/16 v26, -0x201

    and-long v24, v24, v26

    :cond_18
    const/16 v26, 0x1f4

    move/from16 v0, v26

    if-le v4, v0, :cond_19

    const-wide/32 v26, -0x800001

    and-long v24, v24, v26

    :cond_19
    sget-object v26, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMobilePrint:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v26 .. v26}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isDisabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v26

    if-eqz v26, :cond_1a

    const-wide v26, -0x1000000000000001L    # -3.1050361846014175E231

    and-long v24, v24, v26

    :cond_1a
    if-nez v22, :cond_1b

    const-wide v26, -0x80000000001L

    and-long v24, v24, v26

    :cond_1b
    if-eqz v14, :cond_1c

    const-wide v26, 0x200000000000L

    or-long v24, v24, v26

    :cond_1c
    if-eqz v13, :cond_24

    const-wide/16 v26, 0x4

    or-long v24, v24, v26

    :goto_a
    if-eqz v6, :cond_1d

    sget v26, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    move/from16 v0, v26

    if-le v2, v0, :cond_1e

    :cond_1d
    const-wide v26, -0x4000000000000001L    # -1.9999999999999998

    and-long v24, v24, v26

    :cond_1e
    if-eqz v7, :cond_1f

    const/16 v26, 0x6

    move/from16 v0, v26

    if-le v3, v0, :cond_20

    :cond_1f
    const-wide v26, -0x2000000001L

    and-long v24, v24, v26

    :cond_20
    if-eqz v12, :cond_21

    if-nez v10, :cond_21

    const-wide/32 v26, 0x40000000

    or-long v24, v24, v26

    const-wide/32 v26, -0x20000001

    and-long v24, v24, v26

    :cond_21
    if-nez v11, :cond_22

    const-wide/32 v26, -0x2000001

    and-long v24, v24, v26

    :cond_22
    if-eqz v20, :cond_25

    const-wide/high16 v26, 0x10000000000000L

    or-long v24, v24, v26

    :goto_b
    if-eqz v21, :cond_26

    const-wide/32 v26, 0x4000000

    or-long v24, v24, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v26

    :try_start_1
    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v26

    :cond_23
    if-nez v4, :cond_1a

    const-wide/16 v24, 0x0

    goto/16 :goto_0

    :cond_24
    const-wide/16 v26, -0x5

    and-long v24, v24, v26

    goto :goto_a

    :cond_25
    const-wide v26, -0x10000000000001L

    and-long v24, v24, v26

    goto :goto_b

    :cond_26
    const-wide/32 v26, -0x4000001

    and-long v24, v24, v26

    goto/16 :goto_0
.end method

.method public handleImageRotation(Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "HANDLE_IMAGE_ROTATION"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public hasSCloudItem()Z
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v3, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public imageEdit()V
    .locals 15

    const/4 v14, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getImageToEdit()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "DTVW"

    const-string/jumbo v4, "Photo Editor"

    invoke-static {v1, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v7, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-nez v1, :cond_1

    instance-of v1, v7, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x4

    new-array v11, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v11, v14

    aput-object v7, v11, v6

    const/4 v1, 0x2

    sget-object v3, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_EDIT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v3, v11, v1

    const/4 v1, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v11, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "SCLOUD_TEMP_DOWNLOAD"

    invoke-virtual {v1, v3, v11}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v9

    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v10

    :goto_1
    if-ge v0, v10, :cond_3

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_4

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v1, v4, v12

    if-lez v1, :cond_4

    invoke-virtual {v9, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->imageEdit(Ljava/util/ArrayList;Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {v9, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v6}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->imageEdit(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public imageEdit(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->imageEdit(Ljava/util/ArrayList;Ljava/lang/String;JZ)V

    return-void
.end method

.method public isShowChoiceDialog()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mIsShowChoiceDialog:Z

    return v0
.end method

.method public isShowDeleteDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mIsShowDeleteDialog:Z

    return v0
.end method

.method public moveToKNOX(ZZI)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "MOVE_TO_KNOX"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public moveToSecretBox(ZZZ)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "MOVE_TO_SECRETBOX"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public renameAlbumNameWithoutDialogForDCHandler(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_1

    move-object v6, p1

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f0a048b

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v6, "EditModeHelper"

    const-string/jumbo v7, "Unable to rename album. folder path is not correct"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v2, :cond_5

    move-object v6, p1

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->isMoreAlbum()Z

    move-result v6

    if-nez v6, :cond_4

    move v3, v7

    :goto_3
    if-eqz v2, :cond_6

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v6, v5, v8

    aput-object p3, v5, v7

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object v4, v5, v6

    const/4 v6, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v6

    const-string/jumbo v7, "RENAME_ALBUM_OR_FILE"

    invoke-virtual {v6, v7, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move v3, v8

    goto :goto_3

    :cond_5
    move v3, v8

    goto :goto_3

    :cond_6
    const/4 v0, -0x1

    goto :goto_4
.end method

.method public renameChannelNameWithoutDialogForDCHandler(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v2

    instance-of v5, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, -0x1

    instance-of v5, v3, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    :cond_0
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v5, p2, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->renameChannel(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/gallery3d/ui/SelectionManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "UPDATE_TITLE_EVENT"

    invoke-virtual {v5, v6, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isEvent:Z

    return-void
.end method

.method public showAlbumListDialogToCopyMove(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getMediaSetArray(Lcom/sec/android/gallery3d/data/MediaSet;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p4, v1, v7

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "SHOW_COPY_MOVE_ALBUM_LIST_DIALOG"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    const/4 v2, 0x0

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p4, v1, v7

    goto :goto_0
.end method

.method public showChangePlayerDialog(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_CHANGE_PLAYER_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public showDeleteDialog(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mIsShowDeleteDialog:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZZ)V

    return-void
.end method

.method public showDeleteDialog(ZI)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    if-eq p2, v1, :cond_0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    if-eq p2, v1, :cond_0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_FROM_RECYCLEBIN:I

    if-eq p2, v1, :cond_0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_IN_DETAILVIEW_FROM_RECYCLEBIN:I

    if-ne p2, v1, :cond_1

    :cond_0
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_DELETE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public showDeleteDialog(ZII)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_EMPTY_TRASH_DIALOG_FROM_RECYCLEBIN:I

    if-ne p2, v1, :cond_0

    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_DELETE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public showDeleteDialog(ZIZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_DELETE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public showDeleteDialog(ZZ)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_MEDIA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_DELETE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public showDeleteDialog(ZZZZ)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_MEDIA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_DELETE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public showDetailsDialog(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->getInstance()Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->execute(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    return-void
.end method

.method public showHideDialog(ZZZ)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "HIDE_ALBUMS"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public showNewAlbumCopyMoveDialog(Ljava/lang/String;Z)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_NEW_ALBUM_COPY_MOVE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public showNewAlbumDialog(Z)V
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-boolean p1, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mIsShowChoiceDialog:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkUseSDCard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->NewAlbumUsingPickMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_STORAGE_CHOICE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_NEW_ALBUM_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public showRemoveConfirmTagDialog(ZLcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "EditModeHelper"

    const-string/jumbo v4, "currentViewState is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->getContentsForFaceTag()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v4, "START_FACE_TAG"

    invoke-virtual {v3, v4, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public showRenameDialog(Z)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isEvent:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialog(ZZZ)V

    return-void
.end method

.method public showRenameDialog(ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isEvent:Z

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialog(ZZZLjava/lang/String;)V

    return-void
.end method

.method public showRenameDialogForDCHandler(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isEvent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    const/4 v1, 0x6

    aput-object p3, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_RENAME_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public showSetAsDialog(ZLjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_SET_AS_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public start360ImageEditor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.android.mimage.gear360editor"

    sget-object v3, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->IMAGE_360EDITOR_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "input"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "EditModeHelper"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startActionPrint(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "START_ACTION_PRINT"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object p4, v0, v6

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "START_ALBUM_CHOICE_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object p4, v0, v6

    goto :goto_0
.end method

.method public startCollageMaker()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "START_COLLAGE_APP"

    invoke-virtual {v2, v3, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0a069f

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "CrossPhotoEditorCollageEditor"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void
.end method

.method public startContactActivity(I)V
    .locals 7

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    invoke-interface {v3, v5}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;

    const-string/jumbo v5, "CscFeature_Contact_ReplacePackageAs"

    invoke-interface {v0, v5}, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string/jumbo v4, "com.android.contacts"

    :cond_1
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "additional"

    const-string/jumbo v6, "include-profile"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5, v2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0029

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v5, "EditModeHelper"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startContactUs()V
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "START_CONTACT_US"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startEventChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZLjava/lang/String;)V
    .locals 7

    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getMediaSetArray(Lcom/sec/android/gallery3d/data/MediaSet;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "START_EVENT_CHOICE_ACTIVITY"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    const/4 v2, 0x0

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    goto :goto_0
.end method

.method public startGifMaker()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v4, v1, v6

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;->START_AGIF_DEFAULT:Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;

    aput-object v5, v1, v4

    const/4 v4, 0x2

    aput-object v3, v1, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v5, "START_GIF_MAKER"

    invoke-virtual {v4, v5, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0689

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "CrossPhotoEditorAnimationEditor"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method public startHLVideo(I)V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "START_HLVIDEO"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startSlideshow(Ljava/lang/String;I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_0

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v4, v2, v6

    aput-object p1, v2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v5, "START_SLIDESHOW"

    invoke-virtual {v4, v5, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemOrderMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v5, "EXIT_SELECTION_MODE"

    invoke-virtual {v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x6

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v4, v2, v6

    aput-object p1, v2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v9

    const/4 v4, 0x4

    aput-object v1, v2, v4

    const/4 v4, 0x5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashMap;

    move-object v1, v4

    goto :goto_1
.end method

.method public startSmartViewSlideshow(Ljava/util/LinkedHashMap;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mContext:Landroid/content/Context;

    aput-object v1, v0, v3

    const/4 v1, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    const/4 v1, 0x5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "START_SLIDESHOW"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

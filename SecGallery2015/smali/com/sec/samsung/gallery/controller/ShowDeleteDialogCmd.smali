.class public Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowDeleteDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;
    }
.end annotation


# static fields
.field private static final ANIM_PREPARE_TIME:I = 0x2bc

.field private static final ANIM_PREPARE_TIME_ALBUM:I = 0x5dc

.field private static final EXTERNAL_SD_DIRECTORY:Ljava/lang/String;

.field private static final POPUP_TEXT_FIRST_STRING_INDEX:I = 0x0

.field private static final POPUP_TEXT_MEDIA_COUNT_INDEX:I = 0x2

.field private static final POPUP_TEXT_SECOND_STRING_INDEX:I = 0x1

.field private static final POPUP_TEXT_TYPE_ITEMS:Ljava/lang/String; = "NULL"

.field private static final POPUP_TEXT_TYPE_ONLY_DEFAULT_ITEM:Ljava/lang/String; = "001"

.field private static final POPUP_TEXT_TYPE_ONLY_IMAGE:Ljava/lang/String; = "100"

.field private static final POPUP_TEXT_TYPE_ONLY_IMAGES:Ljava/lang/String; = "200"

.field private static final POPUP_TEXT_TYPE_ONLY_VIDEO:Ljava/lang/String; = "010"

.field private static final POPUP_TEXT_TYPE_ONLY_VIDEOS:Ljava/lang/String; = "020"

.field private static final TAG:Ljava/lang/String; = "ShowDeleteDialogCmd"

.field private static final USE_PROGRESS_POPUP_ALBUM_COUNT:I = 0xc8


# instance fields
.field private mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

.field private mBSItemCount:I

.field private mClountItemCount:I

.field private mContext:Landroid/content/Context;

.field private mDefaultTypeCount:I

.field private mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

.field private mEventType:I

.field private mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mImageTypeCount:I

.field private mIsAirButton:Z

.field private mIsCancelled:Z

.field private mIsFromBurstShotViewer:Z

.field private mIsLocalEventItemDelete:Z

.field private mIsSharedChannel:Z

.field private mMediaType:I

.field private mNumberOfContentsToDelete:I

.field private mOneBurstShotTotalCount:I

.field private final mPopUpTextTableForCloudDelete:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

.field private mVideoTypeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->EXTERNAL_SD_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mPopUpTextTableForCloudDelete:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsAirButton:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsCancelled:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsFromBurstShotViewer:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsLocalEventItemDelete:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    iput v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    iput v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    iput v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mNumberOfContentsToDelete:I

    iput v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    iput v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mMediaType:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getOneItemCloudDeletePopupTextStringId()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->showProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->EXTERNAL_SD_DIRECTORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->checkLowStorageMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsCancelled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getMediaTypeOfItemsToDelete()I

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/app/StateManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsLocalEventItemDelete:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getTotalSelectedItems()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopupTitleStringId()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    return-object v0
.end method

.method private checkLowStorageMode()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;->CHECK_STORAGE:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "LOWSTORAGE_MODE_RECEIVER"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private checkMetaItemExist()Z
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloud:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v10, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum;

    if-eqz v10, :cond_1

    move-object v1, v3

    check-cast v1, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum;->getTotalMediaItemCount()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v11, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-eqz v11, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getCacheStatus()I

    move-result v11

    if-ne v11, v9, :cond_2

    move v7, v9

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_0
.end method

.method private createNlgRequestInfo()Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v0

    new-instance v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getMediaTypeOfItemsToDelete()I

    move-result v4

    invoke-direct {v1, v3, v0, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;II)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->isFromRecycleBinView()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "RecycleBinPopUp"

    :goto_0
    invoke-interface {v1, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v3, "DeletePopUp"

    goto :goto_0
.end method

.method private dismissdialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->dismissDialog()V

    :cond_0
    return-void
.end method

.method private getBurstShotCount()I
    .locals 12

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v8

    instance-of v3, v8, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v0, 0x0

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v8, v4, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v8, :cond_0

    instance-of v8, v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-nez v8, :cond_0

    instance-of v8, v4, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v8, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v8, v4}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotCount(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    iput v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    :goto_1
    add-int/2addr v0, v7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v9, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    goto :goto_1

    :cond_2
    iput v9, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v9, v5, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v9, :cond_5

    instance-of v9, v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-nez v9, :cond_5

    instance-of v9, v5, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v9, :cond_4

    :cond_5
    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v10, 0x200

    invoke-virtual {v5, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    goto :goto_3

    :cond_6
    return v0
.end method

.method private getItemsCloudDeletePopupTextStringId()I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a02a6

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a02a0

    goto :goto_0

    :cond_1
    const v0, 0x7f0a02a5

    goto :goto_0
.end method

.method private getMediaTypeOfItemsToDelete()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mMediaType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mMediaType:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaTypeOfItems()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mMediaType:I

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mMediaType:I

    goto :goto_0
.end method

.method private getNumberOfItemsToDelete()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    return v0
.end method

.method private getOneItemCloudDeletePopupTextStringId()I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a030c

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0306

    goto :goto_0

    :cond_1
    const v0, 0x7f0a030b

    goto :goto_0
.end method

.method private getPopUpTextForCloudDelete()Ljava/lang/String;
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getTypeCodeForCloudDelete()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mPopUpTextTableForCloudDelete:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mPopUpTextTableForCloudDelete:Ljava/util/HashMap;

    const-string/jumbo v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :cond_0
    aget v2, v0, v6

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    aget v4, v0, v7

    new-array v5, v8, [Ljava/lang/Object;

    aget v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    aget v4, v0, v8

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mClountItemCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    aget v4, v0, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    aget v4, v0, v8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getPopupText(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    const v13, 0x7f0a00f8

    const v9, 0x7f0a00bb

    const v10, 0x7f0a006b

    const/4 v8, 0x0

    const/4 v12, 0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    iput v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v4

    instance-of v7, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsAirButton:Z

    if-nez v7, :cond_0

    invoke-direct {p0, p1, v4}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopupTextAlbum(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getSCloudItemCount()[I

    move-result-object v2

    if-eqz v2, :cond_1

    aget v6, v2, v8

    :goto_1
    if-eqz v2, :cond_2

    aget v5, v2, v12

    :goto_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->initializePopUpTextForCloudDelete()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v7

    const-class v11, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    if-ne v7, v11, :cond_4

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_MEDIA:I

    if-ne v7, v11, :cond_4

    if-ne v4, v12, :cond_3

    instance-of v7, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v7, :cond_3

    const v7, 0x7f0a0310

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    :cond_2
    move v5, v8

    goto :goto_2

    :cond_3
    if-le v4, v12, :cond_4

    const v7, 0x7f0a02a9

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    instance-of v7, v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getBurstShotCount()I

    :cond_5
    if-ne v4, v12, :cond_1f

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v7

    if-nez v7, :cond_6

    instance-of v7, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v7, :cond_19

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    if-eqz v7, :cond_19

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v7

    const-class v11, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    if-eq v7, v11, :cond_19

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v7

    const-class v11, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eq v7, v11, :cond_19

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v7

    if-nez v7, :cond_19

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSupportDeleteFromMapView()Z

    move-result v7

    if-nez v7, :cond_19

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSupportDeleteDialogFromMapView()Z

    move-result v7

    if-nez v7, :cond_19

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    if-eq v7, v11, :cond_19

    instance-of v7, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    if-eqz v7, :cond_7

    invoke-virtual {p1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_7
    const v7, 0x7f0a0310

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_8
    instance-of v7, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v7, :cond_14

    if-eqz v6, :cond_e

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    if-le v7, v12, :cond_b

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_9

    const v7, 0x7f0a044d

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_9
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_a

    const v7, 0x7f0a044c

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_a
    const v7, 0x7f0a044e

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_b
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_c

    const v7, 0x7f0a030c

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_c
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_d

    const v7, 0x7f0a0306

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopUpTextForCloudDelete()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_e
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    if-eqz v7, :cond_f

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getMediaTypeOfItemsToDelete()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_1
    const v7, 0x7f0a0100

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_2
    const v7, 0x7f0a0102

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getMediaTypeOfItemsToDelete()I

    move-result v7

    const/4 v11, 0x4

    if-ne v7, v11, :cond_10

    const v7, 0x7f0a0329

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_10
    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    if-le v7, v12, :cond_13

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsFromBurstShotViewer:Z

    if-eqz v7, :cond_11

    const v7, 0x7f0a0450

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_11
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_12

    move v7, v9

    :goto_3
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_12
    move v7, v10

    goto :goto_3

    :cond_13
    const v7, 0x7f0a0328

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_14
    instance-of v7, v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-eqz v7, :cond_18

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    if-nez v7, :cond_16

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_15

    const v7, 0x7f0a0022

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_15
    const v7, 0x7f0a0019

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_16
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_17

    const v7, 0x7f0a0021

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_17
    const v7, 0x7f0a0020

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_18
    const v7, 0x7f0a001a

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_19
    instance-of v7, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v7, :cond_27

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    if-le v7, v12, :cond_27

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsFromBurstShotViewer:Z

    if-eqz v7, :cond_1a

    const v7, 0x7f0a0450

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1a
    if-eqz v6, :cond_1d

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const v7, 0x7f0a044d

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1b
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const v7, 0x7f0a044c

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1c
    const v7, 0x7f0a044e

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1d
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1f
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v7

    if-nez v7, :cond_20

    instance-of v7, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v7, :cond_27

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    if-eqz v7, :cond_27

    :cond_20
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v7

    const-class v9, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    if-eq v7, v9, :cond_27

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v7

    const-class v9, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eq v7, v9, :cond_27

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    sget v9, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    if-eq v7, v9, :cond_27

    instance-of v7, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v7, :cond_22

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    if-eqz v7, :cond_21

    const v7, 0x7f0a00f3

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_21
    const v7, 0x7f0a02a9

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_22
    instance-of v7, v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-eqz v7, :cond_26

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    if-nez v7, :cond_24

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_23

    const v7, 0x7f0a02af

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_23
    const v7, 0x7f0a0299

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_24
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_25

    const v7, 0x7f0a02ae

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_25
    const v7, 0x7f0a02ad

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_26
    const v7, 0x7f0a029a

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_27
    sub-int/2addr v4, v6

    iput v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mClountItemCount:I

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    sub-int/2addr v7, v5

    iput v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-direct {p0, p1, v6, v5}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->makeCloudDeletePopupTextForUsa(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-direct {p0, p1, v4}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->makeLocalDeletePopupText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_28
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-direct {p0, p1, v6, v5}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->makeCloudDeletePopupTextForJapan(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_29
    invoke-direct {p0, p1, v6, v5}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->makeCloudDeletePopupText(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_2a
    move-object v3, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getPopupTextAlbum(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/16 v2, 0xc8

    if-le p2, v2, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;

    invoke-direct {v1, p0, p2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;-><init>(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;I)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getTotalSelectedItems()I

    move-result v0

    if-ne p2, v5, :cond_2

    if-ne v0, v5, :cond_1

    const v2, 0x7f0a00e2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v2, 0x7f0a00e3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const v2, 0x7f0a00e5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getPopupTitleStringId()I
    .locals 6

    const/4 v5, 0x1

    const v2, 0x7f0a00e0

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v3

    if-le v3, v5, :cond_0

    const v3, 0x7f0a00e4

    :goto_0
    return v3

    :cond_0
    const v3, 0x7f0a00e1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-nez v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getBurstShotCount()I

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v1

    iget v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    sub-int v0, v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eq v3, v4, :cond_d

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    if-eq v3, v4, :cond_d

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSupportDeleteFromMapView()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSupportDeleteDialogFromMapView()Z

    move-result v3

    if-nez v3, :cond_d

    iget v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    if-eq v3, v4, :cond_d

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getMediaTypeOfItemsToDelete()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    const v2, 0x7f0a0329

    :cond_4
    :goto_1
    move v3, v2

    goto :goto_0

    :cond_5
    const v2, 0x7f0a0328

    goto :goto_1

    :cond_6
    const v2, 0x7f0a00e0

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v3

    if-le v3, v5, :cond_8

    const v2, 0x7f0a02af

    goto :goto_1

    :cond_8
    const v2, 0x7f0a0022

    goto :goto_1

    :cond_9
    const v2, 0x7f0a00e0

    goto :goto_1

    :cond_a
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v3, :cond_b

    const v2, 0x7f0a00e0

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v3

    if-le v3, v5, :cond_c

    const v2, 0x7f0a0366

    goto :goto_1

    :cond_c
    const v2, 0x7f0a0357

    goto :goto_1

    :cond_d
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v3, :cond_e

    iget v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_MEDIA:I

    if-ne v3, v4, :cond_e

    const v2, 0x7f0a035b

    goto :goto_1

    :cond_e
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v3, :cond_11

    iget v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mOneBurstShotTotalCount:I

    if-le v3, v5, :cond_10

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsFromBurstShotViewer:Z

    if-eqz v3, :cond_f

    const v2, 0x7f0a00fc

    goto/16 :goto_1

    :cond_f
    const v2, 0x7f0a00e6

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v2, 0x7f0a00ea

    goto/16 :goto_1

    :cond_10
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getMediaTypeOfItemsToDelete()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const v2, 0x7f0a00e0

    goto/16 :goto_1

    :pswitch_1
    const v2, 0x7f0a00ef

    goto/16 :goto_1

    :pswitch_2
    const v2, 0x7f0a0103

    goto/16 :goto_1

    :cond_11
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v3, :cond_4

    :cond_12
    if-nez v0, :cond_14

    iget v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    if-le v3, v5, :cond_13

    const v2, 0x7f0a00e7

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v2, 0x7f0a00eb

    goto/16 :goto_1

    :cond_13
    const v2, 0x7f0a00e6

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v2, 0x7f0a00ea

    goto/16 :goto_1

    :cond_14
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getMediaTypeOfItemsToDelete()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v3

    if-le v3, v5, :cond_17

    const v2, 0x7f0a00f2

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v3

    if-le v3, v5, :cond_15

    const v2, 0x7f0a00f0

    goto/16 :goto_1

    :cond_15
    const v2, 0x7f0a00ef

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v3

    if-le v3, v5, :cond_16

    const v2, 0x7f0a0104

    goto/16 :goto_1

    :cond_16
    const v2, 0x7f0a0103

    goto/16 :goto_1

    :cond_17
    const v2, 0x7f0a00e0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private getSCloudItemCount()[I
    .locals 12

    const-wide/16 v10, 0x200

    const/4 v8, 0x0

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v6, 0x2

    new-array v2, v6, [I

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mImageTypeCount:I

    iput v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mVideoTypeCount:I

    iput v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDefaultTypeCount:I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v6, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v6, :cond_1

    instance-of v6, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-eqz v6, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getServerId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    move-object v6, v0

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->itemCounterForType(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_1

    :cond_3
    instance-of v6, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v6, :cond_2

    move-object v6, v0

    check-cast v6, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudExistedItem()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    move-object v6, v0

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    aput v4, v2, v8

    const/4 v6, 0x1

    aput v3, v2, v6

    goto :goto_0
.end method

.method private getSelectedItemType()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    goto :goto_0
.end method

.method private getTotalSelectedItems()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v0

    return v0
.end method

.method private getTypeCodeForCloudDelete()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mImageTypeCount:I

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mVideoTypeCount:I

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDefaultTypeCount:I

    if-le v2, v3, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mImageTypeCount:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mVideoTypeCount:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDefaultTypeCount:I

    goto :goto_2
.end method

.method private handleDeleteMedias()V
    .locals 24

    sget-object v20, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeleteVI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "ShowDeleteDialogCmd"

    const-string/jumbo v21, "send noti - DELETE_ANIM_START"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v20

    const-string/jumbo v21, "DELETE_ANIM_START"

    invoke-virtual/range {v20 .. v21}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    :cond_1
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    move/from16 v20, v0

    if-nez v20, :cond_2

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move/from16 v20, v0

    if-nez v20, :cond_2

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    move/from16 v20, v0

    if-nez v20, :cond_2

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move/from16 v20, v0

    if-nez v20, :cond_2

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move/from16 v20, v0

    if-nez v20, :cond_2

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v20

    const-class v21, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v20

    const-class v21, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Landroid/app/Activity;

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v20

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    move/from16 v20, v0

    sget v21, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v7

    sget-object v20, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    sget-object v20, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v20, v19

    check-cast v20, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkAndStopSharing()V

    :cond_3
    invoke-static {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v8, v0, v1, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->deleteChannel(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Z)V

    :cond_4
    sget-object v20, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    check-cast v19, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getCurrentMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v14

    instance-of v0, v14, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    check-cast v14, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getBaseSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v14

    :cond_5
    instance-of v0, v14, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v9, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->deleteEventShareItem(Landroid/content/Context;ILcom/sec/android/gallery3d/ui/SelectionManager;)V

    :cond_6
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v20

    const-string/jumbo v21, "EXIT_SELECTION_MODE"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v6, v0, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->deleteChannel(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Z)V

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getSelectChannelID()I

    move-result v11

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v11, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->deleteEventShareItem(Landroid/content/Context;ILcom/sec/android/gallery3d/ui/SelectionManager;)V

    goto :goto_0

    :cond_9
    invoke-static {v7}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->deleteEvent(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Z)V

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v13

    if-eqz v13, :cond_b

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0a02e2

    invoke-static/range {v20 .. v21}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopupTitleStringId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v10

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_d

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    :cond_d
    new-instance v20, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Landroid/app/Activity;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->saveDialog(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)V

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v20, v0

    new-instance v21, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual/range {v20 .. v21}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_e
    new-instance v16, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Lcom/sec/android/gallery3d/data/DataManager;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/util/FileUtil;->operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Ljava/lang/String;ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Lcom/sec/samsung/gallery/util/MediaOperations;

    goto/16 :goto_1
.end method

.method private initializePopUpTextForCloudDelete()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getItemsCloudDeletePopupTextStringId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mPopUpTextTableForCloudDelete:Ljava/util/HashMap;

    const-string/jumbo v2, "200"

    new-array v3, v8, [I

    const v4, 0x7f0a00f9

    aput v4, v3, v5

    aput v0, v3, v6

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mImageTypeCount:I

    aput v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mPopUpTextTableForCloudDelete:Ljava/util/HashMap;

    const-string/jumbo v2, "020"

    new-array v3, v8, [I

    const v4, 0x7f0a00fb

    aput v4, v3, v5

    aput v0, v3, v6

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mVideoTypeCount:I

    aput v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mPopUpTextTableForCloudDelete:Ljava/util/HashMap;

    const-string/jumbo v2, "NULL"

    new-array v3, v8, [I

    const v4, 0x7f0a00fa

    aput v4, v3, v5

    aput v0, v3, v6

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mImageTypeCount:I

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mVideoTypeCount:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDefaultTypeCount:I

    add-int/2addr v4, v5

    aput v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isFromRecycleBinView()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private itemCounterForType(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDefaultTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDefaultTypeCount:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mImageTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mImageTypeCount:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mVideoTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mVideoTypeCount:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private makeCloudDeletePopupText(Landroid/content/Context;II)Ljava/lang/String;
    .locals 7

    const v2, 0x7f0a0278

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v1, ""

    if-lez p2, :cond_0

    if-ne p2, v5, :cond_2

    if-ne p3, v5, :cond_1

    const v2, 0x7f0a027b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopUpTextForCloudDelete()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-ne p2, p3, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v5, :cond_6

    if-le v0, v5, :cond_4

    const v2, 0x7f0a0276

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v2, 0x7f0a0277

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    if-le v0, v5, :cond_7

    const v2, 0x7f0a0279

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const v2, 0x7f0a027a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopUpTextForCloudDelete()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private makeCloudDeletePopupTextForJapan(Landroid/content/Context;II)Ljava/lang/String;
    .locals 7

    const v2, 0x7f0a0291

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v1, ""

    if-lez p2, :cond_0

    if-ne p2, v5, :cond_2

    if-ne p3, v5, :cond_1

    const v2, 0x7f0a02fc

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopUpTextForCloudDelete()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-ne p2, p3, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v5, :cond_6

    if-le v0, v5, :cond_4

    const v2, 0x7f0a028d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v2, 0x7f0a028f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    if-le v0, v5, :cond_7

    const v2, 0x7f0a02f8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const v2, 0x7f0a02fa

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopUpTextForCloudDelete()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private makeCloudDeletePopupTextForUsa(Landroid/content/Context;II)Ljava/lang/String;
    .locals 7

    const v2, 0x7f0a0292

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v1, ""

    if-lez p2, :cond_0

    if-ne p2, v5, :cond_2

    if-ne p3, v5, :cond_1

    const v2, 0x7f0a02fd

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopUpTextForCloudDelete()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-ne p2, p3, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v5, :cond_6

    if-le v0, v5, :cond_4

    const v2, 0x7f0a028e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v2, 0x7f0a0290

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    if-le v0, v5, :cond_7

    const v2, 0x7f0a02f9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const v2, 0x7f0a02fb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopUpTextForCloudDelete()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private makeLocalDeletePopupText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    const v7, 0x7f0a0298

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v1, ""

    if-ne p2, v5, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    if-ne v2, v5, :cond_1

    const v2, 0x7f0a00f5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a0300

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getMediaTypeOfItemsToDelete()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const v2, 0x7f0a030f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v2, 0x7f0a0328

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0a0329

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-le p2, v5, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    if-ne p2, v2, :cond_3

    const v2, 0x7f0a0295

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    if-lez v2, :cond_c

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    sub-int v0, p2, v2

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    if-le v2, v5, :cond_8

    if-le v0, v5, :cond_5

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0a0296

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    const v2, 0x7f0a0293

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f0a0297

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const v2, 0x7f0a0294

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mBSItemCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    if-le v0, v5, :cond_a

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x7f0a02fe

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    const v2, 0x7f0a00f7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x7f0a02ff

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    const v2, 0x7f0a00f6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getMediaTypeOfItemsToDelete()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    const v2, 0x7f0a00fa

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const v2, 0x7f0a00f9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    const v2, 0x7f0a029c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u200f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_5
    const v2, 0x7f0a00fb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private sendResponseDCState()V
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsFromBurstShotViewer:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v1, "DeletePopUp"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->isFromRecycleBinView()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "RecycleBinPopUp"

    :goto_1
    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v1, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->createNlgRequestInfo()Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "DeletePopUp"

    goto :goto_1
.end method

.method private showCloudDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->dismissdialog()V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_CLOUD_MEDIA:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    const v2, 0x7f0a009e

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/sec/samsung/gallery/core/Event;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->showDialog()V

    return-void
.end method

.method private showDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->dismissdialog()V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    :goto_1
    new-instance v2, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopupTitleStringId()I

    move-result v3

    invoke-direct {v2, p1, v3, p2, v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/sec/samsung/gallery/core/Event;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->setSelectedStoryCount(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsAirButton:Z

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->setIsAirButton(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v2, p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->showDialog()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_MEDIA:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    goto :goto_1
.end method

.method private showProgressDialog(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0335

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private showRecycleBinDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->dismissdialog()V

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_EMPTY_TRASH_DIALOG_FROM_RECYCLEBIN:I

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_EMPTY_TRASH_FROM_RECYCLEBIN:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "mediaType"

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getSelectedItemType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopupTitleStringId()I

    move-result v3

    invoke-direct {v2, p1, v3, p2, v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/sec/samsung/gallery/core/Event;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsAirButton:Z

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->setIsAirButton(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v2, p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mDeleteDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->showDialog()V

    return-void

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_IN_DETAILVIEW_FROM_RECYCLEBIN:I

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_IN_DETAILVIEW_FROM_RECYCLEBIN:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_FROM_RECYCLEBIN:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 12

    const/4 v11, 0x5

    const/4 v7, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    aget-object v5, v1, v8

    check-cast v5, Landroid/content/Context;

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    aget-object v5, v1, v9

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsAirButton:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    array-length v5, v1

    if-ne v5, v10, :cond_0

    aget-object v5, v1, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    :cond_0
    array-length v5, v1

    if-ne v5, v11, :cond_3

    aget-object v5, v1, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_EMPTY_TRASH_DIALOG_FROM_RECYCLEBIN:I

    if-ne v0, v5, :cond_2

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    aget-object v5, v1, v10

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mNumberOfContentsToDelete:I

    :goto_0
    array-length v5, v1

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    aget-object v5, v1, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    aget-object v5, v1, v11

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    :goto_1
    iput v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mMediaType:I

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsCancelled:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-nez v4, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    if-ne v5, v6, :cond_1

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_MEDIA:I

    if-eq v0, v5, :cond_5

    :cond_1
    iput-boolean v9, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsCancelled:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->dismissdialog()V

    :goto_2
    return-void

    :cond_2
    aget-object v5, v1, v10

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsFromBurstShotViewer:Z

    goto :goto_0

    :cond_3
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsFromBurstShotViewer:Z

    goto :goto_0

    :cond_4
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsSharedChannel:Z

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mNumberOfContentsToDelete:I

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a02e2

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_2

    :cond_6
    const-string/jumbo v5, "ShowDeleteDialogCmd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "eventType is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " the number of selected items : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-eqz v5, :cond_7

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    if-ne v0, v5, :cond_7

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsLocalEventItemDelete:Z

    :cond_7
    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_MEDIA:I

    if-ne v0, v5, :cond_b

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    instance-of v5, v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "UNLOCK_TOUCH"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->checkMetaItemExist()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a009d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->showCloudDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    if-nez v4, :cond_a

    new-instance v5, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    :cond_a
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->handleDeleteMedias()V

    :goto_3
    new-instance v5, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->sendResponseDCState()V

    goto/16 :goto_2

    :cond_b
    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_FROM_RECYCLEBIN:I

    if-ne v0, v5, :cond_d

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I

    move-result v3

    if-ne v3, v9, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a022d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->showRecycleBinDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0236

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_d
    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_IN_DETAILVIEW_FROM_RECYCLEBIN:I

    if-ne v0, v5, :cond_f

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v5

    if-ne v5, v10, :cond_e

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0313

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->showRecycleBinDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0303

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_f
    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_EMPTY_TRASH_DIALOG_FROM_RECYCLEBIN:I

    if-ne v0, v5, :cond_10

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0236

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mNumberOfContentsToDelete:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->showRecycleBinDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getPopupText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsCancelled:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/FileUtil;->cancelOperation()V

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentCount()I

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    :cond_1
    :goto_0
    const-string/jumbo v2, "ShowDeleteDialogCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCancel progressCnt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    check-cast v1, Lcom/sec/samsung/gallery/core/Event;

    new-instance v4, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_CLOUD_MEDIA:I

    if-ne v4, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->handleDeleteMedias()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_EMPTY_TRASH_FROM_RECYCLEBIN:I

    if-ne v4, v5, :cond_2

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    aput-object v4, v2, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v9

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "SCLOUD_RECYCLEBIN_FILE_PROCESSING"

    invoke-virtual {v4, v5, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_FROM_RECYCLEBIN:I

    if-eq v4, v5, :cond_3

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_IN_DETAILVIEW_FROM_RECYCLEBIN:I

    if-ne v4, v5, :cond_4

    :cond_3
    new-array v2, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    aput-object v4, v2, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v9

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "SCLOUD_RECYCLEBIN_FILE_PROCESSING"

    invoke-virtual {v4, v5, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_MEDIA:I

    if-eq v4, v5, :cond_5

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    if-ne v4, v5, :cond_0

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsFromBurstShotViewer:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "DELETE_BURST_SHOT_ITEM"

    invoke-virtual {v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "ACTION_DELETE_CONFIRM"

    invoke-virtual {v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->checkMetaItemExist()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a009d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v3}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->showCloudDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->handleDeleteMedias()V

    goto/16 :goto_0
.end method

.class public Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "PagersAdapter.java"


# static fields
.field public static final ATTACHVIEWPAGER_TAB_CAMERA:I = 0x0

.field public static final ATTACHVIEWPAGER_TAB_IMAGES:I = 0x1

.field public static final NUMBER_OF_PAGE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static isMultiPickImage:Z

.field public static maxImage:I


# instance fields
.field private cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

.field private galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

.field private mContainer:Landroid/view/View;

.field public mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mCurrentTab:I

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mIsFullMode:Z

.field public mMaxHeight:I

.field public mMinHeight:I

.field registeredFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->isMultiPickImage:Z

    sput v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->maxImage:I

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;Landroid/content/Context;Landroid/app/Fragment;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->registeredFragments:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContainer:Landroid/view/View;

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContainerId:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mMinHeight:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mMaxHeight:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mCurrentTab:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;)Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setPictureSize(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 18

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedFacing()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedFacing()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v4

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v10

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;

    check-cast v13, Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v13, v5, Landroid/graphics/Point;->x:I

    iget v14, v5, Landroid/graphics/Point;->y:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-double v14, v13

    iget v13, v5, Landroid/graphics/Point;->x:I

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v14

    int-to-double v14, v14

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v8, v14, v16

    sub-double v14, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, v6

    if-gez v14, :cond_2

    sub-double v14, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-object v12, v11

    goto :goto_1

    :cond_3
    sget-object v13, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CAMERA_FRONT "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Ratio : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Gap : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setPictureSize(III)V

    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v14

    int-to-double v14, v14

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v8, v14, v16

    sub-double v14, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, v6

    if-gez v14, :cond_4

    sub-double v14, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-object v12, v11

    goto :goto_2

    :cond_5
    sget-object v13, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CAMERA_REAR "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Ratio : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Gap : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setPictureSize(III)V

    goto/16 :goto_0
.end method


# virtual methods
.method public applyExpandValue(Landroid/app/Fragment;I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    instance-of v4, p1, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    if-eqz v4, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    const/4 v4, 0x1

    if-ne p2, v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_2

    div-int/lit8 v1, v0, 0x2

    :goto_0
    if-ge v0, v1, :cond_0

    move v1, v0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v4, v1, v0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->enableExpansion(III)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08037e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabletDevice()Z

    move-result v4

    if-nez v4, :cond_5

    move v3, v0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_6

    div-int/lit8 v1, v0, 0x2

    :goto_3
    if-ge v0, v1, :cond_4

    move v1, v0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v4, v1, v0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->enableExpansion(III)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080361

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3
.end method

.method public destroy()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->destroy()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->registeredFragments:Landroid/util/SparseArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++++++++ destroyItem("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PagerAdapter getItem() - position("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    sget-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->isMultiPickImage:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->setExpansionFragments(Z)V

    :cond_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    sget-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->isMultiPickImage:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->initialize(II)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->maxImage:I

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setMaxPickCount(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->enableExpansion(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setExpansionMode(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->initialize(II)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    if-nez v1, :cond_3

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    invoke-direct {v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->enableExpansion(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->setExpansionMode(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    instance-of v1, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public getRegisteredFragment(I)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public hideHelpCamera()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->hideHelpCamera()V

    :cond_0
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mCurrentTab:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->applyExpandValue(Landroid/app/Fragment;I)V

    return-object v0
.end method

.method public isCameraOpening()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getCameraFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyMultiWindowStateChangedToRclCamera(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->getRegisteredFragment(I)Landroid/app/Fragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->notifyMultiWindowStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public setColorForDoneText(I)V
    .locals 6

    :try_start_0
    const-string v4, "com.sec.android.gallery3d.rcl.provider.view.GalleryPickerFragment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "mConsumerPrimaryColor"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v0, v4, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    const-string v4, "initGalleryPickerButtonView"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setEnableGoToTop(Z)V
    .locals 10

    :try_start_0
    const-string v6, "com.sec.android.gallery3d.rcl.provider.view.GalleryPickerFragment"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "mPickerGridView"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "com.sec.android.gallery3d.rcl.provider.view.PickerGridView"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v6, "semSetGoToTopEnabled"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setExpandValue(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mMinHeight:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mMaxHeight:I

    return-void
.end method

.method public setExpandValue(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContainer:Landroid/view/View;

    return-void
.end method

.method public setExpansionFragments(Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->getRegisteredFragment(I)Landroid/app/Fragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->setExpansion(Z)Z

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->getRegisteredFragment(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->setExpansion(Z)Z

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getCameraFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->setExpansion(Z)Z

    :cond_1
    return-void
.end method

.method public setMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mIsFullMode:Z

    return-void
.end method

.method public showHelpCamera()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->cameraFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->showHelpCamera()V

    :cond_0
    return-void
.end method

.method public showTabSpace(Z)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080528

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->getRegisteredFragment(I)Landroid/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getCameraFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setShutterBoxExtraMargin(I)V

    :cond_0
    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public updateExpandValueOfFragments(I)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->getRegisteredFragment(I)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->applyExpandValue(Landroid/app/Fragment;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->getRegisteredFragment(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->applyExpandValue(Landroid/app/Fragment;I)V

    :cond_0
    return-void
.end method

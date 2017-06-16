.class public Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;
.super Lcom/samsung/android/sdk/rcl/RclExpansionFragment;
.source "CameraFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;
.implements Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;


# instance fields
.field private cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

.field private mHelpText:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    return-void
.end method

.method private getNearestRatio(DLjava/util/List;)Landroid/util/Size;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, p1, v8

    if-gez v7, :cond_0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double p1, v8, p1

    :cond_0
    const/4 v1, -0x1

    const/4 v0, -0x1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    int-to-double v8, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    int-to-double v10, v0

    div-double v4, v8, v10

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v10

    int-to-double v10, v10

    div-double v2, v8, v10

    sub-double v8, p1, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double v10, p1, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object v7
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    :cond_0
    return-void
.end method

.method public enableExpansion(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->enableExpansion(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->enableExpansion(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setExpansionMode(I)V

    :cond_0
    return-void
.end method

.method public getCameraFragment()Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    return-object v0
.end method

.method public hideHelpCamera()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->mHelpText:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->mHelpText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCameraOpened(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onCameraOpened(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void
.end method

.method public onCaptureAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onCaptureAvailable()Z

    move-result v0

    return v0
.end method

.method public onClose(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onClose(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 16

    invoke-super/range {p0 .. p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getView()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_8

    const v0, 0x7f0e03cb

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f08024b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const/4 v1, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f08024a

    const v5, 0x7f08024a

    const v6, 0x7f08024c

    const v7, 0x7f08024a

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V

    :cond_2
    const v0, 0x7f0e03d0

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080248

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f080249

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V

    :cond_3
    const v0, 0x7f0e03cf

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f080247

    const v4, 0x7f080247

    invoke-static {v0, v1, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    :cond_4
    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f08024a

    const v9, 0x7f08024a

    const v10, 0x7f08024c

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V

    :cond_6
    const v0, 0x7f0e03d1

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f08024a

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    invoke-static/range {v6 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V

    :cond_7
    const v0, 0x7f0e03d2

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_8

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f08022d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0805d6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v3, v15, v15, v15, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_8
    return-void
.end method

.method public onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 32

    new-instance v7, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v7, v0, v1}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    const v27, 0x7f0300a6

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, p2

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkCameraPermission(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_f

    const v27, 0x7f0e03ca

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    if-nez v27, :cond_4

    new-instance v27, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedFacing()Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabletModel()Z

    move-result v28

    const/16 v29, 0x0

    const/16 v30, 0xca

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->initialize(ZII)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    move-object/from16 v0, v27

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v0, v15, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    move v10, v11

    move/from16 v9, v26

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedFacing()Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Size;

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v28

    mul-int v28, v28, v9

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v29

    mul-int v29, v29, v10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v29

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v30

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setPictureSize(III)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedFacing()Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Size;

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v28

    mul-int v28, v28, v9

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v29

    mul-int v29, v29, v10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v29

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v30

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setPictureSize(III)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    new-instance v28, Landroid/util/Size;

    move-object/from16 v0, v28

    invoke-direct {v0, v10, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setMaxContainerSize(Landroid/util/Size;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f080528

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setShutterBoxExtraMargin(I)V

    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v27

    const v28, 0x7f0e03ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_3
    return-object v13

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabletModel()Z

    move-result v28

    const/16 v29, 0x1

    const/16 v30, 0xc2

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->initialize(ZII)V

    goto/16 :goto_0

    :cond_6
    move/from16 v10, v26

    move v9, v11

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v0, v15, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    move/from16 v10, v26

    move v9, v11

    :goto_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedFacing()Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_8
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Size;

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v28

    mul-int v28, v28, v9

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v29

    mul-int v29, v29, v10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v29

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v30

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setPictureSize(III)V

    const/16 v18, 0x1

    :cond_9
    if-nez v18, :cond_a

    int-to-double v0, v9

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    mul-double v28, v28, v30

    int-to-double v0, v10

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getNearestRatio(DLjava/util/List;)Landroid/util/Size;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v27

    if-lez v27, :cond_a

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v27

    if-lez v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v29

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v30

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setPictureSize(III)V

    :cond_a
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedFacing()Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_b
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Size;

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v28

    mul-int v28, v28, v9

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v29

    mul-int v29, v29, v10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v29

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v30

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setPictureSize(III)V

    const/16 v18, 0x1

    :cond_c
    if-nez v18, :cond_d

    int-to-double v0, v9

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    mul-double v28, v28, v30

    int-to-double v0, v10

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getNearestRatio(DLjava/util/List;)Landroid/util/Size;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v27

    if-lez v27, :cond_d

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v27

    if-lez v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v29

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v30

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setPictureSize(III)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    new-instance v28, Landroid/util/Size;

    move-object/from16 v0, v28

    invoke-direct {v0, v10, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setMaxContainerSize(Landroid/util/Size;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f080528

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setShutterBoxExtraMargin(I)V

    goto/16 :goto_2

    :cond_e
    move v10, v11

    move/from16 v9, v26

    goto/16 :goto_4

    :cond_f
    const v27, 0x7f0e03ce

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v27

    const v28, 0x7f0e03ce

    invoke-virtual/range {v27 .. v28}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v27

    if-eqz v27, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    :cond_10
    const v27, 0x7f0e03cb

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f070331

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f070070

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v8, :cond_11

    if-eqz v6, :cond_11

    const-string v27, "%s"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_16

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v27

    const/16 v28, 0x0

    aget-char v27, v27, v28

    invoke-static/range {v27 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isIndianChar(C)Z

    move-result v27

    if-nez v27, :cond_15

    const-string v27, "%s"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    new-instance v23, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v27, Landroid/text/style/StyleSpan;

    const/16 v28, 0x1

    invoke-direct/range {v27 .. v28}, Landroid/text/style/StyleSpan;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v30

    add-int v29, v29, v30

    const/16 v30, 0x21

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isUtraPowerSavingMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_11

    const/high16 v27, -0x1000000

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_11
    const v27, 0x7f0e03cf

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v27, 0x7f0e03d0

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    const-string v27, "android.permission-group.CAMERA"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->getIconForPermission(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;

    move-result-object v24

    if-eqz v24, :cond_13

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;->label:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isUtraPowerSavingMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_12

    const/high16 v27, -0x1000000

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_14

    const v27, 0x7f0e03d1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const v27, 0x7f0206b7

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_14
    const v27, 0x7f0e03d2

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v27, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_15
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v6, v27, v28

    move-object/from16 v0, v27

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0e03ce

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onDetach()V

    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onError(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;I)V

    return-void
.end method

.method public onFinish(Ljava/lang/Object;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onFinish(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onGalleryButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onGalleryButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void
.end method

.method public onPictureTaken(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onPictureTaken(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onProgress(Ljava/lang/Object;I)V

    return-void
.end method

.method public onRecordAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onRecordAvailable()Z

    move-result v0

    return v0
.end method

.method public onRecordButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onRecordButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void
.end method

.method public onRecordingFinished(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onRecordingFinished(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void
.end method

.method public onRecordingStarted(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onRecordingStarted(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void
.end method

.method public onRequest(Ljava/lang/Object;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onRequest(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onShutterButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onShutterButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void
.end method

.method public onStart(Ljava/lang/Object;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onStart(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onSwitchButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 0

    return-void
.end method

.method public onVideoTaken(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onVideoTaken(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public showHelpCamera()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->mHelpText:Landroid/view/View;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03007d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->mHelpText:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->mHelpText:Landroid/view/View;

    const v3, 0x7f0e0270

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const-string v3, "#ff000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->cameraFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->mHelpText:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->mHelpText:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment$2;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

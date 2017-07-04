.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;
.super Ljava/lang/Object;
.source "GlComposeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleControl"
.end annotation


# instance fields
.field private mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field mFromLevel:I

.field mScale:F

.field private mScrollDelta:F

.field mToLevel:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->isAnimationAvailable(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->isMaxLevel()Z

    move-result v0

    return v0
.end method

.method private isAnimationAvailable(FF)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    cmpl-float v2, p1, p2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    cmpg-float v2, p1, p2

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v3

    if-ge v2, v3, :cond_0

    :cond_3
    cmpl-float v2, p1, p2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private isMaxLevel()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFromLevel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mToLevel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method doScale(FFZ)Z
    .locals 15

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFromLevel:I

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFromLevel:I

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v4, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v2

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSupportExpand:Z

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v12, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v12, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const v12, 0x3e4ccccc    # 0.19999999f

    cmpg-float v12, p1, v12

    if-gtz v12, :cond_8

    if-le v4, v2, :cond_7

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v13, -0x1

    invoke-static {v12, v4, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;II)I

    move-result v3

    move v11, v3

    if-ge v11, v2, :cond_2

    move v11, v2

    :cond_2
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    :cond_3
    :goto_1
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFromLevel:I

    if-eq v3, v12, :cond_4

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5702(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFromLevel:I

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {v12, v3, v13, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->setLevel(IZF)V

    const/4 v7, 0x1

    const/4 v5, 0x1

    :cond_4
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mToLevel:I

    if-eq v11, v12, :cond_5

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5702(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)I

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mToLevel:I

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;

    move-result-object v12

    const/4 v13, 0x1

    move/from16 v0, p2

    invoke-virtual {v12, v11, v13, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->setLevel(IZF)V

    const/4 v5, 0x1

    :cond_5
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScale:F

    cmpl-float v12, v12, p1

    if-nez v12, :cond_f

    if-nez v5, :cond_f

    const/4 v7, 0x0

    :cond_6
    :goto_2
    return v7

    :cond_7
    move v3, v2

    move v11, v2

    goto :goto_0

    :cond_8
    const v12, 0x40266666    # 2.6f

    cmpl-float v12, p1, v12

    if-ltz v12, :cond_b

    if-ge v4, v1, :cond_a

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v13, 0x1

    invoke-static {v12, v4, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;II)I

    move-result v3

    move v11, v3

    if-le v11, v1, :cond_9

    move v11, v1

    :cond_9
    :goto_3
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_a
    move v3, v1

    move v11, v1

    goto :goto_3

    :cond_b
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, p1, v12

    if-lez v12, :cond_d

    if-ge v4, v1, :cond_c

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v13, 0x1

    invoke-static {v12, v4, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;II)I

    move-result v11

    goto :goto_1

    :cond_c
    move v11, v1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_d
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, p1, v12

    if-gez v12, :cond_3

    if-le v4, v2, :cond_e

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v13, -0x1

    invoke-static {v12, v4, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;II)I

    move-result v11

    goto :goto_1

    :cond_e
    move v11, v2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_f
    move/from16 v0, p1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScale:F

    if-eqz v5, :cond_16

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v12, :cond_10

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v12

    if-nez v12, :cond_11

    :cond_10
    const-string/jumbo v12, "GlComposeView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mPosCtrl or mPosCtrlNext is null, mPosCtrlNext = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_2

    :cond_11
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    if-gez v12, :cond_13

    :cond_12
    const-string/jumbo v12, "GlComposeView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "minus index. ignore, mFocusedObj = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_13
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v12, :cond_1a

    if-eqz v7, :cond_19

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v8, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v12

    iget v10, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    :goto_4
    const/4 v12, 0x0

    cmpg-float v12, v8, v12

    if-gez v12, :cond_1c

    const/4 v8, 0x0

    :cond_14
    :goto_5
    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-gez v12, :cond_1d

    const/4 v10, 0x0

    :cond_15
    :goto_6
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v12, v8, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setScrollRef(FF)V

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetVisibleObjectAttribute()V

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz p3, :cond_1e

    :goto_7
    invoke-virtual {v12, v10}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v12, v13, v14}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setRange(FF)V

    :cond_16
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScale:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1f

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScale:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    const v13, 0x3fcccccd    # 1.6f

    div-float p2, v12, v13

    :goto_8
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->interpolateVisibleObjectPosition(F)V

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v12, :cond_17

    if-eqz v7, :cond_17

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    :cond_17
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v12, :cond_18

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveToLast()V

    :cond_18
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    move-result-object v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->moveToLast()V

    goto/16 :goto_2

    :cond_19
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v12

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScrollDelta:F

    sub-float v8, v12, v13

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getSequentialIndex(I)I

    move-result v6

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v9

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v12

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScrollDelta:F

    sub-float v10, v12, v13

    goto/16 :goto_4

    :cond_1a
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v12

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScrollDelta:F

    sub-float v8, v12, v13

    if-eqz p3, :cond_1b

    const/4 v10, 0x0

    :goto_9
    goto/16 :goto_4

    :cond_1b
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v12

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScrollDelta:F

    sub-float v10, v12, v13

    goto :goto_9

    :cond_1c
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v12, v8, v12

    if-lez v12, :cond_14

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v8, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    goto/16 :goto_5

    :cond_1d
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v12

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v12, v10, v12

    if-lez v12, :cond_15

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v12

    iget v10, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    goto/16 :goto_6

    :cond_1e
    move v10, v8

    goto/16 :goto_7

    :cond_1f
    const/high16 v12, 0x3f800000    # 1.0f

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScale:F

    sub-float/2addr v12, v13

    const v13, 0x3f4ccccd    # 0.8f

    div-float p2, v12, v13

    goto/16 :goto_8
.end method

.method isMinLevel()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSupportExpand:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFromLevel:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mToLevel:I

    if-ne v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method prepareScale(II)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScale:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFromLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mToLevel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4, p1, p2, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getFocusedObject(IIZ)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    sub-float v4, v1, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScrollDelta:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v3, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->isQuickScrollEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hideNow()V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->hideNow()V

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScrollDelta:F

    move v2, v3

    goto :goto_0
.end method

.method stopScaleAnimation()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnablePosAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setZOrder(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->focusedTimeItem(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)V

    :cond_2
    return-void
.end method

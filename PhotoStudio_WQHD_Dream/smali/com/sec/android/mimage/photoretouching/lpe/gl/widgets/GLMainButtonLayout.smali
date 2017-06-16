.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLMainButtonLayout.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_GLMainButtonLayout"


# instance fields
.field private clickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

.field private mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

.field private mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;FFFF)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;FFFF)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getMainButtonOrder()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getMainButtonOrder()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    return-void
.end method

.method private disableAllExcept(I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->setEnabled(Z)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private enableAll()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSelection(I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->getId()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->setSelected(Z)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 8

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getTop()F

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;-><init>(Landroid/content/Context;FFFFFF)V

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setDuration(I)V

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->startAnimation()V

    return-void
.end method

.method public initChildren()V
    .locals 7

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const v4, 0x7f0200d4

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getMainButtonOrder()[I

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getMainButtonOrder()[I

    move-result-object v6

    aget v6, v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->clickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->initSizes()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->initChildren()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public initSizes()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getOrientation()I

    move-result v12

    const/4 v1, 0x2

    if-ne v12, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v17, 0x7f080441

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v4, v1, v6

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080449

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v1

    sub-int v3, v1, v5

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->setSize(IIIIZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const/4 v6, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v6, v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080448

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080447

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getMainButtonOrder()[I

    move-result-object v1

    array-length v1, v1

    mul-int/2addr v1, v8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getMainButtonOrder()[I

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v7

    add-int v15, v1, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getWidth()F

    move-result v1

    int-to-float v6, v15

    sub-float/2addr v1, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    float-to-int v0, v1

    move/from16 v16, v0

    const/4 v10, 0x0

    :goto_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getMainButtonOrder()[I

    move-result-object v1

    array-length v1, v1

    if-ge v10, v1, :cond_1

    add-int v1, v8, v7

    mul-int/2addr v1, v10

    add-int v11, v16, v1

    const/4 v13, 0x0

    move v14, v8

    move v9, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    aget-object v1, v1, v10

    invoke-virtual {v1, v11, v13, v14, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->setSize(IIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mIsLoaded:Z

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->initSizes()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onStateChange(II)V
    .locals 5

    const/16 v4, 0x100

    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    const/16 v1, 0x809

    if-eq p2, v1, :cond_1

    const/high16 v1, 0x80000

    if-eq p2, v1, :cond_1

    and-int/lit16 v1, p2, -0x100

    const/high16 v3, 0x10000

    if-ne v1, v3, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->setVisible(Z)V

    :cond_2
    if-ne p2, v4, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->enableAll()V

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->setSelection(I)V

    if-ne p2, v4, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getNumLayers()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "PEDIT_GLMainButtonLayout"

    const-string v3, "Show"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->show()V

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_0

    const-string v1, "PEDIT_GLMainButtonLayout"

    const-string v3, "Hide"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->hide()V

    goto :goto_0

    :sswitch_1
    const-string v1, "PEDIT_GLMainButtonLayout"

    const-string v3, " state Hide"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->hide()V

    goto :goto_0

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x20000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->clickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->setVisible(Z)V

    return-void
.end method

.method public show()V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->setVisible(Z)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->getTop()F

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;-><init>(Landroid/content/Context;FFFFFF)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setDuration(I)V

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->startAnimation()V

    return-void
.end method

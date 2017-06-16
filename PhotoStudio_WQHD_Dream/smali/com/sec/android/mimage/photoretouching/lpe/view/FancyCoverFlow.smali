.class public Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;
.super Landroid/widget/Gallery;
.source "FancyCoverFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow$LayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_DISTANCE_AUTO:I = 0x7fffffff

.field public static final SCALEDOWN_GRAVITY_BOTTOM:F = 1.0f

.field public static final SCALEDOWN_GRAVITY_CENTER:F = 0.5f

.field public static final SCALEDOWN_GRAVITY_TOP:F


# instance fields
.field private actionDistance:I

.field private maxRotation:I

.field private scaleDownGravity:F

.field private transformationCamera:Landroid/graphics/Camera;

.field private unselectedAlpha:F

.field private unselectedSaturation:F

.field private unselectedScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x4b

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->maxRotation:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->scaleDownGravity:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x4b

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->maxRotation:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->scaleDownGravity:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->initialize()V

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->applyXmlAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x4b

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->maxRotation:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->scaleDownGravity:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->initialize()V

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->applyXmlAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyXmlAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/R$styleable;->FancyCoverFlow:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x5

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->actionDistance:I

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->scaleDownGravity:F

    const/4 v1, 0x3

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->maxRotation:I

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedAlpha:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedSaturation:F

    const/4 v1, 0x2

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedScale:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 2

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->transformationCamera:Landroid/graphics/Camera;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->setSpacing(I)V

    return-void
.end method


# virtual methods
.method public getActionDistance()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->actionDistance:I

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 21

    move-object/from16 v11, p1

    check-cast v11, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;

    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->invalidate()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->getWidth()I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getWidth()I

    move-result v6

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getHeight()I

    move-result v5

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getLeft()I

    move-result v17

    div-int/lit8 v18, v6, 0x2

    add-int v4, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->actionDistance:I

    move/from16 v17, v0

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    add-int v17, v8, v6

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v2, v0

    :goto_0
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    int-to-float v0, v2

    move/from16 v20, v0

    div-float v19, v19, v20

    sub-int v20, v4, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->clear()V

    const/16 v17, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedAlpha:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedAlpha:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v17, v17, v18

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v18

    mul-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v3, v17, v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/animation/Transformation;->setAlpha(F)V

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedSaturation:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedSaturation:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v17, v17, v18

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v18

    mul-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v13, v17, v18

    invoke-virtual {v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->setSaturation(F)V

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->maxRotation:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    neg-float v0, v9

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->maxRotation:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->transformationCamera:Landroid/graphics/Camera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Camera;->save()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->transformationCamera:Landroid/graphics/Camera;

    move-object/from16 v17, v0

    int-to-float v0, v12

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Camera;->rotateY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->transformationCamera:Landroid/graphics/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->transformationCamera:Landroid/graphics/Camera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Camera;->restore()V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedScale:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedScale:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v17, v17, v18

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v18

    mul-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v16, v17, v18

    int-to-float v0, v6

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v14, v17, v18

    int-to-float v0, v5

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->scaleDownGravity:F

    move/from16 v18, v0

    mul-float v15, v17, v18

    neg-float v0, v14

    move/from16 v17, v0

    neg-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v10, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4
    const/16 v17, 0x1

    return v17

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->actionDistance:I

    goto/16 :goto_0
.end method

.method public getMaxRotation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->maxRotation:I

    return v0
.end method

.method public getScaleDownGravity()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->scaleDownGravity:F

    return v0
.end method

.method public getUnselectedAlpha()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedAlpha:F

    return v0
.end method

.method public getUnselectedSaturation()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedSaturation:F

    return v0
.end method

.method public getUnselectedScale()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedScale:F

    return v0
.end method

.method public setActionDistance(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->actionDistance:I

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    instance-of v0, p1, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " only works in conjunction with a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setMaxRotation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->maxRotation:I

    return-void
.end method

.method public setScaleDownGravity(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->scaleDownGravity:F

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedAlpha:F

    return-void
.end method

.method public setUnselectedSaturation(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedSaturation:F

    return-void
.end method

.method public setUnselectedScale(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;->unselectedScale:F

    return-void
.end method

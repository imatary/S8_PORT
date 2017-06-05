.class public Lcom/android/keyguard/MultiPaneChallengeLayout;
.super Landroid/view/ViewGroup;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/ChallengeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final ANIMATE_BOUNCE_DURATION:I = 0x15e

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MultiPaneChallengeLayout"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

.field private mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsBouncing:Z

.field final mOrientation:I

.field private final mScrimClickListener:Landroid/view/View$OnClickListener;

.field private mScrimView:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUserSwitcherView:Landroid/view/View;

.field private final mZeroPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mZeroPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$1;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    iput-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    sget-object v0, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_android_orientation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v0, 0x300

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setSystemUiVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/MultiPaneChallengeLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    return-object v0
.end method

.method private getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, p2

    :goto_0
    iget v1, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    sub-int/2addr v0, p3

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p3

    return v0

    :cond_2
    return p2
.end method

.method private layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 17

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v2, v1, v3}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I

    move-result v3

    iget v4, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getLayoutDirection()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    iget v4, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-nez v5, :cond_4

    :cond_0
    const/4 v4, 0x0

    move v10, v4

    :goto_1
    if-nez v5, :cond_5

    :cond_1
    const/4 v4, 0x0

    move v9, v4

    :goto_2
    if-nez v10, :cond_6

    if-nez v9, :cond_7

    move v2, v3

    move/from16 v4, p1

    :goto_3
    invoke-static {v11}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v12

    invoke-static {v11}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v0, p4

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int v5, v6, v14

    add-int v7, v8, v15

    and-int/lit8 v16, v11, 0x70

    sparse-switch v16, :sswitch_data_0

    :goto_4
    and-int/lit8 v2, v11, 0x7

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v5

    move v3, v6

    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_3
    const/4 v4, 0x0

    move v5, v4

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move v10, v4

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    move v9, v4

    goto :goto_2

    :cond_6
    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v2, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    move v4, v2

    move v2, v3

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v2, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    move/from16 v4, p1

    goto :goto_3

    :sswitch_0
    if-nez v9, :cond_9

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    :goto_6
    add-int v2, v3, v15

    if-nez p5, :cond_a

    :cond_8
    :goto_7
    move v7, v2

    move v8, v3

    goto :goto_4

    :cond_9
    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v15

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    goto :goto_6

    :cond_a
    if-eqz v12, :cond_8

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v8, v15, 0x2

    add-int/2addr v7, v8

    move-object/from16 v0, p4

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    :sswitch_1
    if-nez v9, :cond_c

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    :goto_8
    sub-int v7, v2, v15

    if-nez p5, :cond_d

    :cond_b
    :goto_9
    move v8, v7

    move v7, v2

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p4

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    sub-int/2addr v2, v15

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v7, v2

    goto :goto_8

    :cond_d
    if-eqz v12, :cond_b

    sub-int/2addr v3, v7

    move-object/from16 v0, p4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v15, 0x2

    add-int/2addr v3, v8

    move-object/from16 v0, p4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_9

    :sswitch_2
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v15

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    add-int v2, v3, v15

    move v7, v2

    move v8, v3

    goto/16 :goto_4

    :pswitch_1
    if-nez v10, :cond_e

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    :goto_a
    add-int v2, v3, v14

    if-eqz p5, :cond_2

    if-eqz v13, :cond_2

    if-nez v12, :cond_2

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v5, v14, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v4, v14

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    goto :goto_a

    :pswitch_2
    if-nez v10, :cond_f

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    :goto_b
    sub-int v3, v2, v14

    if-eqz p5, :cond_2

    if-eqz v13, :cond_2

    if-nez v12, :cond_2

    sub-int v4, p1, v3

    move-object/from16 v0, p4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v14, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    sub-int v3, v4, v14

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    goto :goto_b

    :pswitch_3
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v2, p1, v2

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v14

    div-int/lit8 v3, v2, 0x2

    add-int v2, v3, v14

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    check-cast p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0
.end method

.method public getBouncerAnimationDuration()I
    .locals 1

    const/16 v0, 0x15e

    return v0
.end method

.method public hideBouncer()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/android/keyguard/MultiPaneChallengeLayout$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$3;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->hideBouncer(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v0, v4}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_1
.end method

.method public isBouncing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    return v0
.end method

.method public isChallengeOverlapping()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChallengeShowing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    iget-object v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingLeft()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingRight()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p4, p2

    sub-int v12, p5, p3

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v12, v0

    iget-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildCount()I

    move-result v13

    const/4 v0, 0x0

    move v11, v0

    :goto_1
    if-lt v11, v13, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-ne v8, v3, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eq v8, v3, :cond_5

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v1, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mZeroPadding:Landroid/graphics/Rect;

    const/4 v10, 0x0

    move-object v5, p0

    move v6, v1

    move v7, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 17

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "MultiPaneChallengeLayout must be measured with an exact size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v2, v3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v14, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildCount()I

    move-result v15

    const/4 v2, 0x0

    move v12, v2

    :goto_0
    if-lt v12, v15, :cond_2

    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-lt v8, v15, :cond_e

    return-void

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    iget v2, v8, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    iget v2, v8, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    iget v2, v8, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_d

    :cond_3
    :goto_2
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_5

    instance-of v2, v3, Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_6

    check-cast v3, Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "There may only be one child of type challenge"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    iget v2, v8, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    if-gez v2, :cond_9

    move/from16 v4, p1

    :goto_3
    iget v2, v8, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    if-gez v2, :cond_a

    move v6, v9

    :goto_4
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/MultiPaneChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget v2, v8, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v2

    if-nez v2, :cond_b

    iget v2, v8, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v10

    move v3, v11

    :goto_5
    move v10, v2

    move v11, v3

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "There may only be one child of type userSwitcher"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    iget v2, v8, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    :cond_a
    iget v2, v8, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4

    :cond_b
    int-to-float v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    move v3, v11

    goto :goto_5

    :cond_c
    int-to-float v2, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    move v3, v2

    move v2, v10

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setScrimView(Landroid/view/View;)V

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    iget v4, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_10

    :cond_f
    :goto_6
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_1

    :cond_10
    iget v4, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v10}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I

    move-result v4

    iget v5, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    if-eqz v5, :cond_11

    sub-int v5, v13, v11

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    int-to-float v4, v4

    iget v6, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_7
    move/from16 v16, v4

    move v4, v5

    move/from16 v5, v16

    iget v6, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    if-gez v6, :cond_13

    :goto_8
    iget v6, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    if-gez v6, :cond_14

    move v6, v5

    :goto_9
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/MultiPaneChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_6

    :cond_11
    sub-int v5, v13, v11

    int-to-float v5, v5

    iget v6, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_7

    :cond_12
    sub-int v5, v13, v11

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_7

    :cond_13
    iget v6, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_8

    :cond_14
    iget v2, v2, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_9
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->hideBouncer()V

    goto :goto_0
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    return-void
.end method

.method setScrimView(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-nez v0, :cond_3

    const/4 v0, 0x4

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public showBouncer()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v4, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/android/keyguard/MultiPaneChallengeLayout$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$2;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBouncer(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v0, v4}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_1
.end method

.method public showChallenge(Z)V
    .locals 0

    return-void
.end method

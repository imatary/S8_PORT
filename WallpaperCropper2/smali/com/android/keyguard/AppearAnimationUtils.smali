.class public Lcom/android/keyguard/AppearAnimationUtils;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/keyguard/AppearAnimationCreator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_APPEAR_DURATION:J = 0xdcL


# instance fields
.field protected mAppearing:Z

.field protected final mDelayScale:F

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

.field protected mScaleTranslationWithRow:Z

.field private final mStartTranslation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v2, 0xdc

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;-><init>(Lcom/android/keyguard/AppearAnimationUtils;)V

    iput-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput-object p6, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->appear_y_translation_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    iput p5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDelayScale:F

    iput-wide p2, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDuration:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mScaleTranslationWithRow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mAppearing:Z

    return-void
.end method

.method private getDelays([Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v4, v0, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iget-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v4, v0, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    iget-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    array-length v4, p1

    new-array v4, v4, [[J

    iput-object v4, v0, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    move v0, v1

    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v4, v4, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    new-array v5, v7, [J

    aput-object v5, v4, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v6, v6, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v6, v6, v0

    aput-wide v4, v6, v1

    aget-object v6, p1, v0

    if-nez v6, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long v6, v4, v2

    if-gtz v6, :cond_3

    move v6, v7

    :goto_2
    if-nez v6, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v1, v2, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iget-object v2, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v0, v2, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    move-wide v2, v4

    goto :goto_1

    :cond_3
    move v6, v1

    goto :goto_2
.end method

.method private getDelays([[Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v4, v0, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iget-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v4, v0, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    iget-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    array-length v4, p1

    new-array v4, v4, [[J

    iput-object v4, v0, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    move v0, v1

    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    return-object v0

    :cond_0
    aget-object v8, p1, v0

    iget-object v4, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v4, v4, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v5, v8

    new-array v5, v5, [J

    aput-object v5, v4, v0

    move v4, v1

    :goto_1
    array-length v5, v8

    if-lt v4, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/android/keyguard/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v5, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v5, v5, v0

    aput-wide v6, v5, v4

    aget-object v5, p1, v0

    aget-object v5, v5, v4

    if-nez v5, :cond_3

    :cond_2
    move-wide v6, v2

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    :cond_3
    cmp-long v5, v6, v2

    if-gtz v5, :cond_4

    const/4 v5, 0x1

    :goto_3
    if-nez v5, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v4, v2, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iget-object v2, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v0, v2, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    goto :goto_2

    :cond_4
    move v5, v1

    goto :goto_3
.end method

.method private startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;",
            "[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v0, v0

    if-lt v10, v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v0, v0, v10

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v9, 0x0

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-eq v0, v10, :cond_4

    :cond_3
    :goto_1
    aget-object v1, p2, v10

    iget-wide v4, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDuration:J

    iget v6, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    iget-object v8, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v7, 0x1

    move-object v0, p4

    invoke-interface/range {v0 .. v9}, Lcom/android/keyguard/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-nez v0, :cond_3

    move-object v9, p3

    goto :goto_1
.end method

.method private startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;",
            "[[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v0, v0

    if-lt v10, v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v13, v0, v10

    iget-boolean v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mScaleTranslationWithRow:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    move v11, v0

    :goto_1
    const/4 v0, 0x0

    move v12, v0

    :goto_2
    array-length v0, v13

    if-lt v12, v0, :cond_4

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v0, v0

    sub-int/2addr v0, v10

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v2, v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    move v11, v0

    goto :goto_1

    :cond_4
    aget-wide v2, v13, v12

    const/4 v9, 0x0

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-eq v0, v10, :cond_6

    :cond_5
    :goto_3
    aget-object v0, p2, v10

    aget-object v1, v0, v12

    iget-wide v4, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDuration:J

    iget-boolean v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mAppearing:Z

    if-nez v0, :cond_7

    neg-float v6, v11

    :goto_4
    iget-boolean v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mAppearing:Z

    iget-object v8, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p4

    invoke-interface/range {v0 .. v9}, Lcom/android/keyguard/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_2

    :cond_6
    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v0, v12, :cond_5

    move-object/from16 v9, p3

    goto :goto_3

    :cond_7
    move v6, v11

    goto :goto_4
.end method


# virtual methods
.method protected calculateDelay(II)J
    .locals 8

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-int/lit8 v0, p1, 0x28

    int-to-double v0, v0

    int-to-double v2, p2

    int-to-double v4, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDelayScale:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p7, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    if-nez p7, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez p7, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez p7, :cond_5

    :goto_3
    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_4
    if-eqz p9, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, p6

    goto :goto_2

    :cond_5
    move p6, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    goto :goto_4
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getStartTranslation()F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    return v0
.end method

.method public startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p0}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    return-void
.end method

.method public startAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/keyguard/AppearAnimationUtils;->getDelays([Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    return-void
.end method

.method public startAnimation([[Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p0}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimation([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    return-void
.end method

.method public startAnimation([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/keyguard/AppearAnimationUtils;->getDelays([[Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    return-void
.end method

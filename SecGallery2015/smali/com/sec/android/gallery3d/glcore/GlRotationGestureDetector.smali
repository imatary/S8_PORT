.class public Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;
.super Ljava/lang/Object;
.source "GlRotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector$OnRotationGestureListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GlRotatnGsturDetector"


# instance fields
.field private fX:F

.field private fY:F

.field private firstTouch:Z

.field private mAngle:F

.field private final mListener:Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector$OnRotationGestureListener;

.field private ptrID1:I

.field private ptrID2:I

.field private sX:F

.field private sY:F


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector$OnRotationGestureListener;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->mListener:Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector$OnRotationGestureListener;

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID1:I

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID2:I

    return-void
.end method

.method private ClipAngleTo0_360(F)F
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    return v0
.end method

.method private angleBetweenLines(FFFFFFFF)F
    .locals 6

    sub-float v2, p2, p4

    float-to-double v2, v2

    sub-float v4, p1, p3

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v2, p6, p8

    float-to-double v2, v2

    sub-float v4, p5, p7

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-direct {p0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->findAngleDelta(FF)F

    move-result v2

    return v2
.end method

.method private findAngleDelta(FF)F
    .locals 5

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ClipAngleTo0_360(F)F

    move-result v1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ClipAngleTo0_360(F)F

    move-result v2

    sub-float v0, v2, v1

    const/high16 v3, -0x3ccc0000    # -180.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    add-float/2addr v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    sub-float/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->mAngle:F

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v10

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->sX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->sY:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID1:I

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->mAngle:F

    iput-boolean v10, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->firstTouch:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->fX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->fY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID2:I

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->mAngle:F

    iput-boolean v10, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->firstTouch:Z

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID1:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID2:I

    if-eq v0, v1, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID1:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID1:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID2:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID2:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->firstTouch:Z

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->mAngle:F

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->firstTouch:Z

    :goto_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->mListener:Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector$OnRotationGestureListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->mListener:Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector$OnRotationGestureListener;->OnRotation(Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;)V

    :cond_1
    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->fX:F

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->fY:F

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->sX:F

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->sY:F

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v0, "GlRotatnGsturDetector"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->fX:F

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->fY:F

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->sX:F

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->sY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->angleBetweenLines(FFFFFFFF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->mAngle:F

    goto :goto_2

    :pswitch_4
    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID1:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID2:I

    goto/16 :goto_0

    :pswitch_5
    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID1:I

    goto/16 :goto_0

    :pswitch_6
    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->ptrID2:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

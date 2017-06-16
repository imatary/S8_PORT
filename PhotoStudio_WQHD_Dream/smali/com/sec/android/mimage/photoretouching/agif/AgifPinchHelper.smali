.class public Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "AgifPinchHelper.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_AgifPinchHelper"

.field private static final mDec:F = 0.00125f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGLContext:Landroid/opengl/GLSurfaceView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageRect:Landroid/graphics/RectF;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOnApplyListener:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;

.field private mPreviousUpdate:J

.field private mScale:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mValues:[F

.field private mVelocityFactor:F

.field private mVelocityX:F

.field private mVelocityY:F

.field private mViewRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const v0, 0x3c75c290    # 0.015000001f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityFactor:F

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mImageRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mScale:F

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOnApplyListener:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOffsetX:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOffsetY:F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mValues:[F

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mGLContext:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method private adjustCropRect(FF)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, p1

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOffsetX:F

    sub-float v1, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, p2

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOffsetY:F

    sub-float v4, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, p1

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOffsetX:F

    sub-float v2, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, p2

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOffsetY:F

    sub-float v0, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mImageRect:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v1, v5, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float v2, v1, v5

    :cond_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v4, v5, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float v0, v4, v5

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v2, v5, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v1, v2, v5

    :cond_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float v4, v0, v5

    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1, v4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float p1, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float p2, v5, v6

    :cond_4
    cmpl-float v5, p2, v7

    if-nez v5, :cond_5

    cmpl-float v5, p1, v7

    if-eqz v5, :cond_7

    :cond_5
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    neg-float v6, p1

    neg-float v7, p2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mMatrix:Landroid/graphics/Matrix;

    neg-float v6, p1

    neg-float v7, p2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mGLContext:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v5}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_6
    :goto_0
    return-void

    :cond_7
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOnApplyListener:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOnApplyListener:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;

    invoke-interface {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;->onFinished()V

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mGLContext:Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public getTranslateX()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getTranslateY()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mValues:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getViewRect()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/high16 v2, 0x43fa0000    # 500.0f

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    :goto_0
    iput p3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityX:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :goto_1
    iput p4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mPreviousUpdate:J

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->update()V

    const/4 v0, 0x0

    return v0

    :cond_0
    move p3, v0

    goto :goto_0

    :cond_1
    move p4, v0

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    neg-float v0, p3

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mScale:F

    div-float/2addr v0, v1

    neg-float v1, p4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mScale:F

    div-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->adjustCropRect(FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityX:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnApplyListener(Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOnApplyListener:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;

    return-void
.end method

.method public setViewDimensions(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mImageRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mScale:F

    iput p5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOffsetY:F

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mOffsetX:F

    return-void
.end method

.method public update()V
    .locals 12

    const v9, 0x3aa3d70a    # 0.00125f

    const-wide v10, 0x3f9eb851eb851eb8L    # 0.03

    const/4 v8, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityX:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_4

    :cond_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityX:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mPreviousUpdate:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    mul-float/2addr v3, v9

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityX:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityX:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mPreviousUpdate:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    mul-float/2addr v3, v9

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityX:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_4

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityX:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityFactor:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mScale:F

    div-float v0, v2, v3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityFactor:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mScale:F

    div-float v1, v2, v3

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->adjustCropRect(FF)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-gez v2, :cond_2

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityX:F

    :cond_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-gez v2, :cond_3

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mVelocityY:F

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mPreviousUpdate:J

    :cond_4
    return-void
.end method

.method public updateViewRect(Landroid/graphics/RectF;)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->mViewRect:Landroid/graphics/RectF;

    return-void
.end method

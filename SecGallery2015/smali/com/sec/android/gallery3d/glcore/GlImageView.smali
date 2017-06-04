.class public Lcom/sec/android/gallery3d/glcore/GlImageView;
.super Lcom/sec/android/gallery3d/glcore/GlView;
.source "GlImageView.java"


# static fields
.field public static final FULL_VIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlImageView"


# instance fields
.field private mBm:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private mCropRect:Landroid/graphics/Rect;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFitMode:I

.field private final mOutRect:Landroid/graphics/Rect;

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private mResources:Landroid/content/res/Resources;

.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mRotation:I

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mFitMode:I

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mCropRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mResources:Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getRectForKeepRatio(Landroid/graphics/Rect;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v12

    int-to-float v2, v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v12

    int-to-float v1, v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getRoot()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v12

    int-to-float v7, v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getRoot()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlView;->getHeight()I

    move-result v12

    int-to-float v6, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v12, v12, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v13, v13, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v12, v13

    div-float v13, v7, v6

    mul-float v10, v12, v13

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v10, v12

    if-ltz v12, :cond_3

    move v11, v2

    div-float v12, v1, v10

    float-to-int v12, v12

    int-to-float v5, v12

    :goto_1
    sub-float v4, v7, v11

    sub-float v3, v6, v5

    const/4 v12, 0x0

    cmpg-float v12, v4, v12

    if-ltz v12, :cond_1

    const/4 v12, 0x0

    cmpg-float v12, v3, v12

    if-gez v12, :cond_2

    :cond_1
    cmpg-float v12, v3, v4

    if-gez v12, :cond_4

    div-float v12, v6, v5

    mul-float/2addr v11, v12

    move v5, v6

    :cond_2
    :goto_2
    sub-float v12, v2, v11

    const/high16 v13, 0x40000000    # 2.0f

    div-float v8, v12, v13

    sub-float v12, v1, v5

    const/high16 v13, 0x40000000    # 2.0f

    div-float v9, v12, v13

    float-to-int v12, v8

    float-to-int v13, v9

    add-float v14, v8, v11

    float-to-int v14, v14

    add-float v15, v9, v5

    float-to-int v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    move v5, v1

    mul-float v12, v2, v10

    float-to-int v12, v12

    int-to-float v11, v12

    goto :goto_1

    :cond_4
    div-float v12, v7, v11

    mul-float/2addr v5, v12

    move v11, v7

    goto :goto_2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mFitMode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getRectForKeepRatio(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mCropRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mOutRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setCroppedBitmap(Landroid/graphics/Bitmap;IIILandroid/graphics/RectF;)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mRotation:I

    if-ne v0, p4, :cond_0

    :goto_0
    iput p4, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mRotation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    invoke-static {v0, p2, p3, p5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCropRect(Landroid/graphics/Bitmap;IILandroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->invalidate()V

    :goto_1
    return-void

    :cond_0
    if-nez p4, :cond_1

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p4

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->invalidate()V

    return-void
.end method

.method public setFitMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mFitMode:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->invalidate()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->invalidate()V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "GlImageView"

    const-string/jumbo v1, "bm is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mBm:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->invalidate()V

    goto :goto_0
.end method

.method public setPaddings(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlImageView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

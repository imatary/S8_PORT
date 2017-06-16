.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
.source "GLTextView.java"


# static fields
.field private static final NORMAL:I = 0x0

.field private static final PRESSED:I = 0x1


# instance fields
.field private mBitmap:[Landroid/graphics/Bitmap;

.field private mCurrentBitmap:I

.field private mPaint:Landroid/graphics/Paint;

.field private mResId:I

.field private mText:Ljava/lang/String;

.field private mTextProp:[I

.field private mTextSize:I

.field private mTextureId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mResId:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextureId:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mCurrentBitmap:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextSize:I

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mBitmap:[Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextureId:I

    return v0
.end method

.method private getTextBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    if-ne p2, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextProp:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, p1, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    const/16 v4, 0x4b

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextProp:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private getViewState()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextureId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected draw()V
    .locals 12

    const/4 v11, 0x1

    const/16 v10, 0xde1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->getViewState()I

    move-result v8

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mIsLoading:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mIsLoaded:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->load()Z

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mCurrentBitmap:I

    if-eq v1, v8, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v8

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mBitmap:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mText:Ljava/lang/String;

    invoke-direct {p0, v2, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->getTextBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v8

    :cond_1
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextureId:I

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v8

    invoke-static {v10, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mCurrentBitmap:I

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v7

    iget v1, v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "a_Position"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "a_TextureCoordinate"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v9

    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v9}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v1, "u_Matrix"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mCombinedMatrix:[F

    invoke-static {v6, v11, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextureId:I

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0
.end method

.method protected onLoad()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v6, -0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/16 v8, 0xde1

    const/4 v7, 0x0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextureId:I

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextureId:I

    :cond_0
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mResId:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mId:I

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mResId:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mResId:I

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->setText(I)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mId:I

    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getTextProperties(Landroid/content/res/Resources;I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextProp:[I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextProp:[I

    aget v6, v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextProp:[I

    aget v6, v6, v10

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->getViewState()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mBitmap:[Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mText:Ljava/lang/String;

    invoke-direct {p0, v6, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->getTextBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v2

    :cond_2
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextureId:I

    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    invoke-static {v8, v7, v5, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v6, v9

    sub-float/2addr v5, v6

    float-to-int v1, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v3, v5

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->setSize(IIII)V

    return v10
.end method

.method public onSurfaceChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onSurfaceChanged()V

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mIsLoaded:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mIsLoading:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mTextureId:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public setText(I)V
    .locals 2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mResId:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->mIsLoaded:Z

    return-void
.end method

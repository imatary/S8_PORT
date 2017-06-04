.class abstract Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;
.super Ljava/lang/Object;
.source "AbstractTexture.java"

# interfaces
.implements Lcom/samsung/android/gallery360viewer/ITexture;


# instance fields
.field mAnimate:Z

.field mAnimationXDir:F

.field mAnimationYDir:F

.field mAnimationZDir:F

.field mHeight:I

.field mMVMatrixHandle:I

.field final mMVPMatrix:[F

.field mMVPMatrixHandle:I

.field mMaxDisplacement:F

.field final mModelMatrix:[F

.field mPositionHandle:I

.field mProgramHandle:I

.field final mProjectionMatrix:[F

.field private mRendererRequester:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

.field mRepeatCount:I

.field mScreenSizeRatio:F

.field private mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

.field mTextureCoordinateHandle:I

.field mTextureDataHandle:[I

.field mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

.field private mTextureUniformHandle:I

.field final mViewMatrix:[F

.field mWidth:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mModelMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mViewMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mProjectionMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mMVPMatrix:[F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mScreenSizeRatio:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mAnimate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mRendererRequester:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

    return-void
.end method


# virtual methods
.method doAnimation()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mRepeatCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mRepeatCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mRepeatCount:I

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mRendererRequester:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mRendererRequester:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

    invoke-interface {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;->onRenderRequested()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mAnimate:Z

    goto :goto_0
.end method

.method getCommonDrawHandles()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mProgramHandle:I

    const-string/jumbo v1, "u_MVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mMVPMatrixHandle:I

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mProgramHandle:I

    const-string/jumbo v1, "u_MVMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mMVMatrixHandle:I

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mProgramHandle:I

    const-string/jumbo v1, "u_Texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mTextureUniformHandle:I

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mProgramHandle:I

    const-string/jumbo v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mPositionHandle:I

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mProgramHandle:I

    const-string/jumbo v1, "a_TexCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mTextureCoordinateHandle:I

    return-void
.end method

.method setAnimValues()V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mRepeatCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mAnimate:Z

    return-void
.end method

.method setCommonDrawAttributes()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mTextureDataHandle:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mTextureUniformHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mModelMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public setRendererRequester(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mRendererRequester:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

    return-void
.end method

.method public setScreenSize(II)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mWidth:I

    iput p2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mHeight:I

    mul-int v0, p1, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mMaxDisplacement:F

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mScreenSizeRatio:F

    return-void
.end method

.method public setStatusHandler(Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    return-void
.end method

.method public setTextureManager(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    return-void
.end method

.method updateGlAttributes(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const v2, 0x8b31

    invoke-static {v2, p1}, Lcom/samsung/android/gallery360viewer/util/ShaderHelper;->loadShader(ILjava/lang/String;)I

    move-result v1

    const v2, 0x8b30

    const-string/jumbo v3, "precision mediump float; \nuniform sampler2D u_Texture;   \nvarying vec2 v_TexCoordinate;  \nvoid main()                    \n{                              \n gl_FragColor = texture2D(u_Texture, v_TexCoordinate); \n}                              \n"

    invoke-static {v2, v3}, Lcom/samsung/android/gallery360viewer/util/ShaderHelper;->loadShader(ILjava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "a_Position"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "a_TexCoordinate"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/samsung/android/gallery360viewer/util/ShaderHelper;->createProgram(II[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mProgramHandle:I

    :cond_0
    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mProgramHandle:I

    if-nez v2, :cond_2

    const-string/jumbo v2, "AbstractTexture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateGlAttributes: invalid program handle. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    invoke-virtual {v2, v5}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->onError(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-virtual {v2}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->getTextureDataHandle()[I

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->mTextureDataHandle:[I

    goto :goto_0
.end method

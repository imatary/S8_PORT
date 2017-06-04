.class public Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;
.super Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;
.source "MirrorBallTexture.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->MIN_FOV:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->MAX_FOV:F

    const v0, -0x3f5ccccd    # -5.1f

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->INITIAL_GL_DEPTH:F

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 11

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->mTextureDataHandle:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->mTextureDataHandle:[I

    aget v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->mViewMatrix:[F

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->mCurrentFov:F

    neg-float v4, v3

    const/high16 v7, -0x3ee00000    # -10.0f

    move v3, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->mProjectionMatrix:[F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->mFrustumLeft:F

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->mFrustumRight:F

    iget v4, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->mFrustumBottom:F

    iget v5, p0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->mFrustumTop:F

    const/high16 v7, 0x41200000    # 10.0f

    move v6, v9

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    invoke-super {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->draw()V

    goto :goto_0
.end method

.method public varargs reset([Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    aget-object v1, p1, v2

    instance-of v1, v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    if-eqz v1, :cond_2

    aget-object v0, p1, v2

    check-cast v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    :cond_2
    const v1, -0x3fb6f025

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;->reset(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;F)V

    goto :goto_0
.end method

.method public bridge synthetic setRendererRequester(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->setRendererRequester(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;)V

    return-void
.end method

.method public bridge synthetic setScreenSize(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->setScreenSize(II)V

    return-void
.end method

.method public bridge synthetic setScroll(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->setScroll(FF)V

    return-void
.end method

.method public bridge synthetic setSensorScroll(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->setSensorScroll(FF)V

    return-void
.end method

.method public bridge synthetic setStatusHandler(Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->setStatusHandler(Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V

    return-void
.end method

.method public bridge synthetic setTextureManager(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->setTextureManager(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)V

    return-void
.end method

.method public bridge synthetic setZoom(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->setZoom(F)V

    return-void
.end method

.method public updateGlAttributes()V
    .locals 1

    const-string/jumbo v0, "uniform mat4 u_MVPMatrix; \nattribute vec4 a_Position;     \nattribute vec2 a_TexCoordinate;\nvarying vec2 v_TexCoordinate;  \nuniform float u_ThetaX;  \nuniform float u_ThetaY;  \nvoid main()                    \n{                              \nvec4 rotationMatY = a_Position;\nvec4 rotationMatYX = a_Position;\nrotationMatY.x = a_Position.x * cos(u_ThetaY) - a_Position.z * sin(u_ThetaY); \nrotationMatY.z = a_Position.x * sin(u_ThetaY) + a_Position.z * cos(u_ThetaY); \nrotationMatY.y = a_Position.y; \nrotationMatYX.x = rotationMatY.x; \nrotationMatYX.y = rotationMatY.y * cos(u_ThetaX) - rotationMatY.z * sin(u_ThetaX); \nrotationMatYX.z = rotationMatY.y * sin(u_ThetaX) + rotationMatY.z * cos(u_ThetaX); \nv_TexCoordinate = a_TexCoordinate;\n   gl_Position = u_MVPMatrix   \n               * rotationMatYX;   \n}                              \n"

    invoke-super {p0, v0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->updateGlAttributes(Ljava/lang/String;)V

    return-void
.end method

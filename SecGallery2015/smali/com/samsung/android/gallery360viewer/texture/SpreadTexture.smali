.class public Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;
.super Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;
.source "SpreadTexture.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;-><init>()V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 9

    const/16 v8, 0xb71

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;->mTextureDataHandle:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;->mTextureDataHandle:[I

    aget v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v8}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x201

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;->mProjectionMatrix:[F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;->mFrustumLeft:F

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;->mFrustumRight:F

    iget v4, p0, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;->mFrustumBottom:F

    iget v5, p0, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;->mFrustumTop:F

    iget v6, p0, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;->mCurrentFov:F

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    invoke-super {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->draw()V

    invoke-static {v8}, Landroid/opengl/GLES20;->glDisable(I)V

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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;->reset(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;F)V

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
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;->mViewMatrix:[F

    const/4 v1, 0x0

    const/high16 v7, -0x3d380000    # -100.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const-string/jumbo v0, "uniform mat4 u_MVPMatrix; \nattribute vec4 a_Position;     \nattribute vec2 a_TexCoordinate;\nvarying vec2 v_TexCoordinate;  \nuniform float u_ThetaX;  \nuniform float u_ThetaY;  \nvoid main()                    \n{                              \nvec4 tempPos = a_Position;\nvec4 rotationMatY = a_Position;\nvec4 rotationMatYX = a_Position;\nrotationMatY.x = a_Position.x * cos(u_ThetaY) - a_Position.z * sin(u_ThetaY); \nrotationMatY.z = a_Position.x * sin(u_ThetaY) + a_Position.z * cos(u_ThetaY); \nrotationMatY.y = a_Position.y; \nrotationMatYX.x = rotationMatY.x; \nrotationMatYX.y = rotationMatY.y * cos(u_ThetaX) - rotationMatY.z * sin(u_ThetaX); \nrotationMatYX.z = rotationMatY.y * sin(u_ThetaX) + rotationMatY.z * cos(u_ThetaX); \ntempPos.x = -1.9 * rotationMatYX.x / (rotationMatYX.z);\ntempPos.y = -1.9 * rotationMatYX.y / (rotationMatYX.z);\nif(tempPos.x > 15.0 || tempPos.x < -15.0 || tempPos.y > 15.0 || tempPos.y < -15.0) {\ntempPos.z = -100000.0; }\nelse { tempPos.z = 0.0; }\nv_TexCoordinate = a_TexCoordinate;\n   gl_Position = u_MVPMatrix   \n               * tempPos;   \n}                              \n"

    invoke-super {p0, v0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->updateGlAttributes(Ljava/lang/String;)V

    return-void
.end method

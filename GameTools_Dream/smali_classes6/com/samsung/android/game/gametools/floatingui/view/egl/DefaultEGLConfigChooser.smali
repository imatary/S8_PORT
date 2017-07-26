.class public Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;
.super Ljava/lang/Object;
.source "DefaultEGLConfigChooser.java"

# interfaces
.implements Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;


# instance fields
.field mColorSpec:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

.field mDepthEnable:Z

.field mStencilEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->RGBA8:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mColorSpec:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mDepthEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mStencilEnable:Z

    return-void
.end method

.method private static getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [I

    invoke-interface {p0, p1, p2, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method private getConfigSpec(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;)[I
    .locals 11

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mColorSpec:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    invoke-virtual {v10}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->getRedSize()I

    move-result v5

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mColorSpec:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    invoke-virtual {v10}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->getBlueSize()I

    move-result v1

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mColorSpec:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    invoke-virtual {v10}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->getGreenSize()I

    move-result v3

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mColorSpec:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    invoke-virtual {v10}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->getAlphaSize()I

    move-result v0

    iget-boolean v10, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mDepthEnable:Z

    if-eqz v10, :cond_4

    const/16 v2, 0x10

    :goto_0
    iget-boolean v10, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mStencilEnable:Z

    if-eqz v10, :cond_5

    const/16 v8, 0x8

    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->OpenGLES20:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    if-ne p1, v9, :cond_0

    const/16 v9, 0x3040

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v9, 0x3024

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x3023

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x3022

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v0, :cond_1

    const/16 v9, 0x3021

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-lez v2, :cond_2

    const/16 v9, 0x3025

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-lez v8, :cond_3

    const/16 v9, 0x3026

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v9, 0x3038

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v7, v9, [I

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move v2, v9

    goto/16 :goto_0

    :cond_5
    move v8, v9

    goto/16 :goto_1

    :cond_6
    return-object v7
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 23

    const/16 v2, 0x20

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v2, 0x1

    new-array v7, v2, [I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->getConfigSpec(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;)[I

    move-result-object v4

    array-length v6, v5

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "eglChooseConfig"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    aget v8, v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mColorSpec:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->getRedSize()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mColorSpec:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->getGreenSize()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mColorSpec:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->getBlueSize()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mColorSpec:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->getAlphaSize()I

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mDepthEnable:Z

    if-eqz v2, :cond_1

    const/16 v18, 0x10

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mStencilEnable:Z

    if-eqz v2, :cond_2

    const/16 v22, 0x8

    :goto_1
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v0, v8, :cond_4

    aget-object v11, v5, v20

    const/16 v2, 0x3024

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v16

    const/16 v2, 0x3023

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v15

    const/16 v2, 0x3022

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v13

    const/16 v2, 0x3021

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v12

    const/16 v2, 0x3025

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v14

    const/16 v2, 0x3026

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move/from16 v0, v19

    if-ne v15, v0, :cond_3

    if-ne v13, v10, :cond_3

    if-lt v12, v9, :cond_3

    move/from16 v0, v18

    if-lt v14, v0, :cond_3

    move/from16 v0, v17

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    :goto_3
    return-object v11

    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    const/16 v22, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    aget-object v11, v5, v2

    goto :goto_3
.end method

.method public setColorSpec(Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mColorSpec:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    return-void
.end method

.method public setDepthEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mDepthEnable:Z

    return-void
.end method

.method public setStencilEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->mStencilEnable:Z

    return-void
.end method

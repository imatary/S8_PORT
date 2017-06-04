.class public Lcom/sec/samsung/gallery/decoder/AnimationInterface;
.super Ljava/lang/Object;
.source "AnimationInterface.java"


# static fields
.field private static final SLIDING_ANIMATION_TIME:I = 0xfa


# instance fields
.field private mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

.field private mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

.field private mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/ui/ImageFlip;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTileAlphaBlending:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/ui/ImageRotation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTileAlphaBlending:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    new-instance v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    :cond_0
    return-void
.end method


# virtual methods
.method public centerDrawTiles(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;IIFIILcom/sec/android/gallery3d/ui/ScreenNail;II)V
    .locals 13

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->centerDrawTiles(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;IIFIILcom/sec/android/gallery3d/ui/ScreenNail;II)V

    :cond_0
    return-void
.end method

.method public drawOnCenter(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIIIFLcom/sec/android/gallery3d/ui/ScreenNail;I)Z
    .locals 10

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->drawOnCenter(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIIIFLcom/sec/android/gallery3d/ui/ScreenNail;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawOnScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/ScreenNail;IIIII)V
    .locals 9

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->drawOnScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/ScreenNail;IIIII)V

    :cond_0
    return-void
.end method

.method public getAlphablendingAnimationInterface()Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationDuration(II)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 p2, 0xfa

    :cond_0
    return p2
.end method

.method public getFlipProgress()F
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ImageFlip;->getProgress()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initAlphaBlendingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->init()V

    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ImageRotation;->isAnimationStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageChanging()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->isImageChanging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLevelChanged(Lcom/sec/android/gallery3d/ui/GLRoot;I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->isLevelChanged(Lcom/sec/android/gallery3d/ui/GLRoot;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->moveTo(I)V

    :cond_0
    return-void
.end method

.method public postRender(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/ui/ImageRotation;->endRotation(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)V

    :cond_0
    return-void
.end method

.method public postRenderFlip(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/ui/ImageFlip;->endRotation(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)V

    :cond_0
    return-void
.end method

.method public preRender(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/ImageRotation;->startRotation(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preRenderFlip(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/ImageFlip;->startRotation(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareAlphablendingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->prepareAlphablendingAnimation()V

    :cond_0
    return-void
.end method

.method public prepareAnimation(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    invoke-virtual {v3, p1, v2, p2}, Lcom/sec/android/gallery3d/ui/ImageRotation;->init(Lcom/sec/android/gallery3d/ui/PhotoView;FZ)V

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public prepareAnimationFlip(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/ImageFlip;->init()V

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setImageChanging(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->setImageChanging(Z)V

    :cond_0
    return-void
.end method

.method public setPhotoDataAdapter(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->setPhotoDataAdapter(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V

    :cond_0
    return-void
.end method

.method public setPhotoView(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->setPhotoView(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView;)V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ImageRotation;->prepare()V

    :cond_0
    return-void
.end method

.method public startFlipAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mImageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ImageFlip;->prepare()V

    :cond_0
    return-void
.end method

.method public switchToNext()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->switchToNext()V

    :cond_0
    return-void
.end method

.method public switchToPrev()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->switchToPrev()V

    :cond_0
    return-void
.end method

.method public unsetPhotoDataAdapter()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->unsetPhotoDataAdapter()V

    :cond_0
    return-void
.end method

.method public unsetPhotoView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->unsetPhotoView()V

    :cond_0
    return-void
.end method

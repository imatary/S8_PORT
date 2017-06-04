.class public Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "EdgeFadeAnimation.java"


# instance fields
.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getEdgeEffect()Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMaxElastic:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRawX:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeltaX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->onPull(FF)V

    return-void
.end method

.method protected onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->onStop()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMaxElastic:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getEdgeEffect()Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->cancelEdgeFadeAnimation()V

    return-void
.end method

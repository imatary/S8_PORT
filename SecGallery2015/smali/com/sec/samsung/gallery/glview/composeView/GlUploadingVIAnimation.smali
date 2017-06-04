.class public Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlUploadingVIAnimation.java"


# static fields
.field private static final ANIM_DURATION:I = 0x7d0

.field private static final PROGRESS:F = 0.2f

.field public static final UPLOADING_VI_FRAME_CNT:I = 0x6


# instance fields
.field private mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;


# direct methods
.method public constructor <init>([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->mAnimDuration:J

    return-void
.end method


# virtual methods
.method public applyTransform(F)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const v2, 0x3e4ccccd    # 0.2f

    div-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aget-object v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvasSub(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_0
    return-void
.end method

.method protected onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->onStop()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    return-void
.end method

.method public setUploadingList([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-void
.end method

.method public startCheckVIAnimation()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->stop()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->start()V

    return-void
.end method

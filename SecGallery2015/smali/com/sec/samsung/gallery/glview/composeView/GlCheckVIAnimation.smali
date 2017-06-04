.class public Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlCheckVIAnimation.java"


# static fields
.field private static final ANIM_DURATION:I = 0xfa

.field public static final CHECK_VI_FRAME_CNT:I

.field private static final PROGRESS:F


# instance fields
.field private mCanCheckedList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field private mSelect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    sget v0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    div-float v0, v1, v0

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->PROGRESS:F

    return-void

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public constructor <init>([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->mCanCheckedList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->mAnimDuration:J

    return-void
.end method


# virtual methods
.method public applyTransform(F)V
    .locals 4

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->mSelect:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->mCanCheckedList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    sget v2, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->PROGRESS:F

    div-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aget-object v0, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->mCanCheckedList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    sget v2, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    add-int/lit8 v2, v2, -0x1

    sget v3, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->PROGRESS:F

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public getCanCheckedList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->mCanCheckedList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v0
.end method

.method protected onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->onStop()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    return-void
.end method

.method public setCanCheckedList([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->mCanCheckedList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-void
.end method

.method public startCheckVIAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->mSelect:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->stop()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->start()V

    return-void
.end method

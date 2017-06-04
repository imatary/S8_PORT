.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutAnimation"
.end annotation


# instance fields
.field private final mEnd:F

.field private final mFromAlpha:F

.field private mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private final mStart:F

.field private final mToAlpha:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;FFFF)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mStart:F

    iput p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mEnd:F

    iput p5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mFromAlpha:F

    iput p6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mToAlpha:F

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mStart:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mEnd:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setScale(FF)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mFromAlpha:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mToAlpha:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mFromAlpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    goto :goto_0
.end method

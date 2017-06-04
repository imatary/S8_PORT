.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeFluidQuickScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlFluidTouchAnimation"
.end annotation


# static fields
.field public static final ANIM_DURATION:I = 0x12c

.field public static final PROGRESS:F = 0.11111111f

.field public static final SCROLL_BAR_TOUCH_FLUID_FRAME_CNT:I = 0xa


# instance fields
.field mEmerge:Z

.field final mViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;[Lcom/sec/android/gallery3d/glcore/GlImageView;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->mViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->mAnimDuration:J

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 3

    const v2, 0x3de38e39

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->mEmerge:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->mViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

    div-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aget-object v0, v1, v2

    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->mEmerge:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->mEmerge:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->mViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

    div-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x9

    aget-object v0, v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    goto :goto_1
.end method

.method public startTouchFluidAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->mEmerge:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->stop()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->start()V

    return-void
.end method

.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeFluidQuickScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlFluidComeBackAnimation"
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x14d


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    const-wide/16 v0, 0x14d

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->mAnimDuration:J

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    const/4 v1, 0x1

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->updateFluidPopupView(FZZZ)V
    invoke-static {v0, p1, v2, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;FZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupView:Lcom/sec/android/gallery3d/glcore/GlView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->updateFluidPopupView(FZZZ)V
    invoke-static {v0, v1, v3, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;FZZZ)V

    return-void
.end method

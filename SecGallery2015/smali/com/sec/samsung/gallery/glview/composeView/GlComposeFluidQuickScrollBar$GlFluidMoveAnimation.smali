.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeFluidQuickScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlFluidMoveAnimation"
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x14d


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    const-wide/16 v0, 0x14d

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->mAnimDuration:J

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;FZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;FZZ)V

    return-void
.end method

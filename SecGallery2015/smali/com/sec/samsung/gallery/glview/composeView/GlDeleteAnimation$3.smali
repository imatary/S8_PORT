.class Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation$3;
.super Ljava/lang/Object;
.source "GlDeleteAnimation.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v0

    const/4 v1, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setEnableAnim(ZZZZZ)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.class Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$3;
.super Lcom/sec/android/gallery3d/glcore/GlHandler;
.source "GlShrinkAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/Object;III)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "GlShrinkAnimation "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessage msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->requestCompleteForward(ZZ)V

    :cond_0
    return-void
.end method

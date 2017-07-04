.class Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;
.super Ljava/lang/Object;
.source "GlBackground.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/GlBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transitioner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/glcore/GlBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/glcore/GlBackground;Lcom/sec/android/gallery3d/glcore/GlBackground$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;-><init>(Lcom/sec/android/gallery3d/glcore/GlBackground;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$202(Lcom/sec/android/gallery3d/glcore/GlBackground;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$302(Lcom/sec/android/gallery3d/glcore/GlBackground;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method public onGLIdle(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "GlBackground"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGLIdle Transition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$100(Lcom/sec/android/gallery3d/glcore/GlBackground;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$100(Lcom/sec/android/gallery3d/glcore/GlBackground;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$102(Lcom/sec/android/gallery3d/glcore/GlBackground;Z)Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$200(Lcom/sec/android/gallery3d/glcore/GlBackground;)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$300(Lcom/sec/android/gallery3d/glcore/GlBackground;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$300(Lcom/sec/android/gallery3d/glcore/GlBackground;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$400(Lcom/sec/android/gallery3d/glcore/GlBackground;)I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$402(Lcom/sec/android/gallery3d/glcore/GlBackground;I)I

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$400(Lcom/sec/android/gallery3d/glcore/GlBackground;)I

    move-result v2

    if-ne v2, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$502(Lcom/sec/android/gallery3d/glcore/GlBackground;F)F

    :goto_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$200(Lcom/sec/android/gallery3d/glcore/GlBackground;)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$200(Lcom/sec/android/gallery3d/glcore/GlBackground;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$600(Lcom/sec/android/gallery3d/glcore/GlBackground;I)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$202(Lcom/sec/android/gallery3d/glcore/GlBackground;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$302(Lcom/sec/android/gallery3d/glcore/GlBackground;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$800(Lcom/sec/android/gallery3d/glcore/GlBackground;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestLayout()V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$402(Lcom/sec/android/gallery3d/glcore/GlBackground;I)I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    const v2, -0x43dc28f6    # -0.01f

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$502(Lcom/sec/android/gallery3d/glcore/GlBackground;F)F

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$300(Lcom/sec/android/gallery3d/glcore/GlBackground;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->this$0:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$300(Lcom/sec/android/gallery3d/glcore/GlBackground;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x100

    const/16 v4, 0x80

    invoke-static {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlBackground;->access$700(Lcom/sec/android/gallery3d/glcore/GlBackground;Landroid/graphics/Bitmap;II)V

    goto :goto_3
.end method

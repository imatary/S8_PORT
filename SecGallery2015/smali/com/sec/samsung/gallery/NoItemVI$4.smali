.class Lcom/sec/samsung/gallery/NoItemVI$4;
.super Ljava/lang/Object;
.source "NoItemVI.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/NoItemVI;->initialize(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/NoItemVI;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/NoItemVI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/NoItemVI$4;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI$4;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    invoke-static {v1}, Lcom/sec/samsung/gallery/NoItemVI;->access$400(Lcom/sec/samsung/gallery/NoItemVI;)Lcom/altamirasoft/path_animation/PathLineAnimationView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI$4;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    invoke-static {v1}, Lcom/sec/samsung/gallery/NoItemVI;->access$400(Lcom/sec/samsung/gallery/NoItemVI;)Lcom/altamirasoft/path_animation/PathLineAnimationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI$4$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/NoItemVI$4$1;-><init>(Lcom/sec/samsung/gallery/NoItemVI$4;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    return v1
.end method

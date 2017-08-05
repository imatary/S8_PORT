.class Lcom/sec/android/app/camera/Camera$10;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "Camera7"

    const-string v3, "return, baseLayout is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$2102(Lcom/sec/android/app/camera/Camera;I)I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$2202(Lcom/sec/android/app/camera/Camera;I)I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$1602(Lcom/sec/android/app/camera/Camera;I)I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$1702(Lcom/sec/android/app/camera/Camera;I)I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getDisplayRotation()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationByDisplayOrientation(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$1502(Lcom/sec/android/app/camera/Camera;I)I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$1802(Lcom/sec/android/app/camera/Camera;I)I

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0
.end method

.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;
.super Ljava/lang/Object;
.source "SpenSimpleSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HolderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$900(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Landroid/view/OrientationEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    const-string v0, "SpenSimpleSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)J

    move-result-wide v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    # invokes: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_surfaceChanged(JLandroid/view/Surface;II)Z
    invoke-static {v0, v1, v2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1000(JLandroid/view/Surface;II)Z

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)J

    move-result-wide v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    # invokes: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_surfaceCreated(JLandroid/view/Surface;)Z
    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1100(JLandroid/view/Surface;)Z

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)J

    move-result-wide v0

    # invokes: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_surfaceDestroyed(J)V
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1200(J)V

    goto :goto_0
.end method

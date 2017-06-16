.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;
.super Landroid/view/OrientationEventListener;
.source "SpenSimpleSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->construct(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;->val$context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    # invokes: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setScreenOrientation(JI)V
    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$500(JI)V

    :cond_0
    return-void
.end method

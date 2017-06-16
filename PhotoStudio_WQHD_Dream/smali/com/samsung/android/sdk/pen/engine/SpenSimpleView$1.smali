.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$1;
.super Landroid/view/OrientationEventListener;
.source "SpenSimpleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->construct(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->nativeSimple:J
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$1;->val$context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->nativeSimple:J
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    # invokes: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->Native_setScreenOrientation(JI)V
    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$400(JI)V

    :cond_0
    return-void
.end method

.class Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider$1;
.super Landroid/os/Handler;
.source "LibGLAccessibilityNodeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider$1;->this$0:Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider$1;->this$0:Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;

    # getter for: Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->access$000(Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider$1;->this$0:Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;

    # getter for: Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->access$000(Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider$1;->this$0:Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;

    # getter for: Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->access$000(Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "event"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

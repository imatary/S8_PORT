.class Lcom/samsung/android/glview/GLContext$2;
.super Landroid/content/BroadcastReceiver;
.source "GLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLContext;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$2;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext$2;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext$2;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->clearFocus()V

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext$2;->this$0:Lcom/samsung/android/glview/GLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    const-string v1, "accessibilityeventid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext$2;->this$0:Lcom/samsung/android/glview/GLContext;

    # getter for: Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->access$000(Lcom/samsung/android/glview/GLContext;)Landroid/opengl/GLSurfaceView;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext$2;->this$0:Lcom/samsung/android/glview/GLContext;

    const-string v1, "accessibilitynodeinfoid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    # setter for: Lcom/samsung/android/glview/GLContext;->mAccNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v2, v1}, Lcom/samsung/android/glview/GLContext;->access$102(Lcom/samsung/android/glview/GLContext;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_0
.end method

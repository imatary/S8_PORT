.class Lcom/samsung/android/glview/GLContext$5;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$5;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "GLContext"

    const-string v1, "Touch Exploration ContentObserver onChange"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$5;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->access$400(Lcom/samsung/android/glview/GLContext;)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$5;->this$0:Lcom/samsung/android/glview/GLContext;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

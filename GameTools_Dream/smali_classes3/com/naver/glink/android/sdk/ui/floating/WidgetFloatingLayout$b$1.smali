.class Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;
.super Ljava/util/TimerTask;
.source "WidgetFloatingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;-><init>(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

.field final synthetic b:I

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->d:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iput p3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->b:I

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->d:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Z)Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->b:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->d:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->d:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->c(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->d:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;)I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f()Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->d:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->cancel()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;->d:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Z)Z

    :cond_1
    return-void
.end method

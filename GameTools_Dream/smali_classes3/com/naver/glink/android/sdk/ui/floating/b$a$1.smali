.class Lcom/naver/glink/android/sdk/ui/floating/b$a$1;
.super Ljava/util/TimerTask;
.source "RecordWidgetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/b$a;-><init>(Lcom/naver/glink/android/sdk/ui/floating/b;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/b;

.field final synthetic b:I

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/naver/glink/android/sdk/ui/floating/b$a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/b$a;Lcom/naver/glink/android/sdk/ui/floating/b;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->d:Lcom/naver/glink/android/sdk/ui/floating/b$a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    iput p3, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->b:I

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->d:Lcom/naver/glink/android/sdk/ui/floating/b$a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->c(Lcom/naver/glink/android/sdk/ui/floating/b;Z)Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->b:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->d:Lcom/naver/glink/android/sdk/ui/floating/b$a;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b$a;->a(Lcom/naver/glink/android/sdk/ui/floating/b$a;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->d:Lcom/naver/glink/android/sdk/ui/floating/b$a;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b$a;->b(Lcom/naver/glink/android/sdk/ui/floating/b$a;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->d:Lcom/naver/glink/android/sdk/ui/floating/b$a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->v(Lcom/naver/glink/android/sdk/ui/floating/b;)I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->d:Lcom/naver/glink/android/sdk/ui/floating/b$a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/b$a;->cancel()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;->d:Lcom/naver/glink/android/sdk/ui/floating/b$a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->c(Lcom/naver/glink/android/sdk/ui/floating/b;Z)Z

    :cond_0
    return-void
.end method

.class Lcom/naver/glink/android/sdk/ui/record/RecordManager$c$1;
.super Ljava/util/TimerTask;
.source "RecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;-><init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c$1;->b:Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c$1;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->d()Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c$1;->cancel()Z

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->d()Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->f(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c$1;->cancel()Z

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c$1;->b:Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;

    iget v2, v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->c:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c$1;->b:Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

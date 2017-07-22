.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;
.super Ljava/lang/Thread;
.source "NetworkOperators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressThread"
.end annotation


# instance fields
.field mState:I

.field ptHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

.field total:I


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->ptHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->mState:I

    const/16 v3, 0x4b0

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->total:I

    :goto_0
    iget v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->mState:I

    if-ne v3, v6, :cond_0

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->ptHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "total"

    iget v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->total:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->ptHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->total:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->total:I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->mState:I

    return-void
.end method

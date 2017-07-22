.class Lcom/android/phone/nwservice/CallWaiting$3$1;
.super Ljava/lang/Object;
.source "CallWaiting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/CallWaiting$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/nwservice/CallWaiting$3;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/CallWaiting$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/CallWaiting$3$1;->this$1:Lcom/android/phone/nwservice/CallWaiting$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/nwservice/CallWaiting;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mSetOptionComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "delayed Interrogate 500ms"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting$3$1;->this$1:Lcom/android/phone/nwservice/CallWaiting$3;

    iget-object v0, v0, Lcom/android/phone/nwservice/CallWaiting$3;->this$0:Lcom/android/phone/nwservice/CallWaiting;

    invoke-static {v0}, Lcom/android/phone/nwservice/CallWaiting;->-wrap1(Lcom/android/phone/nwservice/CallWaiting;)V

    return-void
.end method

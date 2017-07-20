.class Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/controller/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentBroadCastReceiver"
.end annotation


# instance fields
.field mAction:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/mobilenetworks/controller/IntentManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/mobilenetworks/controller/IntentManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentBroadCastReceiver;->this$0:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentBroadCastReceiver;->mAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasAction(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentBroadCastReceiver;->mAction:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentBroadCastReceiver;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "IntentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->getInstance()Lcom/android/phone/mobilenetworks/controller/IntentManager;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->-wrap0(Lcom/android/phone/mobilenetworks/controller/IntentManager;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.class Lcom/android/phone/HfaLogic$2;
.super Landroid/content/BroadcastReceiver;
.source "HfaLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HfaLogic;->startHfaIntentReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HfaLogic;


# direct methods
.method constructor <init>(Lcom/android/phone/HfaLogic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/HfaLogic$2;->this$0:Lcom/android/phone/HfaLogic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.action.ERROR_HFA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/HfaLogic$2;->this$0:Lcom/android/phone/HfaLogic;

    const-string/jumbo v2, "errorCode"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/HfaLogic;->-wrap0(Lcom/android/phone/HfaLogic;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.android.action.COMPLETE_HFA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/HfaLogic;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Hfa Successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/HfaLogic$2;->this$0:Lcom/android/phone/HfaLogic;

    invoke-static {v1}, Lcom/android/phone/HfaLogic;->-wrap1(Lcom/android/phone/HfaLogic;)V

    goto :goto_0
.end method

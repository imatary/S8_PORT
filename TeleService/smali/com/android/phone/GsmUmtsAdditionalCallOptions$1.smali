.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmUmtsAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v1, "ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-set1(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v1, "ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get5(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v1, "FAILED mTcpListener != null"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get5(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-set3(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)Z

    goto :goto_0
.end method

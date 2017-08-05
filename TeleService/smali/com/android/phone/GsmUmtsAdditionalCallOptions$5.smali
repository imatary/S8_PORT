.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;
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

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap0(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get1(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/TtyListPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get1(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/TtyListPreference;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap13(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V

    :cond_0
    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() prvTtyMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get6()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() settingsTtyMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() mInitDropDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get4(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get3(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/DropDownPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get4(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-string/jumbo v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get3(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/DropDownPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/DropDownPreference;->setSelectedItem(I)V

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap11(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V

    goto :goto_0
.end method

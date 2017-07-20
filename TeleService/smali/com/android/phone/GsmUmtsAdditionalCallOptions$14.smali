.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Lcom/android/phone/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->initializeDropDownTTY()V
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

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    const-string/jumbo v3, "GsmUmtsAdditionalCallOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDropDownTTY val : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", prvTtyMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get7()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v3, "GsmUmtsAdditionalCallOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDropDownTTY state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get4(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "GsmUmtsAdditionalCallOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDropDownTTY mInitDropDown : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get4(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v3, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-set2(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)Z

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get7()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get3(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/DropDownPreference;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get7()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/DropDownPreference;->setSelectedItem(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap11(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    return v7

    :cond_1
    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get7()I

    move-result v3

    if-ne v2, v3, :cond_2

    const-string/jumbo v3, "GsmUmtsAdditionalCallOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDropDownTTY For VZW summary val : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", prvTtyMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get7()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap11(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    :goto_0
    return v6

    :cond_2
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v3, :cond_3

    if-nez v2, :cond_3

    const-string/jumbo v3, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v4, "mDropDownTTY It can\'t be changed to TTY Off during call"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get3(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/DropDownPreference;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get7()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/DropDownPreference;->setSelectedItem(I)V

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap11(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0417

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v7

    :cond_3
    invoke-static {v2}, Lcom/android/phone/utils/SALogging;->sendTtyLog(I)V

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v3, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap5(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V

    return v7

    :cond_4
    invoke-static {v2}, Lcom/android/phone/utils/SALogging;->sendTtyLog(I)V

    const-string/jumbo v3, "preferred_tty_mode"

    int-to-float v4, v2

    invoke-static {v3, v4}, Lcom/android/phone/utils/SALogging;->sendSASettingLog(Ljava/lang/String;F)V

    const-string/jumbo v3, "preferred_tty_mode"

    invoke-static {v3, v2}, Lcom/android/phone/TeleServiceSystemDB;->setSecureSettingDB(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v3, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap12(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v3, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->sendIntent(I)V

    goto :goto_0
.end method

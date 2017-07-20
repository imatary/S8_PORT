.class Lcom/android/phone/EnhancedLteServices$1;
.super Landroid/os/Handler;
.source "EnhancedLteServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EnhancedLteServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnhancedLteServices;


# direct methods
.method constructor <init>(Lcom/android/phone/EnhancedLteServices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EnhancedLteServices$1;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const v1, 0x7f0d08d4

    const v0, 0x7f0d08ca

    const/4 v5, 0x1

    const-string/jumbo v2, "EnhancedLteServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mHandler msg.what"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices$1;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v2}, Lcom/android/phone/EnhancedLteServices;->-get4(Lcom/android/phone/EnhancedLteServices;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices$1;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v2}, Lcom/android/phone/EnhancedLteServices;->-get4(Lcom/android/phone/EnhancedLteServices;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices$1;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v3}, Lcom/android/phone/EnhancedLteServices;->-get4(Lcom/android/phone/EnhancedLteServices;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/EnhancedLteServices;->-set1(Z)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices$1;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v2}, Lcom/android/phone/EnhancedLteServices;->-get4(Lcom/android/phone/EnhancedLteServices;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices$1;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v2}, Lcom/android/phone/EnhancedLteServices;->-get4(Lcom/android/phone/EnhancedLteServices;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices$1;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v3}, Lcom/android/phone/EnhancedLteServices;->-get4(Lcom/android/phone/EnhancedLteServices;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

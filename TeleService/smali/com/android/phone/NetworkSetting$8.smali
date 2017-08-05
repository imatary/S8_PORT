.class Lcom/android/phone/NetworkSetting$8;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->-get9(Lcom/android/phone/NetworkSetting;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v1, "mDisconnectSearchDialogListener DIALOG_PHONE_STATE_NOT_IDLE CASE"

    invoke-static {v0, v1, v2}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    :cond_0
    const-string/jumbo v0, "hide_popup_progress_view"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->-get19(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->-get19(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/ProgressButtonPreference;->setProgressVisible(Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0, v3}, Lcom/android/phone/NetworkSetting;->-wrap17(Lcom/android/phone/NetworkSetting;Z)V

    :cond_1
    const-string/jumbo v0, "usa_gsm_network_setting"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->-get12(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonListPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->-get12(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonListPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/ProgressButtonListPreference;->setProgressVisible(Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0, v3}, Lcom/android/phone/NetworkSetting;->-wrap17(Lcom/android/phone/NetworkSetting;Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0, v3}, Lcom/android/phone/NetworkSetting;->-wrap15(Lcom/android/phone/NetworkSetting;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v1, -0x2711

    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->-set0(Lcom/android/phone/NetworkSetting;I)I

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->-get14(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->-get14(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xbb9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    goto :goto_1

    :pswitch_1
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

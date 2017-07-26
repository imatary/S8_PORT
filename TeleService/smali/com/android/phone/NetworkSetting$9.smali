.class Lcom/android/phone/NetworkSetting$9;
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

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->-get1(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get9(Lcom/android/phone/NetworkSetting;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->-get9(Lcom/android/phone/NetworkSetting;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0565

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v3, 0x7f0d06af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v3, 0x7f0d056c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/NetworkSetting$9$1;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSetting$9$1;-><init>(Lcom/android/phone/NetworkSetting$9;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->-set4(Lcom/android/phone/NetworkSetting;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0, v4}, Lcom/android/phone/NetworkSetting;->-wrap15(Lcom/android/phone/NetworkSetting;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v1, -0x2712

    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->-set0(Lcom/android/phone/NetworkSetting;I)I

    const-string/jumbo v0, "hide_popup_progress_view"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->-get6(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->-get6(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/ProgressButtonPreference;->setProgressVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0, v4}, Lcom/android/phone/NetworkSetting;->-wrap17(Lcom/android/phone/NetworkSetting;Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

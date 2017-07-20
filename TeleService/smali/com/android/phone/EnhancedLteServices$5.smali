.class Lcom/android/phone/EnhancedLteServices$5;
.super Ljava/lang/Object;
.source "EnhancedLteServices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/EnhancedLteServices$5;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/EnhancedLteServices$5;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v1}, Lcom/android/phone/EnhancedLteServices;->-get4(Lcom/android/phone/EnhancedLteServices;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EnhancedLteServices$5;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v1}, Lcom/android/phone/EnhancedLteServices;->-get4(Lcom/android/phone/EnhancedLteServices;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iget-object v1, p0, Lcom/android/phone/EnhancedLteServices$5;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-virtual {v1}, Lcom/android/phone/EnhancedLteServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "voicecall_type"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    const-string/jumbo v1, "EnhancedLteServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAlertDialogListener.. state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " forcingVolteMenuEnable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/EnhancedLteServices;->-get0()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v4, :cond_0

    invoke-static {}, Lcom/android/phone/EnhancedLteServices;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/phone/EnhancedLteServices$5;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v1}, Lcom/android/phone/EnhancedLteServices;->-get4(Lcom/android/phone/EnhancedLteServices;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/EnhancedLteServices$5;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v1}, Lcom/android/phone/EnhancedLteServices;->-get4(Lcom/android/phone/EnhancedLteServices;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

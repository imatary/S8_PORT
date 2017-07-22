.class public Lcom/android/phone/callsettings/SoundEQDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SoundEQDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SoundEQDialog$1;
    }
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    new-instance v0, Lcom/android/phone/callsettings/SoundEQDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SoundEQDialog$1;-><init>(Lcom/android/phone/callsettings/SoundEQDialog;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SoundEQDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "SoundEQDialog"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public handleVoiceCallEqList(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isPossibleEnableMySound()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "fail in handleVoiceCallEqList"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/callsettings/SoundEQDialog;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/SoundEQDialog;->handleVoiceCallEqList_noCallPose(I)V

    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hearing_diagnosis"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d05ef

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d05fa

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/phone/callsettings/SoundEQDialog$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SoundEQDialog$2;-><init>(Lcom/android/phone/callsettings/SoundEQDialog;)V

    const v3, 0x7f0d02ca

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hearing_revision"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voicecall_eq_list_value"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v4, v4}, Lcom/android/phone/PhoneUtilsCommon;->setVoiceCallEq(ZZ)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hearing_revision"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voicecall_eq_list_value"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v4, v4}, Lcom/android/phone/PhoneUtilsCommon;->setVoiceCallEq(ZZ)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleVoiceCallEqList_noCallPose(I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hearing_diagnosis"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d05ef

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d05fa

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/phone/callsettings/SoundEQDialog$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SoundEQDialog$3;-><init>(Lcom/android/phone/callsettings/SoundEQDialog;)V

    const v3, 0x7f0d02ca

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hearing_direction"

    add-int/lit8 v4, p1, -0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hearing_revision"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voicecall_eq_list_value"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v5, v5}, Lcom/android/phone/PhoneUtilsCommon;->setVoiceCallEq(ZZ)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hearing_revision"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voicecall_eq_list_value"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v5, v5}, Lcom/android/phone/PhoneUtilsCommon;->setVoiceCallEq(ZZ)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method init()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SoundEQDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d05ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    const v3, 0x7f0d02c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->getVoiceEqListValue()I

    move-result v3

    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->setupAlert()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/phone/callsettings/SoundEQDialog;->handleVoiceCallEqList(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/SoundEQDialog;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/phone/callsettings/SoundEQDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.phone.callsettings.ACTION.SENT_CLOSE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SoundEQDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/callsettings/SoundEQDialog;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/SoundEQDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isPossibleEnableMySound()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "fail in onCreate"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/SoundEQDialog;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SoundEQDialog;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SoundEQDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SoundEQDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.class public Lcom/android/phone/callsettings/SecPowerKeyEndPreference;
.super Landroid/preference/SwitchPreference;
.source "SecPowerKeyEndPreference.java"


# instance fields
.field private endPowerKeyEndChecked:Z

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/SecPowerKeyEndPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/SecPowerKeyEndPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/SecPowerKeyEndPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setSumary()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setSumary()V

    return-void
.end method


# virtual methods
.method public checkProximitySeonsor(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->isChecked()Z

    move-result v1

    iput-object p1, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "proximity_sensor"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->isChecked()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setChecked(Z)V

    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0570

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0571

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/callsettings/SecPowerKeyEndPreference$1;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference$1;-><init>(Lcom/android/phone/callsettings/SecPowerKeyEndPreference;)V

    const v6, 0x7f0d050c

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/callsettings/SecPowerKeyEndPreference$2;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference$2;-><init>(Lcom/android/phone/callsettings/SecPowerKeyEndPreference;)V

    const v6, 0x7f0d050d

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    new-instance v5, Lcom/android/phone/callsettings/SecPowerKeyEndPreference$3;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference$3;-><init>(Lcom/android/phone/callsettings/SecPowerKeyEndPreference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0249

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "incall_power_button_behavior"

    iget-boolean v7, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    if-eqz v7, :cond_4

    :goto_1
    int-to-long v2, v2

    invoke-static {v4, v5, v6, v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "incall_power_button_behavior"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v2, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->isChecked()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    if-eq v4, v5, :cond_1

    iget-boolean v4, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "incall_power_button_behavior"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v3, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->isChecked()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    if-eq v4, v5, :cond_1

    iget-boolean v4, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public setSumary()V
    .locals 0

    return-void
.end method

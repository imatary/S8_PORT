.class public Lcom/android/phone/VoiceMailDialAlertDialog;
.super Landroid/app/Activity;
.source "VoiceMailDialAlertDialog.java"


# static fields
.field private static final DBG:Z


# instance fields
.field createDialog:Landroid/app/AlertDialog;

.field private vmNumber:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/phone/VoiceMailDialAlertDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/VoiceMailDialAlertDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private useJapanNetwork(Landroid/telephony/TelephonyManager;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v5

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string/jumbo v3, "001"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v5

    :cond_3
    const-string/jumbo v3, "440"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "441"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string/jumbo v3, "10"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v5

    :cond_5
    return v6
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/VoiceMailDialAlertDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailDialAlertDialog;->finish()V

    const-string/jumbo v2, "VoiceMailDialAlertDialog"

    const-string/jumbo v3, "Can\'t update the voicemail number from telephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0d02cd

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/VoiceMailDialAlertDialog;->useJapanNetwork(Landroid/telephony/TelephonyManager;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "+819031014170"

    iput-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    :cond_1
    sget-boolean v2, Lcom/android/phone/VoiceMailDialAlertDialog;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "VoiceMailDialAlertDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Currently, voice mail number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "voicemail_settings_number_label"

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0460

    invoke-virtual {p0, v3}, Lcom/android/phone/VoiceMailDialAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/VoiceMailDialAlertDialog$1;

    invoke-direct {v3, p0}, Lcom/android/phone/VoiceMailDialAlertDialog$1;-><init>(Lcom/android/phone/VoiceMailDialAlertDialog;)V

    const v4, 0x7f0d02ca

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/VoiceMailDialAlertDialog$2;

    invoke-direct {v3, p0}, Lcom/android/phone/VoiceMailDialAlertDialog$2;-><init>(Lcom/android/phone/VoiceMailDialAlertDialog;)V

    const v4, 0x7f0d02c7

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/VoiceMailDialAlertDialog$3;

    invoke-direct {v3, p0}, Lcom/android/phone/VoiceMailDialAlertDialog$3;-><init>(Lcom/android/phone/VoiceMailDialAlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->createDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->createDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/phone/VoiceMailDialAlertDialog$4;

    invoke-direct {v3, p0}, Lcom/android/phone/VoiceMailDialAlertDialog$4;-><init>(Lcom/android/phone/VoiceMailDialAlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailDialAlertDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailDialAlertDialog;->finish()V

    return-void
.end method

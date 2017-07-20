.class public Lcom/android/phone/utils/SoftPhoneUtils;
.super Ljava/lang/Object;
.source "SoftPhoneUtils.java"


# static fields
.field private static dialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissDialog()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "support_softphone"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "SoftPhoneUtils"

    const-string/jumbo v1, "dismissDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SoftPhoneUtils"

    const-string/jumbo v1, "success dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    sput-object v2, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method public static makeDialog(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 5

    const-string/jumbo v1, "support_softphone"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "SoftPhoneUtils"

    const-string/jumbo v2, "makeDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f0e001c

    invoke-direct {v2, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    const-string/jumbo v2, "Transferring..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v1, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    sget-object v1, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    sget-object v1, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    const-string/jumbo v2, "CANCEL"

    new-instance v3, Lcom/android/phone/utils/SoftPhoneUtils$1;

    invoke-direct {v3, p0}, Lcom/android/phone/utils/SoftPhoneUtils$1;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    const/4 v4, -0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget-object v1, Lcom/android/phone/utils/SoftPhoneUtils;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

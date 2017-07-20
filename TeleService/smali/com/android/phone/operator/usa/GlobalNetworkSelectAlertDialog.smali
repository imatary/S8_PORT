.class public Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;
.super Landroid/app/Activity;
.source "GlobalNetworkSelectAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$1;,
        Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$2;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static synthetic -get0(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$1;-><init>(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$2;-><init>(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v4, "GlobalNetworkSelectAlertDialog"

    const-string/jumbo v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->requestWindowFeature(I)Z

    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04006a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f100138

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0885

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0884

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$3;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$3;-><init>(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;Landroid/widget/CheckBox;)V

    const v6, 0x7f0d02ca

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$4;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$4;-><init>(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;Landroid/widget/CheckBox;)V

    const v6, 0x7f0d02c7

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$5;

    invoke-direct {v5, p0}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$5;-><init>(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$6;

    invoke-direct {v5, p0}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$6;-><init>(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$7;

    invoke-direct {v5, p0, v3}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$7;-><init>(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;Landroid/telephony/TelephonyManager;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string/jumbo v1, "GlobalNetworkSelectAlertDialog"

    const-string/jumbo v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GlobalNetworkSelectAlertDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause(): Receiver not registered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

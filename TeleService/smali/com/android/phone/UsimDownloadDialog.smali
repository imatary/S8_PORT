.class public Lcom/android/phone/UsimDownloadDialog;
.super Landroid/app/Activity;
.source "UsimDownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UsimDownloadDialog$1;
    }
.end annotation


# static fields
.field public static final SALES_CODE:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/phone/UsimDownloadDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/UsimDownloadDialog;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/UsimDownloadDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/UsimDownloadDialog;->setOtaReg()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.csc.omcnw_code"

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/UsimDownloadDialog;->SALES_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/UsimDownloadDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/android/phone/UsimDownloadDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownloadDialog$1;-><init>(Lcom/android/phone/UsimDownloadDialog;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownloadDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private setOtaReg()V
    .locals 9

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string/jumbo v5, "USIMServiceOpenDialog"

    const-string/jumbo v6, "setOtaReg"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    const/16 v5, 0x16

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/android/phone/UsimDownloadDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UsimDownloadDialog;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    return-void

    :catch_1
    move-exception v3

    const-string/jumbo v5, "USIMServiceOpenDialog"

    const-string/jumbo v6, "close fail!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/phone/UsimDownloadDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/UsimDownloadDialog;->requestWindowFeature(I)Z

    const v2, 0x7f0400fc

    invoke-virtual {p0, v2}, Lcom/android/phone/UsimDownloadDialog;->setContentView(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/UsimDownloadDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/UsimDownloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/phone/UsimDownloadDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v2, 0x7f1002ad

    invoke-virtual {p0, v2}, Lcom/android/phone/UsimDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "SKC"

    sget-object v3, Lcom/android/phone/UsimDownloadDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0d0753

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    const v2, 0x7f1002ae

    invoke-virtual {p0, v2}, Lcom/android/phone/UsimDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/UsimDownloadDialog;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/phone/UsimDownloadDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f1002b0

    invoke-virtual {p0, v2}, Lcom/android/phone/UsimDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UsimDownloadDialog;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f1002b2

    invoke-virtual {p0, v2}, Lcom/android/phone/UsimDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const-string/jumbo v2, "USIMServiceOpenDialog"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ril.simtype"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v4, v2, :cond_2

    const-string/jumbo v2, "ril.simtype"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x13

    if-ne v3, v2, :cond_5

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/UsimDownloadDialog;->onSKTDownloadDialog()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v2, "LUC"

    sget-object v3, Lcom/android/phone/UsimDownloadDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0d073a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "ril.simtype"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v3, v2, :cond_6

    const-string/jumbo v2, "ril.simtype"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x12

    if-ne v3, v2, :cond_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/UsimDownloadDialog;->onLGTDownloadDialog()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onLGTDownloadDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0738

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/phone/UsimDownloadDialog$5;

    invoke-direct {v2, p0}, Lcom/android/phone/UsimDownloadDialog$5;-><init>(Lcom/android/phone/UsimDownloadDialog;)V

    const v3, 0x7f0d0502

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/phone/UsimDownloadDialog$6;

    invoke-direct {v2, p0}, Lcom/android/phone/UsimDownloadDialog$6;-><init>(Lcom/android/phone/UsimDownloadDialog;)V

    const v3, 0x7f0d0503

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v0, "USIMServiceOpenDialog"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "USIMServiceOpenDialog"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSKTDownloadDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0739

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/phone/UsimDownloadDialog$3;

    invoke-direct {v2, p0}, Lcom/android/phone/UsimDownloadDialog$3;-><init>(Lcom/android/phone/UsimDownloadDialog;)V

    const v3, 0x7f0d0502

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/phone/UsimDownloadDialog$4;

    invoke-direct {v2, p0}, Lcom/android/phone/UsimDownloadDialog$4;-><init>(Lcom/android/phone/UsimDownloadDialog;)V

    const v3, 0x7f0d0503

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method rebootSystem()V
    .locals 2

    new-instance v0, Lcom/android/phone/UsimDownloadDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownloadDialog$2;-><init>(Lcom/android/phone/UsimDownloadDialog;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

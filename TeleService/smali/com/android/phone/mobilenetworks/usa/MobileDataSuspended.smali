.class public Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;
.super Landroid/app/Activity;
.source "MobileDataSuspended.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$1;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIsButtonClicked:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static synthetic -set0(Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->mIsButtonClicked:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, "PR.MobileDataSuspended"

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->mIsButtonClicked:Z

    new-instance v0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$1;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$1;-><init>(Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "PR.MobileDataSuspended"

    const-string/jumbo v1, "MobileDataSuspended start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->requestWindowFeature(I)Z

    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->setContentView(I)V

    const-string/jumbo v0, "PR.MobileDataSuspended"

    const-string/jumbo v1, "Register to listner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string/jumbo v0, "PR.MobileDataSuspended"

    const-string/jumbo v1, "onCreate+ Registering listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->showDialog(I)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v8, 0x7f04008b

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0d24

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0d25

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d0d26

    const v8, 0x7f100199

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0e0056

    invoke-direct {v8, p0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$2;

    invoke-direct {v9, p0}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$2;-><init>(Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;)V

    invoke-virtual {v8, v0, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$3;

    invoke-direct {v9, p0}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$3;-><init>(Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v8, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$4;

    invoke-direct {v8, p0}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$4;-><init>(Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d8

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    return-object v3
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string/jumbo v0, "PR.MobileDataSuspended"

    const-string/jumbo v1, "onDestroy()++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->mIsButtonClicked:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "PR.MobileDataSuspended"

    const-string/jumbo v1, "onDismiss()+"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->mIsButtonClicked:Z

    return-void
.end method

.method protected onPause()V
    .locals 6

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v3, "PR.MobileDataSuspended"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPause mIsButtonClicked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->mIsButtonClicked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->mIsButtonClicked:Z

    if-nez v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "PR.MobileDataSuspended"

    const-string/jumbo v4, "onPause doing start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

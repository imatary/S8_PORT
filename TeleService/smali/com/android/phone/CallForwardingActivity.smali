.class public Lcom/android/phone/CallForwardingActivity;
.super Landroid/preference/PreferenceActivity;
.source "CallForwardingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardingActivity$1;
    }
.end annotation


# instance fields
.field private mCancel_forwarding:Landroid/preference/PreferenceScreen;

.field private mForward_on_busy:Landroid/preference/PreferenceScreen;

.field private mForward_on_no_reply:Landroid/preference/PreferenceScreen;

.field private mFull_forwarding:Landroid/preference/PreferenceScreen;

.field private mIsCdma:I

.field private mIsRoaming:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/CallForwardingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallForwardingActivity;->AlertDialogCallForwardingActivateOn_noReply()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/CallForwardingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallForwardingActivity;->AlertDialogCallForwardingCancelforwarding()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/CallForwardingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallForwardingActivity;->AlertDialogCallForwardingFullforwarding()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/CallForwardingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallForwardingActivity;->AlertDialogCallForwardingOnBusy()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/CallForwardingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallForwardingActivity;->AlertDialogCallForwardingSelectiveforwarding()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallForwardingActivity;->mIsRoaming:Z

    new-instance v0, Lcom/android/phone/CallForwardingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallForwardingActivity$1;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    iput-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private AlertDialogCallForwardingActivateOn_noReply()V
    .locals 9

    const v2, 0x7f0d0b9c

    const v8, 0x7f0d063a

    const v7, 0x7f0d0639

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/android/phone/CallForwardingActivity;->mIsRoaming:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "*92"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$2;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$3;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "1422"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$4;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$4;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$5;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$5;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private AlertDialogCallForwardingCancelforwarding()V
    .locals 9

    const v3, 0x7f0d0b9c

    const v8, 0x7f0d063a

    const v7, 0x7f0d0639

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/android/phone/CallForwardingActivity;->mIsRoaming:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/CallForwardingActivity;->mIsCdma:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "*730"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$18;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$18;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$19;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$19;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "+819044441420"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$20;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$20;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$21;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$21;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "1420"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$22;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$22;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$23;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$23;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private AlertDialogCallForwardingFullforwarding()V
    .locals 9

    const v3, 0x7f0d0b9c

    const v8, 0x7f0d063a

    const v7, 0x7f0d0639

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/android/phone/CallForwardingActivity;->mIsRoaming:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/CallForwardingActivity;->mIsCdma:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "*72"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$10;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$10;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$11;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$11;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "+819044441424"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$12;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$12;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$13;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$13;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "1424"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$14;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$14;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$15;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$15;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private AlertDialogCallForwardingOnBusy()V
    .locals 9

    const v2, 0x7f0d0b9c

    const v8, 0x7f0d063a

    const v7, 0x7f0d0639

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/android/phone/CallForwardingActivity;->mIsRoaming:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "*90"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$6;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$6;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$7;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$7;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "1423"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$8;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$8;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$9;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$9;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private AlertDialogCallForwardingSelectiveforwarding()V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/android/phone/CallForwardingActivity;->mIsRoaming:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b9c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "1425"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$16;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$16;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    const v3, 0x7f0d0639

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallForwardingActivity$17;

    invoke-direct {v2, p0}, Lcom/android/phone/CallForwardingActivity$17;-><init>(Lcom/android/phone/CallForwardingActivity;)V

    const v3, 0x7f0d063a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    const-string/jumbo v0, "forward_on_no_reply_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mForward_on_no_reply:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mForward_on_no_reply:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/CallForwardingActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "forward_on_busy_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mForward_on_busy:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mForward_on_busy:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/CallForwardingActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "full_forwarding_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mFull_forwarding:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mFull_forwarding:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/CallForwardingActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "cancel_forwarding_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mCancel_forwarding:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mCancel_forwarding:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/CallForwardingActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method static isCheckNetworkRoaming()Z
    .locals 3

    const-string/jumbo v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f07000c

    invoke-virtual {p0, v1}, Lcom/android/phone/CallForwardingActivity;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/phone/CallForwardingActivity;->init()V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/CallForwardingActivity;->isCheckNetworkRoaming()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CallForwardingActivity;->mIsRoaming:Z

    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.NetworkServiceActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CallForwardingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallForwardingActivity;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallForwardingActivity;->mIsCdma:I

    iget-boolean v0, p0, Lcom/android/phone/CallForwardingActivity;->mIsRoaming:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/CallForwardingActivity;->mIsCdma:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mForward_on_no_reply:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity;->mForward_on_busy:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method

.class public Lcom/android/phone/VoiceMailActivity;
.super Landroid/preference/PreferenceActivity;
.source "VoiceMailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VoiceMailActivity$1;
    }
.end annotation


# instance fields
.field private mEdit_reply_message:Landroid/preference/PreferenceScreen;

.field private mEnglish_guidance:Landroid/preference/PreferenceScreen;

.field private mIsCdma:I

.field private mIsRoaming:Z

.field private mJapan_guidance:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlay_voicemail:Landroid/preference/PreferenceScreen;

.field private mStart_voicemail1:Landroid/preference/PreferenceScreen;

.field private mStart_voicemail2:Landroid/preference/PreferenceScreen;

.field private mStop_voicemail:Landroid/preference/PreferenceScreen;

.field mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/VoiceMailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VoiceMailActivity;->AlertDialogActiveEditReplyMessage()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/VoiceMailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VoiceMailActivity;->AlertDialogActiveEnglishGuidance()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/VoiceMailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VoiceMailActivity;->AlertDialogActiveJapanGuidance()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/VoiceMailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VoiceMailActivity;->AlertDialogActivePlayVoiceMaill()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/VoiceMailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VoiceMailActivity;->AlertDialogActiveStartVoiceMail1()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/VoiceMailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VoiceMailActivity;->AlertDialogActiveStartVoiceMail2()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/VoiceMailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VoiceMailActivity;->AlertDialogActiveStopVoiceMail()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VoiceMailActivity;->mIsRoaming:Z

    new-instance v0, Lcom/android/phone/VoiceMailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceMailActivity$1;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    iput-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private AlertDialogActiveEditReplyMessage()V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/android/phone/VoiceMailActivity;->mIsRoaming:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b9c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "1414"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$20;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$20;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    const v3, 0x7f0d0639

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$21;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$21;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    const v3, 0x7f0d063a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private AlertDialogActiveEnglishGuidance()V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b9c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "14191"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$22;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$22;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    const v3, 0x7f0d0639

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$23;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$23;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    const v3, 0x7f0d063a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private AlertDialogActiveJapanGuidance()V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b9c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "14190"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$24;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$24;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    const v3, 0x7f0d0639

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$25;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$25;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    const v3, 0x7f0d063a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private AlertDialogActivePlayVoiceMaill()V
    .locals 9

    const v8, 0x7f0d063a

    const v7, 0x7f0d0639

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/android/phone/VoiceMailActivity;->mIsRoaming:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b9e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "+819044440141"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9f

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$2;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$3;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b9c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "1417"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$4;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$4;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$5;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$5;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private AlertDialogActiveStartVoiceMail1()V
    .locals 9

    const v3, 0x7f0d0b9c

    const v8, 0x7f0d063a

    const v7, 0x7f0d0639

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/android/phone/VoiceMailActivity;->mIsRoaming:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/VoiceMailActivity;->mIsCdma:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "*68"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$6;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$6;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$7;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$7;-><init>(Lcom/android/phone/VoiceMailActivity;)V

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

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "+819044441411"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$8;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$8;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$9;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$9;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "1411"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$10;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$10;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$11;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$11;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private AlertDialogActiveStartVoiceMail2()V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/android/phone/VoiceMailActivity;->mIsRoaming:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b9c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "1413"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$12;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$12;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    const v3, 0x7f0d0639

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$13;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$13;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    const v3, 0x7f0d063a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private AlertDialogActiveStopVoiceMail()V
    .locals 9

    const v3, 0x7f0d0b9c

    const v8, 0x7f0d063a

    const v7, 0x7f0d0639

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/android/phone/VoiceMailActivity;->mIsRoaming:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/VoiceMailActivity;->mIsCdma:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "*680"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$14;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$14;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$15;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$15;-><init>(Lcom/android/phone/VoiceMailActivity;)V

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

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "+819044441410"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$16;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$16;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$17;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$17;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "1410"

    aput-object v4, v3, v6

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$18;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$18;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailActivity$19;

    invoke-direct {v2, p0}, Lcom/android/phone/VoiceMailActivity$19;-><init>(Lcom/android/phone/VoiceMailActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    const-string/jumbo v0, "play_voicemail_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceMailActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mPlay_voicemail:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mPlay_voicemail:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/VoiceMailActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "start_voicemail1_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceMailActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mStart_voicemail1:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mStart_voicemail1:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/VoiceMailActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "start_voicemail2_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceMailActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mStart_voicemail2:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mStart_voicemail2:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/VoiceMailActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "stop_voicemail_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceMailActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mStop_voicemail:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mStop_voicemail:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/VoiceMailActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "edit_reply_message_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceMailActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mEdit_reply_message:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mEdit_reply_message:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/VoiceMailActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "nwservice_english_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceMailActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mEnglish_guidance:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mEnglish_guidance:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/VoiceMailActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "nwservice_japan_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceMailActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mJapan_guidance:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mJapan_guidance:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/VoiceMailActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

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
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceMailActivity;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/phone/VoiceMailActivity;->init()V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VoiceMailActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/VoiceMailActivity;->isCheckNetworkRoaming()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/VoiceMailActivity;->mIsRoaming:Z

    iget-boolean v1, p0, Lcom/android/phone/VoiceMailActivity;->mIsRoaming:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/VoiceMailActivity;->mStart_voicemail2:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/VoiceMailActivity;->mEdit_reply_message:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_1
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
    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceMailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailActivity;->finish()V

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
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-static {}, Lcom/android/phone/VoiceMailActivity;->isCheckNetworkRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/VoiceMailActivity;->mIsRoaming:Z

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/android/phone/VoiceMailActivity;->mIsCdma:I

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method

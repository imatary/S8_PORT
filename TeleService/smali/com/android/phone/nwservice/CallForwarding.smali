.class public Lcom/android/phone/nwservice/CallForwarding;
.super Landroid/preference/PreferenceActivity;
.source "CallForwarding.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nwservice/CallForwarding$1;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field editForwardingNumber:Landroid/widget/EditText;

.field editRingTime:Landroid/widget/EditText;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mCallForwardingActive:Landroid/preference/PreferenceScreen;

.field private mCallForwardingCheck:Landroid/preference/PreferenceScreen;

.field private mCallForwardingDeactive:Landroid/preference/PreferenceScreen;

.field private mCallForwardingGuidance:Landroid/preference/PreferenceScreen;

.field private mCallForwardingRegister:Landroid/preference/PreferenceScreen;

.field private mCallForwardingVoicemail:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/phone/nwservice/CallForwarding;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/nwservice/CallForwarding;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/nwservice/CallForwarding;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/nwservice/CallForwarding;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallForwarding;->alertdialogCallForwardingActivate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/nwservice/CallForwarding;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallForwarding;->alertdialogCallForwardingRegister()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/nwservice/CallForwarding;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallForwarding;->alertdialogSearch()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/nwservice/CallForwarding;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/CallForwarding;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/nwservice/CallForwarding;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/nwservice/CallForwarding;->makeUSSDActivate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/nwservice/CallForwarding;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/CallForwarding;->makeUSSDGuidance(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/nwservice/CallForwarding;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/CallForwarding;->makeUSSDRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/nwservice/CallForwarding;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/CallForwarding;->makeUSSDVoicemail(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/nwservice/CallForwarding;->NUM_PROJECTION:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/nwservice/CallForwarding;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/nwservice/CallForwarding;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/nwservice/CallForwarding;->mPreference:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/nwservice/CallForwarding$1;

    invoke-direct {v0, p0}, Lcom/android/phone/nwservice/CallForwarding$1;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    iput-object v0, p0, Lcom/android/phone/nwservice/CallForwarding;->handler:Landroid/os/Handler;

    return-void
.end method

.method private alertdialogCallForwardingActivate()V
    .locals 8

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->factory:Landroid/view/LayoutInflater;

    const v5, 0x7f04001f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100077

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    const v4, 0x7f100079

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->editRingTime:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->editRingTime:Landroid/widget/EditText;

    new-instance v5, Lcom/android/phone/nwservice/CallForwarding$6;

    invoke-direct {v5, p0}, Lcom/android/phone/nwservice/CallForwarding$6;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v4, 0x7f100062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0a7c

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/nwservice/CallForwarding$7;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/CallForwarding$7;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/phone/nwservice/CallForwarding$8;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/CallForwarding$8;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v5, 0x7f0d050c

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/nwservice/CallForwarding$9;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/CallForwarding$9;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v5, 0x7f0d050d

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/nwservice/CallForwarding$10;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/CallForwarding$10;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v4, Lcom/android/phone/nwservice/CallForwarding$11;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/CallForwarding$11;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/nwservice/CallForwarding$12;

    invoke-direct {v5, p0}, Lcom/android/phone/nwservice/CallForwarding$12;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private alertdialogCallForwardingRegister()V
    .locals 8

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->factory:Landroid/view/LayoutInflater;

    const v5, 0x7f040021

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100077

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    const v4, 0x7f100062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0ac6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/nwservice/CallForwarding$13;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/CallForwarding$13;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/phone/nwservice/CallForwarding$14;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/CallForwarding$14;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v5, 0x7f0d0af3

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/nwservice/CallForwarding$15;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/CallForwarding$15;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v5, 0x7f0d0af4

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/nwservice/CallForwarding$16;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/CallForwarding$16;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v5, 0x7f0d050d

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/nwservice/CallForwarding$17;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/CallForwarding$17;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v4, Lcom/android/phone/nwservice/CallForwarding$18;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/CallForwarding$18;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/nwservice/CallForwarding$19;

    invoke-direct {v5, p0}, Lcom/android/phone/nwservice/CallForwarding$19;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private alertdialogCallForwardingVoicemailSettings()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0ac7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0ad8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/nwservice/CallForwarding$20;

    invoke-direct {v3, p0}, Lcom/android/phone/nwservice/CallForwarding$20;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v4, 0x7f0d0ad1

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/nwservice/CallForwarding$21;

    invoke-direct {v3, p0}, Lcom/android/phone/nwservice/CallForwarding$21;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v4, 0x7f0d0ad2

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/nwservice/CallForwarding$22;

    invoke-direct {v3, p0}, Lcom/android/phone/nwservice/CallForwarding$22;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v4, 0x7f0d050d

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/nwservice/CallForwarding$23;

    invoke-direct {v3, p0}, Lcom/android/phone/nwservice/CallForwarding$23;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/phone/nwservice/CallForwarding$24;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/CallForwarding$24;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private alertdialogGuidanceSettings()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0aea

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0aeb

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/nwservice/CallForwarding$25;

    invoke-direct {v3, p0}, Lcom/android/phone/nwservice/CallForwarding$25;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v4, 0x7f0d0af0

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/nwservice/CallForwarding$26;

    invoke-direct {v3, p0}, Lcom/android/phone/nwservice/CallForwarding$26;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v4, 0x7f0d0af1

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/nwservice/CallForwarding$27;

    invoke-direct {v3, p0}, Lcom/android/phone/nwservice/CallForwarding$27;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v4, 0x7f0d050d

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/nwservice/CallForwarding$28;

    invoke-direct {v3, p0}, Lcom/android/phone/nwservice/CallForwarding$28;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/phone/nwservice/CallForwarding$29;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/CallForwarding$29;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private alertdialogSearch()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0509

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/phone/nwservice/CallForwarding$5;

    invoke-direct {v1, p0}, Lcom/android/phone/nwservice/CallForwarding$5;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const v2, 0x7f090054

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private makeUSSDActivate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "120"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "*1*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CallForwarding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeUSSDActivate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/CallForwarding;->procUSSDCommand(Ljava/lang/String;)V

    return-void
.end method

.method private makeUSSDCheck()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "120"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "*1#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CallForwarding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeUSSDCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/CallForwarding;->procUSSDCommand(Ljava/lang/String;)V

    return-void
.end method

.method private makeUSSDDeactive()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "120"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "*1#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CallForwarding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeUSSDDeactive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/CallForwarding;->procUSSDCommand(Ljava/lang/String;)V

    return-void
.end method

.method private makeUSSDGuidance(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "120"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "*2*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CallForwarding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeUSSDGuidance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/CallForwarding;->procUSSDCommand(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeUSSDRegister(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "120"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "*5*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CallForwarding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeUSSDRegister : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/CallForwarding;->procUSSDCommand(Ljava/lang/String;)V

    return-void
.end method

.method private makeUSSDVoicemail(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "120"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "*3*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CallForwarding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeUSSDVoicemail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/CallForwarding;->procUSSDCommand(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private procUSSDCommand(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x1f4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallForwarding;->showDialog(I)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    const-string/jumbo v1, "CallForwarding"

    const-string/jumbo v2, "skip USSD request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallForwarding;->showDialog(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallForwarding;->showDialog(I)V

    const-string/jumbo v1, "CallForwarding"

    const-string/jumbo v2, "CallStateException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, -0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v7, ""

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/nwservice/CallForwarding$4;

    invoke-direct {v1, p0}, Lcom/android/phone/nwservice/CallForwarding$4;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "CallForwarding"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NUMBER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallForwarding;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/nwservice/CallForwarding;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "CallForwarding"

    const-string/jumbo v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "CallForwarding"

    const-string/jumbo v1, "onActivityResult: cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f070018

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallForwarding;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mTelMan:Landroid/telephony/TelephonyManager;

    const-string/jumbo v4, "callforwarding_active_pref"

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingActive:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "callforwarding_deactive_pref"

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingDeactive:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "callforwarding_register_pref"

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingRegister:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "callforwarding_voicemail_pref"

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingVoicemail:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "callforwarding_guidance_pref"

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingGuidance:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "callforwarding_check_pref"

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingCheck:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mPreference:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingActive:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mPreference:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingDeactive:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mPreference:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingRegister:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mPreference:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingVoicemail:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mPreference:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingGuidance:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mPreference:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/nwservice/CallForwarding;->mCallForwardingCheck:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mPreference:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/nwservice/CallForwarding;->handler:Landroid/os/Handler;

    const/16 v6, 0x34

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->factory:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->factory:Landroid/view/LayoutInflater;

    const v5, 0x7f04001f

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100077

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->editForwardingNumber:Landroid/widget/EditText;

    const v4, 0x7f100079

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->editRingTime:Landroid/widget/EditText;

    const-string/jumbo v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallForwarding;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/phone/nwservice/CallForwarding;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallForwarding;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    const v8, 0x7f0d050c

    const/4 v7, 0x1

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v6

    return-object v6

    :sswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v6, 0x7f0d0aa4

    invoke-virtual {p0, v6}, Lcom/android/phone/nwservice/CallForwarding;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0

    :sswitch_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0d0acb

    invoke-virtual {p0, v6}, Lcom/android/phone/nwservice/CallForwarding;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v8}, Lcom/android/phone/nwservice/CallForwarding;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/phone/nwservice/CallForwarding$2;

    invoke-direct {v7, p0}, Lcom/android/phone/nwservice/CallForwarding$2;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    :sswitch_2
    const v3, 0x7f0d0332

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/CallForwarding;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v8}, Lcom/android/phone/nwservice/CallForwarding;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/phone/nwservice/CallForwarding$3;

    invoke-direct {v7, p0}, Lcom/android/phone/nwservice/CallForwarding$3;-><init>(Lcom/android/phone/nwservice/CallForwarding;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/nwservice/CallForwarding;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallForwarding;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.nwservice.NetworkService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallForwarding;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallForwarding;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CallForwarding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "callforwarding_active_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallForwarding;->alertdialogCallForwardingActivate()V

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "callforwarding_deactive_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallForwarding;->makeUSSDDeactive()V

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "callforwarding_register_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallForwarding;->alertdialogCallForwardingRegister()V

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "callforwarding_voicemail_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallForwarding;->alertdialogCallForwardingVoicemailSettings()V

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "callforwarding_guidance_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallForwarding;->alertdialogGuidanceSettings()V

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "callforwarding_check_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallForwarding;->makeUSSDCheck()V

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    return v2

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method

.class public Lcom/android/phone/DsaMain;
.super Landroid/preference/PreferenceActivity;
.source "DsaMain.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static mEdit:Landroid/content/SharedPreferences$Editor;

.field public static mGetResult:Z

.field public static mPhoneNB1:Ljava/lang/String;

.field public static mPhoneNB2:Ljava/lang/String;

.field public static mPref:Landroid/content/SharedPreferences;

.field public static mSelectedSIM:I

.field public static mWaitDialog:Landroid/app/ProgressDialog;


# instance fields
.field public final dsaNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dsaset:Lcom/android/phone/DsaSetting;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mButtonPhoneNumber:Landroid/preference/Preference;

.field public mButtonSetSimCard:Landroid/preference/Preference;

.field private mDialogPause:Z

.field private mHotSwapFilter:Landroid/content/IntentFilter;

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHotSwapRegister:Z

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mTitleID:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/DsaMain;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/DsaMain;->mPhoneNB1:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/DsaMain;->mPhoneNB2:Ljava/lang/String;

    sput v1, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    sput-object v0, Lcom/android/phone/DsaMain;->mPref:Landroid/content/SharedPreferences;

    sput-object v0, Lcom/android/phone/DsaMain;->mEdit:Landroid/content/SharedPreferences$Editor;

    sput-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    sput-boolean v1, Lcom/android/phone/DsaMain;->mGetResult:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DsaMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    iput-boolean v1, p0, Lcom/android/phone/DsaMain;->mIsHotSwapRegister:Z

    const v0, 0x7f0d09c9

    iput v0, p0, Lcom/android/phone/DsaMain;->mTitleID:I

    return-void
.end method

.method private dsaLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "DsaMain"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "DsaMain"

    const-string/jumbo v1, "dismissDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    sput-object v2, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method public displayDialog(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "DsaMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "displayDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DsaMain;->dsaset:Lcom/android/phone/DsaSetting;

    invoke-virtual {v0, v3}, Lcom/android/phone/DsaSetting;->setUpdateDialogCount(Z)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/phone/DsaMain;->mTitleID:I

    invoke-virtual {p0, v0}, Lcom/android/phone/DsaMain;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0d038f

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaMain;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/DsaMain$3;

    invoke-direct {v1, p0}, Lcom/android/phone/DsaMain$3;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public displayResultDialog(Z)V
    .locals 11

    const-string/jumbo v8, "DsaMain"

    const-string/jumbo v9, "displayResultDialog"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->dismissDialog()V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    new-instance v0, Lcom/android/phone/DsaResult;

    invoke-direct {v0}, Lcom/android/phone/DsaResult;-><init>()V

    invoke-virtual {v0}, Lcom/android/phone/DsaResult;->CheckDsaResult()Z

    move-result v5

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string/jumbo v8, "DsaMain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "displayResultDialog - bActivate:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "DsaMain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "displayResultDialog - result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    if-eqz v5, :cond_2

    const-string/jumbo v8, "DsaMain"

    const-string/jumbo v9, "displayResultDialog [Activated Success]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "dsa_is_activate"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0c3a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v8, Lcom/android/phone/DsaMain;->mPref:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "dsa_result_dialog_success_is_checked"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getListView()Landroid/widget/ListView;

    const v8, 0x7f04004f

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/ListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f1000f6

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v9, p0, Lcom/android/phone/DsaMain;->mTitleID:I

    invoke-virtual {p0, v9}, Lcom/android/phone/DsaMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d01df

    invoke-virtual {p0, v9}, Lcom/android/phone/DsaMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaMain$4;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaMain$4;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/DsaMain$5;

    invoke-direct {v9, p0}, Lcom/android/phone/DsaMain$5;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v8, "DsaMain"

    const-string/jumbo v9, "displayResultDialog [Activated Failed]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0c3b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0d09ca

    invoke-virtual {p0, v9}, Lcom/android/phone/DsaMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d01df

    invoke-virtual {p0, v9}, Lcom/android/phone/DsaMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaMain$6;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaMain$6;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/DsaMain$7;

    invoke-direct {v9, p0}, Lcom/android/phone/DsaMain$7;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "DsaMain"

    const-string/jumbo v9, "displayResultDialog [Deactivated]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "dsa_is_activate"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0c3b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v8, Lcom/android/phone/DsaMain;->mPref:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "dsa_result_dialog_success_is_checked"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getListView()Landroid/widget/ListView;

    const v8, 0x7f04004f

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/ListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f1000f6

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v9, p0, Lcom/android/phone/DsaMain;->mTitleID:I

    invoke-virtual {p0, v9}, Lcom/android/phone/DsaMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d01df

    invoke-virtual {p0, v9}, Lcom/android/phone/DsaMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaMain$8;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaMain$8;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/DsaMain$9;

    invoke-direct {v9, p0}, Lcom/android/phone/DsaMain$9;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v8, "DsaMain"

    const-string/jumbo v9, "displayResultDialog Fail"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "SelectSimStatus"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/DsaMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v8, "SimStatus"

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_5
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0d09ca

    invoke-virtual {p0, v9}, Lcom/android/phone/DsaMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d01df

    invoke-virtual {p0, v9}, Lcom/android/phone/DsaMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaMain$10;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaMain$10;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/DsaMain$11;

    invoke-direct {v9, p0}, Lcom/android/phone/DsaMain$11;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_0
    sget v8, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v8, :cond_5

    sget v8, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v8, :cond_5

    sget v8, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v8, :cond_5

    sget v8, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "dsa_is_activate"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0c3a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :pswitch_1
    sget v8, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v8, :cond_5

    sget v8, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "dsa_is_activate"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0c3a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    :pswitch_2
    sget v8, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v8, :cond_5

    sget v8, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "dsa_is_activate"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0c3a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string/jumbo v0, "DsaMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->selectSwitch()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x7f0d09c7

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v3, "DsaMain"

    const-string/jumbo v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f04004d

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaMain;->setContentView(I)V

    const v3, 0x7f070029

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaMain;->addPreferencesFromResource(I)V

    const v3, 0x7f10003d

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const v3, 0x7f10003c

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "button_phone_number_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v3, "button_set_sim_card_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v3, "dsa_main"

    invoke-virtual {p0, v3, v7}, Lcom/android/phone/DsaMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/android/phone/DsaMain;->mPref:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/android/phone/DsaMain;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sput-object v3, Lcom/android/phone/DsaMain;->mEdit:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Lcom/android/phone/DsaSetting;

    invoke-direct {v3}, Lcom/android/phone/DsaSetting;-><init>()V

    iput-object v3, p0, Lcom/android/phone/DsaMain;->dsaset:Lcom/android/phone/DsaSetting;

    const-string/jumbo v3, "hot_swap_type_sim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/DsaMain;->mHotSwapFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/phone/DsaMain;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.settings.networkmanagement.finish"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/phone/DsaMain$1;

    invoke-direct {v3, p0}, Lcom/android/phone/DsaMain$1;-><init>(Lcom/android/phone/DsaMain;)V

    iput-object v3, p0, Lcom/android/phone/DsaMain;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/phone/DsaMain;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.samsung.permission.SIMHOTSWAP"

    invoke-virtual {p0, v3, v4, v5, v8}, Lcom/android/phone/DsaMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/android/phone/DsaMain;->mIsHotSwapRegister:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const-string/jumbo v3, "replace_dual_sim_always_on"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iput v9, p0, Lcom/android/phone/DsaMain;->mTitleID:I

    :cond_1
    iget-object v3, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "dsa_is_activate"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    const-string/jumbo v3, "DsaMain"

    const-string/jumbo v4, "DSA_IS_ACTIVATE IS ON"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0c3a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string/jumbo v3, "config_hide_status_bar"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v3, "DsaMain"

    const-string/jumbo v4, "DSA_IS_ACTIVATE IS OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0c3b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "DsaMain"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string/jumbo v1, "hot_swap_type_sim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/DsaMain;->mIsHotSwapRegister:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/DsaMain;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DsaMain;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/DsaMain;->mIsHotSwapRegister:Z

    :cond_0
    sput-boolean v4, Lcom/android/phone/DsaMain;->mGetResult:Z

    iput-boolean v4, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DsaMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string/jumbo v0, "DsaMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOptionsItemSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "DsaMain"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string/jumbo v0, "DsaMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume mActionBarSwitch.isChecked():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->checkDualSimReady()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "DsaMain"

    const-string/jumbo v1, "not dual sim state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c3b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/DsaMain;->dsaset:Lcom/android/phone/DsaSetting;

    invoke-virtual {v0}, Lcom/android/phone/DsaSetting;->getUpdateDialogCount()I

    move-result v0

    if-gtz v0, :cond_2

    iput-boolean v3, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaMain;->displayDialog(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.android.phone.dsacomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/phone/DsaMain$2;

    invoke-direct {v1, p0}, Lcom/android/phone/DsaMain$2;-><init>(Lcom/android/phone/DsaMain;)V

    iput-object v1, p0, Lcom/android/phone/DsaMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/DsaMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/DsaMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string/jumbo v0, "DsaMain"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->dismissDialog()V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/DsaMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public selectSwitch()V
    .locals 11

    const v10, 0x7f0d0c3b

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v4, "DsaMain"

    const-string/jumbo v5, "selectSwitch - phone is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    const-string/jumbo v4, "dsa_phone_number"

    invoke-virtual {p0, v4, v7}, Lcom/android/phone/DsaMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v4, "dsa_phone_number_sim1"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/DsaMain;->mPhoneNB1:Ljava/lang/String;

    const-string/jumbo v4, "dsa_phone_number_sim2"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/DsaMain;->mPhoneNB2:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "DsaMain"

    const-string/jumbo v5, "dsaNumbers is not empty!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_1
    sget-object v4, Lcom/android/phone/DsaMain;->mPhoneNB1:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/phone/DsaMain;->mPhoneNB2:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "DsaMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectSwitch - mActionBarSwitch.isChecked() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPhoneNB1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/DsaMain;->mPhoneNB1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mPhoneNB2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/DsaMain;->mPhoneNB2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/DsaMain;->dsaLog(Ljava/lang/String;)V

    sput-boolean v9, Lcom/android/phone/DsaMain;->mGetResult:Z

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/phone/DsaMain;->mPhoneNB1:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/phone/DsaMain;->mPhoneNB1:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string/jumbo v4, "DsaMain"

    const-string/jumbo v5, "number is not valid!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_3
    sget-object v4, Lcom/android/phone/DsaMain;->mPhoneNB2:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/phone/DsaMain;->mPhoneNB2:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    const-string/jumbo v4, "SelectSimStatus"

    invoke-virtual {p0, v4, v7}, Lcom/android/phone/DsaMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v4, "SimStatus"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "dsa_selected_simside"

    sget v6, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaset:Lcom/android/phone/DsaSetting;

    iget-object v5, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    sget v6, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/android/phone/DsaSetting;->DSAactivate(Ljava/util/ArrayList;IZ)V

    invoke-virtual {p0, v7}, Lcom/android/phone/DsaMain;->displayDialog(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "dsa_is_activate"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "SelectSimStatus"

    invoke-virtual {p0, v4, v7}, Lcom/android/phone/DsaMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v4, "SimStatus"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "dsa_selected_simside"

    sget v6, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaset:Lcom/android/phone/DsaSetting;

    iget-object v5, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    sget v6, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/phone/DsaSetting;->DSAactivate(Ljava/util/ArrayList;IZ)V

    invoke-virtual {p0, v7}, Lcom/android/phone/DsaMain;->displayDialog(I)V

    goto :goto_0
.end method

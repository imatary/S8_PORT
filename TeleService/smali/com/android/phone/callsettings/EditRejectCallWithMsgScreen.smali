.class public Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "EditRejectCallWithMsgScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$1;,
        Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$2;
    }
.end annotation


# static fields
.field protected static cancelButton:Landroid/widget/Button;

.field protected static saveButton:Landroid/widget/Button;


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field istoastshowing:Z

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field mCounterText:Landroid/widget/TextView;

.field public mCreateEdit:Landroid/widget/EditText;

.field private mEdittextBlockEnd:I

.field private mEdittextBlockStart:I

.field mErrorText:Landroid/widget/TextView;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private final mTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field private prevString:Ljava/lang/String;

.field selectedMessage:Ljava/lang/String;

.field titleString:Ljava/lang/CharSequence;

.field updateMODE:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->istoastshowing:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$1;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$2;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12

    const v11, 0x7f0d05dc

    const/16 v10, 0xa0

    const/16 v7, 0x46

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v4, "CreateRejectMessages"

    const-string/jumbo v5, "============== afterTextChanged ============== :"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "display_reject_message_limit_for_kor"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d0762

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->titleString:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->titleString:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "CreateRejectMessages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getStringByteSize(text)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v4

    if-ge v7, v4, :cond_1

    const v4, 0x7f0d0553

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->showErrorText(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->showErrorText(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "dcm_reject_call_msg_limit"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    filled-new-array {v8, v8, v8, v8}, [I

    move-result-object v2

    const/4 v0, 0x0

    const/4 v4, 0x3

    aget v4, v1, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    invoke-static {v3, v8, v9}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    const/4 v4, 0x2

    aget v4, v2, v4

    aget v5, v2, v9

    add-int/2addr v4, v5

    if-ge v7, v4, :cond_3

    const-string/jumbo v4, "CreateRejectMessages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SmsMessage Full Size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0d0554

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->showErrorText(Z)V

    goto/16 :goto_0

    :cond_3
    iput-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->showErrorText(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v3, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    const/4 v4, 0x2

    aget v4, v2, v4

    aget v5, v2, v9

    add-int/2addr v4, v5

    if-ge v10, v4, :cond_5

    const-string/jumbo v4, "CreateRejectMessages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SmsMessage Half Size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0d0554

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->showErrorText(Z)V

    goto/16 :goto_0

    :cond_5
    iput-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->showErrorText(Z)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getStringByteSize(Ljava/lang/String;)I
    .locals 10

    const/16 v9, 0x7f

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v8

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "45006"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_1

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    :cond_3
    :goto_2
    return v3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_6

    :cond_5
    if-ne v0, v2, :cond_7

    move v3, v1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v6

    const/16 v7, 0x1b

    if-eq v7, v6, :cond_5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    mul-int/lit8 v3, v6, 0x2

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "Configuration"

    const-string/jumbo v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->setCustomActionBar()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "CreateRejectMessages"

    const-string/jumbo v2, "OnCreate ============== :"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->actionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->setCustomActionBar()V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    const v7, 0x7f0d0511

    const v6, 0x7f0d050d

    const/4 v5, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v2, v1, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x3

    invoke-interface {p1, v2, v1, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {p1, v2, v1, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2, v3, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const v11, 0x7f0d0762

    const/16 v10, 0x46

    const/4 v7, 0x0

    const v5, 0x7f0400bf

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f100233

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    const v5, 0x7f100234

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCounterText:Landroid/widget/TextView;

    const v5, 0x7f100235

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const-string/jumbo v5, "edittext_block_start"

    invoke-virtual {p3, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mEdittextBlockStart:I

    const-string/jumbo v5, "edittext_block_end"

    invoke-virtual {p3, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mEdittextBlockEnd:I

    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    const-string/jumbo v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    const-string/jumbo v6, "disableEmoticonInput=true"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateTextCounter(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$3;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$3;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$4;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    const/4 v5, 0x1

    new-array v2, v5, [Landroid/text/InputFilter;

    const-string/jumbo v5, "dcm_reject_call_msg_limit"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    aput-object v1, v2, v7

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_3
    :goto_0
    const-string/jumbo v5, "display_reject_message_limit_for_kor"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_4
    const-string/jumbo v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    new-instance v6, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$6;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$6;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v5, "UPDATE_MODE"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateMODE:Z

    const-string/jumbo v5, "CreateRejectMessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMODE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateMODE:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateMODE:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_6

    const-string/jumbo v5, "SELECTED_MESSAGE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->selectedMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->selectedMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_6
    const-string/jumbo v5, "display_reject_message_limit_for_kor"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_7
    iget-boolean v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateMODE:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->titleString:Ljava/lang/CharSequence;

    :cond_9
    :goto_1
    return-object v4

    :cond_a
    new-instance v5, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;

    const/16 v6, 0xa0

    invoke-direct {v5, p0, v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;I)V

    aput-object v5, v2, v7

    goto/16 :goto_0

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->titleString:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    const-string/jumbo v0, "CreateRejectMessages"

    const-string/jumbo v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->softkeyLeftRun(Landroid/view/View;)V

    return v3

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->softkeyRightRun(Landroid/view/View;)V

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "ModifyQuickDeclineMessage"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_2

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v0, :cond_3

    :goto_3
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const v1, 0x7f0d01f4

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    const-string/jumbo v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->actionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->actionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mEdittextBlockStart:I

    iget v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mEdittextBlockEnd:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mEdittextBlockEnd:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$7;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$7;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v1, "display_reject_message_limit_for_kor"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->titleString:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->titleString:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    const-string/jumbo v1, "CreateRejectMessages"

    const-string/jumbo v2, "edit reject msg onResume"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "support_bixby"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/phone/ia/EditRejectCallWithMsgScreenStateListener;

    invoke-direct {v1, p0}, Lcom/android/phone/ia/EditRejectCallWithMsgScreenStateListener;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ModifyQuickDeclineMessage"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v2, "ModifyQuickDeclineMessage"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "edittext_block_start"

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "edittext_block_end"

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateTextCounter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCustomActionBar()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->actionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->actionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->actionBar:Landroid/app/ActionBar;

    const v2, 0x7f04002a

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->actionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f10009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->cancelButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->cancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$8;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$8;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->saveButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->saveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$9;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$9;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020165

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->saveButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020166

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public showErrorText(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "EDITED_MESSAGE"

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "UPDATED"

    iget-boolean v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateMODE:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v2, 0x7f0d01f4

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d021e

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const v2, 0x7f0d05c8

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->displayToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 3

    const v1, 0x7f0d01f4

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d021f

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method

.method public updateTextCounter(Ljava/lang/CharSequence;)V
    .locals 9

    const/16 v8, 0x46

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCounterText:Landroid/widget/TextView;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const-string/jumbo v3, "dcm_reject_call_msg_limit"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    filled-new-array {v6, v6, v6, v6}, [I

    move-result-object v1

    aget v3, v0, v4

    if-ne v3, v4, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v1

    const-string/jumbo v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    aget v5, v1, v5

    rsub-int/lit8 v5, v5, 0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCounterText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    const-string/jumbo v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    aget v5, v1, v5

    rsub-int v5, v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "display_reject_message_limit_for_kor"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

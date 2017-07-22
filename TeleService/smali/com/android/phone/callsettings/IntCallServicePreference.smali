.class public Lcom/android/phone/callsettings/IntCallServicePreference;
.super Landroid/preference/DialogPreference;
.source "IntCallServicePreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IntCallServicePreference$1;,
        Lcom/android/phone/callsettings/IntCallServicePreference$2;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field mAutoLayout:Landroid/widget/LinearLayout;

.field mAutoRadio:Landroid/widget/CheckedTextView;

.field mContext:Landroid/content/Context;

.field mDivider:Landroid/view/View;

.field mManualLayout:Landroid/widget/LinearLayout;

.field mManualRadio:Landroid/widget/CheckedTextView;

.field mManualSvcNumber:Landroid/widget/EditText;

.field mOnKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/IntCallServicePreference;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->autoClicked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->manualClicked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->positiveButtonClicked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/IntCallServicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/phone/callsettings/IntCallServicePreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$1;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/IntCallServicePreference$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$2;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private autoClicked()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method private manualClicked()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->showKeypad()V

    :cond_1
    return-void
.end method

.method private positiveButtonClicked()V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v6}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v0, ""

    if-nez v1, :cond_1

    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v8, 0x7f0d072a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "int_call_svc_enabled"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "int_call_svc_value"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0952

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-lez v1, :cond_3

    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0950

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v6, "%d"

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-lez v1, :cond_2

    const-string/jumbo v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0953

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IntCallServicePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method private setInitValueAndLayout(Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v2, 0x7f10020c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f10020f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f10020d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    const v2, 0x7f100210

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    const v2, 0x7f100211

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    const v2, 0x7f10020e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mDivider:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mDivider:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string/jumbo v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    const v5, 0x7f0d07c0

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setText(I)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    const v5, 0x7f0d07bf

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setText(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "int_call_svc_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    if-lez v1, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    if-lez v1, :cond_6

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-lez v1, :cond_7

    move v2, v4

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "int_call_svc_value"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_8

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    :goto_3
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->showKeypad()V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/callsettings/IntCallServicePreference$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$3;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/callsettings/IntCallServicePreference$4;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$4;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_4
    return-void

    :cond_5
    move v2, v4

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3
.end method

.method private showKeypad()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IntCallServicePreference$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$5;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public checkKeypadonResume()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IntCallServicePreference$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$6;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IntCallServicePreference;->setInitValueAndLayout(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    const v0, 0x7f0400a6

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IntCallServicePreference;->setDialogLayoutResource(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    new-instance v0, Lcom/android/phone/callsettings/IntCallServicePreference$7;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$7;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    const v1, 0x7f0d050c

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

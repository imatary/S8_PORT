.class public Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;
    }
.end annotation


# static fields
.field public static final LOCKOUT_ATTEMPT_DEADLINE_FOR_CHINA:Ljava/lang/String; = "lockscreen.lockoutattemptdeadlineforchina"

.field private static final TAG:Ljava/lang/String; = "KeyguardSPassPasswordView"


# instance fields
.field private isSupportMobileKeyboard:Z

.field private mAccountEmergencyArea:Landroid/widget/LinearLayout;

.field private mCurrentMobileKeyboard:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEmergencyArea:Landroid/widget/LinearLayout;

.field private mEnableFallback:Z

.field private mFailedTextTimer:Landroid/os/CountDownTimer;

.field private mForgotPatternButton:Landroid/widget/Button;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mMobileKeyboard:Z

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordTimeTick:I

.field private mPasswordTitle:Landroid/widget/TextView;

.field private final mShowImeAtScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mMobileKeyboard:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isSupportMobileKeyboard:Z

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCurrentMobileKeyboard:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeAtScreenOn:Z

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v0, "KeyguardSPassPasswordView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mShowImeAtScreenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeAtScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isSupportMobileKeyboard:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mMobileKeyboard:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCurrentMobileKeyboard:I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/app/admin/DevicePolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$1608(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)I
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/CharSequence;ZI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;

    return-object v0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-le v1, v4, :cond_8

    :cond_1
    move v2, v4

    :goto_1
    return v2

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    if-gt v1, v4, :cond_4

    invoke-virtual {p1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-lez v0, :cond_7

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v3

    :goto_3
    move v3, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v3, 0x1

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_0

    if-gt v3, v4, :cond_3

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_1

    goto :goto_1
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->start()V

    return-void
.end method

.method private resizeKeyboardScreen()V
    .locals 3

    sget v0, Lcom/android/keyguard/R$id;->keyguard_top_space:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_spassword_top_margin_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    if-nez v1, :cond_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_spassword_top_margin_min_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardSPassPasswordView"

    const-string/jumbo v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    goto :goto_0
.end method

.method public getLockoutAttemptDeadlineforchina()J
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.lockoutattemptdeadlineforchina"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-wide v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->passwordEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_finger_print_backup_password_failed:I

    return v0
.end method

.method protected handleAttemptLockoutForChina(J)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setPasswordEntryEnabled(Z)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCurrentMobileKeyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "KeyguardSPassPasswordView"

    const-string/jumbo v2, "keyboard ConfigurationChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mMobileKeyboard:Z

    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCurrentMobileKeyboard:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->reset()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isSupportMobileKeyboard:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onDetachedFromWindow()V

    const-string/jumbo v0, "KeyguardSPassPasswordView"

    const-string/jumbo v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->cleanUp()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->verifySpassPasswordAndUnlock()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return v1
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x81

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setNewActionPopupMenu(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v3, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v3, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v0, Lcom/android/keyguard/R$id;->switch_ime_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_0
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->updateBlackTextOnWhiteWallpaper()V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_emergency_carrier_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_backup_pin_emergency_carrier_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->maybeEnableFallback(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/android/keyguard/R$id;->keyguard_title_message_backup:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v3, v2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->disableDevicePermanently()V

    goto :goto_4
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    const-string/jumbo v0, "KeyguardSPassPasswordView"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    goto :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    const-string/jumbo v0, "KeyguardSPassPasswordView"

    const-string/jumbo v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    if-nez v2, :cond_6

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-eq p1, v6, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetState()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeAtScreenOn:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_alternative_password_fail_title_instructions:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetPasswordText(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->disableDevicePermanently()V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->shouldLockout(J)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetState()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getLockoutAttemptDeadlineforchina()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->shouldLockout(J)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetState()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->handleAttemptLockoutForChina(J)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resizeKeyboardScreen()V

    goto :goto_1
.end method

.method protected resetPasswordText(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected resetState()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "KeyguardSPassPasswordView"

    const-string/jumbo v1, "resetState () "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_finger_print_backup_password_title_instructions_without_finger_print:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_spass_password_backup_password_font_small:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_spass_backup_password_introductions:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setLockoutAttemptDeadlineForChina(I)J
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eq p1, v2, :cond_0

    if-eq p1, v3, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen.lockoutattemptdeadlineforchina"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-wide v0

    :cond_0
    const/16 v1, 0xd

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 3

    const v2, -0x50506

    const v1, -0xbbbbbc

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateBlackTextOnWhiteWallpaper()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method protected verifySpassPasswordAndUnlock()V
    .locals 9

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getPasswordText()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportUnpackMode()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_4

    :cond_0
    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v4, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWrongPasswordStringId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetPasswordText(Z)V

    return-void

    :cond_3
    const-string/jumbo v0, "KeyguardSPassPasswordView"

    const-string/jumbo v3, "** verifyPasswordAndUnlock() in isUnpackMode = true"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkFingerprintPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setNullHintMessage()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_UNLOCKED_BY_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    if-nez v3, :cond_9

    :cond_7
    :goto_3
    rsub-int/lit8 v2, v0, 0xa

    rem-int/lit8 v3, v0, 0x5

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v3, :cond_a

    :cond_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->handleAttemptLockout(J)V

    :goto_4
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_alternative_password_fail_title_instructions:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    if-lt v0, v3, :cond_7

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_a
    if-nez v2, :cond_8

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setLockoutAttemptDeadlineForChina(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->handleAttemptLockoutForChina(J)V

    goto :goto_4

    :cond_c
    sget-boolean v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWrongPasswordStringId()I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_d

    :goto_5
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;

    const-wide/16 v2, 0x1f40

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;JJ)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v8, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    goto :goto_5
.end method

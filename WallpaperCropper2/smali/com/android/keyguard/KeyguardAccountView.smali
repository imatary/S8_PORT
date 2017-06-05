.class public Lcom/android/keyguard/KeyguardAccountView;
.super Landroid/widget/LinearLayout;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "KeyguardAccountView"


# instance fields
.field private isNetworkConnected:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field public mEnableFallback:Z

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mShowImeAtScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/keyguard/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mShowImeAtScreenOn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardAccountView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardAccountView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardAccountView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardAccountView;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private asyncCheckPassword()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "password"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v4, Lcom/android/keyguard/KeyguardAccountView$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardAccountView$5;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    new-instance v6, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-direct {v6, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardAccountView"

    const-string/jumbo v1, "asyncCheckPassword accoun t== null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 11

    const/4 v3, 0x0

    const/16 v10, 0x40

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "com.google"

    new-instance v2, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    move v0, v5

    move-object v2, v3

    :goto_0
    if-lt v6, v8, :cond_0

    return-object v2

    :cond_0
    aget-object v4, v7, v6

    iget-object v1, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    :cond_1
    move v1, v5

    :goto_1
    if-gt v1, v0, :cond_6

    if-eq v1, v0, :cond_7

    move-object v1, v2

    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-object v2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    iget-object v1, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v9, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    move v0, v1

    move-object v1, v4

    goto :goto_2

    :cond_7
    move-object v1, v3

    goto :goto_2
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_login_checking_password:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardAccountView$4;-><init>(Lcom/android/keyguard/KeyguardAccountView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

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

.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0

    return-void
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

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->asyncCheckPassword()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->login:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAccountView$1;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v0, Lcom/android/keyguard/R$id;->password:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAccountView$2;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    sget v0, Lcom/android/keyguard/R$id;->ok:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->reset()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->reset()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/keyguard/R$string;->kg_login_instructions:I

    if-nez v1, :cond_0

    :goto_0
    invoke-interface {v2, v3, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    new-instance v0, Lcom/android/keyguard/KeyguardAccountView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAccountView$3;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showBouncer(I)V
    .locals 0

    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;Landroid/accounts/AccountManager;)V
    .locals 3

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    const-string/jumbo v0, "com.google"

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardUniversalLockView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .locals 7

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardUniversalLockView"

    const-string/jumbo v1, "in next()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3500(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    new-instance v6, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "KeyguardUniversalLockView"

    const-string/jumbo v1, "in run()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3502(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3600(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->ForgotLockUniversal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1600(Lcom/android/keyguard/KeyguardUniversalLockView;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    sget-object v1, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->ForgotLockUniversal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3700(Lcom/android/keyguard/KeyguardUniversalLockView;Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    goto :goto_1

    :catch_1
    move-exception v0

    iget v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    goto :goto_1

    :catch_2
    move-exception v0

    iget v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    throw v0
.end method

.method public start()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardUniversalLockView"

    const-string/jumbo v1, "in start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3502(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    iput v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    return-void
.end method

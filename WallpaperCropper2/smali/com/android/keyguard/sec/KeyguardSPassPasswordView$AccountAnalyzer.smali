.class Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
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

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;)V
    .locals 3

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    const-string/jumbo v0, "com.google"

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$700(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    new-instance v6, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$800(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

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
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$702(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x18

    if-gt v0, v1, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer$1;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxLines(I)V
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    goto/16 :goto_1

    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    throw v0
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$702(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Z)Z

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    return-void
.end method

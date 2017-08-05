.class Lcom/android/keyguard/KeyguardAccountView$5;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView;->asyncCheckPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
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
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->access$400(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "booleanResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "KeyguardAccountView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "asyncCheckPassword verified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardAccountView;->access$800(Lcom/android/keyguard/KeyguardAccountView;Z)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$5$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAccountView$5$1;-><init>(Lcom/android/keyguard/KeyguardAccountView$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardAccountView;->access$800(Lcom/android/keyguard/KeyguardAccountView;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$5$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAccountView$5$1;-><init>(Lcom/android/keyguard/KeyguardAccountView$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardAccountView;->access$800(Lcom/android/keyguard/KeyguardAccountView;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$5$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAccountView$5$1;-><init>(Lcom/android/keyguard/KeyguardAccountView$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardAccountView;->access$800(Lcom/android/keyguard/KeyguardAccountView;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$5$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAccountView$5$1;-><init>(Lcom/android/keyguard/KeyguardAccountView$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardAccountView$5$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardAccountView$5$1;-><init>(Lcom/android/keyguard/KeyguardAccountView$5;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

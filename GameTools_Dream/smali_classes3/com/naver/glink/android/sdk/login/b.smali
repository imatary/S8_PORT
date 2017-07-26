.class public Lcom/naver/glink/android/sdk/login/b;
.super Lcom/naver/glink/android/sdk/login/a$a;
.source "NaverLoginBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/login/b$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "NaverLoginBuilder"


# instance fields
.field private final f:Lcom/nhn/android/naverlogin/OAuthLoginHandler;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/login/a$a;-><init>(Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    new-instance v0, Lcom/naver/glink/android/sdk/login/b$1;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/login/b$1;-><init>(Lcom/naver/glink/android/sdk/login/b;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/b;->f:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/login/b;)Lcom/nhn/android/naverlogin/OAuthLoginHandler;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b;->f:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/login/b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/login/b;->b(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b;->f:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    invoke-direct {p0, p1, v0}, Lcom/naver/glink/android/sdk/login/b;->a(Landroid/content/Context;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b;->b:Ljava/lang/String;

    new-instance v1, Lcom/naver/glink/android/sdk/login/b$3;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/login/b;->c:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    invoke-direct {v1, p0, v2, p1}, Lcom/naver/glink/android/sdk/login/b$3;-><init>(Lcom/naver/glink/android/sdk/login/b;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/naver/glink/android/sdk/login/b$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/naver/glink/android/sdk/login/b$4;-><init>(Lcom/naver/glink/android/sdk/login/b;Landroid/content/Context;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V

    invoke-static {p1, v2, v0}, Lcom/nhn/android/naverlogin/connection/NetworkState;->checkConnectivity(Landroid/content/Context;ZLcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object p2, Lcom/nhn/android/naverlogin/OAuthLogin;->mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/naver/glink/android/sdk/c;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->a()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/d;->a(Z)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/login/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/login/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/login/b;Landroid/content/Context;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/login/b;->a(Landroid/content/Context;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/login/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/login/b;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b;->f:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    invoke-virtual {v0, p1}, Lcom/nhn/android/naverlogin/OAuthLoginHandler;->run(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NaverLoginBuilder"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$a;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/login/a$a;->a(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Z)Lcom/naver/glink/android/sdk/login/a$b;
    .locals 1

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/login/a$a;->a(Z)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    const-string/jumbo v0, "NaverLoginBuilder"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginBuilder"

    const-string/jumbo v1, "login execute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NaverLoginBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "alertMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/login/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NaverLoginBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/login/b;->f:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NAVER:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v1

    sget-object v2, Lcom/naver/glink/android/sdk/login/b$5;->a:[I

    invoke-virtual {v1, v0}, Lcom/nhn/android/naverlogin/OAuthLogin;->getState(Landroid/content/Context;)Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/login/b;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v0}, Lcom/nhn/android/naverlogin/OAuthLogin;->getRefreshToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/naver/glink/android/sdk/login/b$a;

    new-instance v2, Lcom/naver/glink/android/sdk/login/b$2;

    invoke-direct {v2, p0, v0}, Lcom/naver/glink/android/sdk/login/b$2;-><init>(Lcom/naver/glink/android/sdk/login/b;Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/naver/glink/android/sdk/login/b$a;-><init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/login/b$a$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/login/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/login/b;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

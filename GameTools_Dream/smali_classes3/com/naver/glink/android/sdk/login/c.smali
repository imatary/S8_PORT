.class public Lcom/naver/glink/android/sdk/login/c;
.super Lcom/naver/glink/android/sdk/login/a$a;
.source "NeoIdLoginBuilder.java"


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/login/a$a;-><init>(Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/login/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/login/c;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/c;->a:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/c;->a:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    invoke-interface {v1, p1}, Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;->onLoggedIn(Z)V

    :cond_2
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->syncGameUserId(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/login/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/login/c;->e:Z

    return p1
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

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    sget-object v1, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NEO_ID:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->init(Landroid/content/Context;)V

    sget-object v1, Lcom/naver/glink/android/sdk/login/c$3;->a:[I

    invoke-static {}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->c()Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/naver/glink/android/sdk/login/c;->d:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/login/c;->b(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/naver/glink/android/sdk/login/c;->e:Z

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Lcom/naver/glink/android/sdk/login/c$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/login/c$1;-><init>(Lcom/naver/glink/android/sdk/login/c;)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/c;->b:Ljava/lang/String;

    new-instance v2, Lcom/naver/glink/android/sdk/login/c$2;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/login/c;->c:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    invoke-direct {v2, p0, v3}, Lcom/naver/glink/android/sdk/login/c$2;-><init>(Lcom/naver/glink/android/sdk/login/c;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/login/c;->b(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

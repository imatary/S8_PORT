.class Lcom/naver/glink/android/sdk/login/b$a;
.super Landroid/os/AsyncTask;
.source "NaverLoginBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/login/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/login/b$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/naver/glink/android/sdk/login/b$a$a;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/login/b$a$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/b$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/login/b$a;->b:Lcom/naver/glink/android/sdk/login/b$a$a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/b$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/OAuthLogin;->refreshAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b$a;->b:Lcom/naver/glink/android/sdk/login/b$a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b$a;->b:Lcom/naver/glink/android/sdk/login/b$a$a;

    invoke-interface {v0, p1}, Lcom/naver/glink/android/sdk/login/b$a$a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/login/b$a;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/login/b$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/a;->a(Ljava/lang/String;)V

    return-void
.end method

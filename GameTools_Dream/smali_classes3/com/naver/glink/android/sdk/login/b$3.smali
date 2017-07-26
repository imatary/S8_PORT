.class Lcom/naver/glink/android/sdk/login/b$3;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "NaverLoginBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/login/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/naver/glink/android/sdk/login/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/login/b;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/b$3;->b:Lcom/naver/glink/android/sdk/login/b;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/login/b$3;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b$3;->b:Lcom/naver/glink/android/sdk/login/b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/b$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/login/b$3;->b:Lcom/naver/glink/android/sdk/login/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/login/b;->a(Lcom/naver/glink/android/sdk/login/b;)Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/b;->a(Lcom/naver/glink/android/sdk/login/b;Landroid/content/Context;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V

    return-void
.end method

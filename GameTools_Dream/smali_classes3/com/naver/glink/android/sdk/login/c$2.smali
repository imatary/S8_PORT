.class Lcom/naver/glink/android/sdk/login/c$2;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "NeoIdLoginBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/login/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/login/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/login/c;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/c$2;->a:Lcom/naver/glink/android/sdk/login/c;

    invoke-direct {p0, p2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>(Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/c$2;->a:Lcom/naver/glink/android/sdk/login/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/login/c;->b(Lcom/naver/glink/android/sdk/login/c;Z)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/c$2;->a:Lcom/naver/glink/android/sdk/login/c;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/login/c;->a()V

    return-void
.end method

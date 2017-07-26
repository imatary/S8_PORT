.class Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "MenusFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->menu_change_channel:I

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    sget v3, Lcom/naver/glink/android/sdk/R$string;->confirm:I

    invoke-virtual {v2, v3}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    sget v4, Lcom/naver/glink/android/sdk/R$string;->cancel:I

    invoke-virtual {v3, v4}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10$1;

    invoke-direct {v4, p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10$1;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method

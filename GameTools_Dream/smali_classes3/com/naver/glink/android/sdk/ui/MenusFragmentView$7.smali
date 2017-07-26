.class Lcom/naver/glink/android/sdk/ui/MenusFragmentView$7;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "MenusFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
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
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$7;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$7;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->getChannelByChannelCode(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/Responses$Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$7;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CH. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->language:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$7;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method

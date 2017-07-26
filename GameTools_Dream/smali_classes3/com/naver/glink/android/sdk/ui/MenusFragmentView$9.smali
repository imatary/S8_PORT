.class Lcom/naver/glink/android/sdk/ui/MenusFragmentView$9;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "MenusFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->l()V
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
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->getChannels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;

    iget-object v4, v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->language:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->langCode:Ljava/lang/String;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/naver/glink/android/sdk/configure/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->getChannels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    const-string/jumbo v3, "CHANNELS_DIALOG_TAG"

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    sget v5, Lcom/naver/glink/android/sdk/R$string;->select_channel_title:I

    invoke-virtual {v4, v5}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4, v2, v1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$9;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method

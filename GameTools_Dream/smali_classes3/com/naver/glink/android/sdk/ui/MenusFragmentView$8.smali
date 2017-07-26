.class Lcom/naver/glink/android/sdk/ui/MenusFragmentView$8;
.super Lcom/naver/glink/android/sdk/a/o;
.source "MenusFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$8;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$8;->a:Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$8;->a:Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->cafeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$8;->a:Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/configure/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->getChannelByChannelCode(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/Responses$Channel;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$8;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$8;->a:Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->cafeUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/naver/glink/android/sdk/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->langCode:Ljava/lang/String;

    goto :goto_0
.end method

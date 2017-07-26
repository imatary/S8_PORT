.class Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "TabsFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->e()V
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
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->NOTICE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->a(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->hasNewNoticeArticle:Z

    iput-boolean v1, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->EVENT:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->a(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->hasNewEventArticle:Z

    iput-boolean v1, v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->d:Z

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->a(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$1;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method

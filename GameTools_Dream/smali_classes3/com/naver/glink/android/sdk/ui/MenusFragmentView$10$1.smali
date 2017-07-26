.class Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10$1;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "MenusFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10$1;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10$1;->a:Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10$1;->a:Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->getChannels()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10$1;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;

    iget v1, v1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/Responses$Channel;->getLangCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/configure/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10$1;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;->b:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Lcom/naver/glink/android/sdk/api/Responses$Channel;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

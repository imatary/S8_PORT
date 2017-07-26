.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;
.super Ljava/lang/Object;
.source "WriteFragmentView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->d(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    :goto_0
    if-le p2, v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->d(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->d(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Landroid/widget/EditText;)V

    :cond_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->e(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    if-le p2, v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->e(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->e(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Landroid/widget/EditText;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

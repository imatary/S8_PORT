.class Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$2;
.super Ljava/lang/Object;
.source "ProfileArticlesFragmentView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le v0, p4, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->c(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

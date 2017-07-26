.class Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$1;
.super Ljava/lang/Object;
.source "ProfileArticlesFragmentView.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->c()V

    return-void
.end method

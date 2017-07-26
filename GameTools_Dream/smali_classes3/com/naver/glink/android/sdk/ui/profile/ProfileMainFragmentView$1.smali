.class Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$1;
.super Ljava/lang/Object;
.source "ProfileMainFragmentView.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->c()V

    return-void
.end method

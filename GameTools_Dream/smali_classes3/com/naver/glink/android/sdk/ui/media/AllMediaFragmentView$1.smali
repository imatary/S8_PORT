.class Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$1;
.super Ljava/lang/Object;
.source "AllMediaFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/media/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/naver/glink/android/sdk/api/response/AllMediaResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getListAdapter()Lcom/naver/glink/android/sdk/ui/media/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/media/a;->notifyDataSetChanged()V

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-virtual {v0, p2}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    goto :goto_0
.end method

.class Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$2;
.super Ljava/lang/Object;
.source "AllMediaFragmentView.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->c()V

    return-void
.end method

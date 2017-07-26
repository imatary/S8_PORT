.class Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3;
.super Ljava/lang/Object;
.source "AllMediaFragmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->menusRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3$1;-><init>(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

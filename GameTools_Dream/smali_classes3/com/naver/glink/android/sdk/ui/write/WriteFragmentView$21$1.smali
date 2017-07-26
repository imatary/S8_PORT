.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21$1;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "WriteFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a(Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21$1;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21$1;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->b(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Z)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21$1;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->i(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    return-void
.end method

.method public b(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21$1;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->i(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    return-void
.end method

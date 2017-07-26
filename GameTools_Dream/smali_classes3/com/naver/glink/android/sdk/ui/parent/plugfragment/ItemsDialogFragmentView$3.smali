.class Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$3;
.super Ljava/lang/Object;
.source "ItemsDialogFragmentView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;

    invoke-virtual {v0, p3}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, p3, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$c;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$c;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$c;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;)V

    goto :goto_0
.end method

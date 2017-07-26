.class Lcom/naver/glink/android/sdk/ui/MenusFragmentView$1;
.super Ljava/lang/Object;
.source "MenusFragmentView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/MenusFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

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

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/naver/glink/android/sdk/model/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Menu;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->setClickedMenuId(I)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$a;

    invoke-direct {v2, v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$a;-><init>(Lcom/naver/glink/android/sdk/model/Menu;)V

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

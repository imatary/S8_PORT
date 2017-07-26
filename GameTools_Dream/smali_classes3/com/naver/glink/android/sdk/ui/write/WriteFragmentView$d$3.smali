.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$3;
.super Lcom/naver/glink/android/sdk/a/e;
.source "WriteFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->a(Lcom/naver/glink/android/sdk/ui/write/model/Text;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$3;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$3;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->e(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$3;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->e(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

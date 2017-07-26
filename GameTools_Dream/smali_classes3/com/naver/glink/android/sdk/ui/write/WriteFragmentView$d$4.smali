.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$4;
.super Ljava/lang/Object;
.source "WriteFragmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/model/Attachment;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$4;->b:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$4;->a:Lcom/naver/glink/android/sdk/ui/write/model/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$4;->b:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$4;->a:Lcom/naver/glink/android/sdk/ui/write/model/Attachment;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b(Lcom/naver/glink/android/sdk/ui/write/model/Content;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$4;->b:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->f(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->notifyDataSetChanged()V

    return-void
.end method

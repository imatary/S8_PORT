.class Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$4;
.super Ljava/lang/Object;
.source "CommentFragmentView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->a(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->c(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)Lcom/naver/glink/android/sdk/ui/widget/PreImeKeyListeningEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;Landroid/view/View;)V

    :cond_0
    return-void
.end method

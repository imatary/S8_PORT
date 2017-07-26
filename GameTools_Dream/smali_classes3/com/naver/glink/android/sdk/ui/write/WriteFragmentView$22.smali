.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;
.super Ljava/lang/Object;
.source "WriteFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/write/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;->a:Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    invoke-direct {v0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;->a:Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    invoke-virtual {v1, v2, v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(Lcom/naver/glink/android/sdk/ui/write/model/Content;Lcom/naver/glink/android/sdk/ui/write/model/Content;)V

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;->a:Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$22;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->g(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    goto :goto_0
.end method

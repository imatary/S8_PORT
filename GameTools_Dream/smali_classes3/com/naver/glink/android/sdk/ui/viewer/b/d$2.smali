.class Lcom/naver/glink/android/sdk/ui/viewer/b/d$2;
.super Ljava/lang/Object;
.source "ViewerVideoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/b/d;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/viewer/b/d;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/b/d;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$2;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/d;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$2;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$2;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->BANNER:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$a;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$a;-><init>()V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$2;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/d;

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b(Lcom/naver/glink/android/sdk/ui/viewer/b/d;Z)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$2;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/d;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b(Lcom/naver/glink/android/sdk/ui/viewer/b/d;)Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->j()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$2;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/d;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b(Lcom/naver/glink/android/sdk/ui/viewer/b/d;)Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a()V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;

    invoke-direct {v0, v2}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;-><init>(I)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

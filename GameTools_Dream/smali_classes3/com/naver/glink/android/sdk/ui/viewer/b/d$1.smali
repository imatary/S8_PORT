.class Lcom/naver/glink/android/sdk/ui/viewer/b/d$1;
.super Ljava/lang/Object;
.source "ViewerVideoViewHolder.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/b/d;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/viewer/b/d;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/b/d;Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$1;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/d;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$1;->a:Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$1;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/d;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$1;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/d;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$1;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b(Lcom/naver/glink/android/sdk/ui/viewer/b/d;Z)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d$1;->a:Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;

    invoke-interface {v0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;->a(Z)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;-><init>(I)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

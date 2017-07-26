.class Lcom/naver/glink/android/sdk/ui/viewer/b/b$3;
.super Ljava/lang/Object;
.source "PhotoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

.field final synthetic c:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

.field final synthetic d:Lcom/naver/glink/android/sdk/ui/viewer/b/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/b/b;Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$3;->d:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$3;->b:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$3;->c:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$3;->d:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$3;->b:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$3;->c:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;Z)V

    return-void
.end method

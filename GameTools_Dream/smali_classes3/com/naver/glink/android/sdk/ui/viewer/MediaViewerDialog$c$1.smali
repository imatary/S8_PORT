.class Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c$1;
.super Ljava/lang/Object;
.source "MediaViewerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->a(ILcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c$1;->b:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c$1;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c$1;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->articleId:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c$1;->b:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->h:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)V

    return-void
.end method

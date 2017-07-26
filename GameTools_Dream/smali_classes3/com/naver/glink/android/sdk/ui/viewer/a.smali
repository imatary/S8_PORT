.class public Lcom/naver/glink/android/sdk/ui/viewer/a;
.super Ljava/lang/Object;
.source "MediaViewerHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.naver.glink.image-viwer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;)V
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->getAllAttachments()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ARTICLE:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->from(Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/naver/glink/android/sdk/ui/viewer/a;->a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Ljava/util/List;I)V

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/ArticleMedia;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/a/b;

    invoke-direct {v0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/a/b;-><init>(Ljava/util/List;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, v0, p2}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/ui/viewer/a/c;I)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/a;->a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)V

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)V
    .locals 1

    const-string/jumbo v0, "com.naver.glink.image-viwer"

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->PROFILE:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/viewer/a;->a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Ljava/util/List;I)V

    return-void
.end method

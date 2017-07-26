.class Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$2;
.super Ljava/lang/Object;
.source "MediaViewerDialog.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$2;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$2;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->notifyDataSetChanged()V

    return-void
.end method

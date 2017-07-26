.class Lcom/naver/glink/android/sdk/ui/viewer/b/b$1;
.super Ljava/lang/Object;
.source "PhotoViewHolder.java"

# interfaces
.implements Luk/co/senab/photoview/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/b/b;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/viewer/b/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$1;->a:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FF)V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;-><init>(I)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    return-void
.end method

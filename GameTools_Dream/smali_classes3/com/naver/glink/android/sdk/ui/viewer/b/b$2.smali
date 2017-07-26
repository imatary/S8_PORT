.class Lcom/naver/glink/android/sdk/ui/viewer/b/b$2;
.super Ljava/lang/Object;
.source "PhotoViewHolder.java"

# interfaces
.implements Luk/co/senab/photoview/d$e;


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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$2;->a:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$2;->a:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/b;)Lcom/naver/glink/android/sdk/ui/viewer/b/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$2;->a:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/b;)Lcom/naver/glink/android/sdk/ui/viewer/b/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$2;->a:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->b(Lcom/naver/glink/android/sdk/ui/viewer/b/b;)Luk/co/senab/photoview/PhotoView;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoView;->getScale()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/b/b$a;->a(F)V

    :cond_0
    return-void
.end method

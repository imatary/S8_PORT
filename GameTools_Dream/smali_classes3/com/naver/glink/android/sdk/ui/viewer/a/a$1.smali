.class Lcom/naver/glink/android/sdk/ui/viewer/a/a$1;
.super Ljava/lang/Object;
.source "AllMediaLoaderDataSource.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/media/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/a/a;->a(Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/viewer/a/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/a/a;Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a$1;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a$1;->a:Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/naver/glink/android/sdk/api/response/AllMediaResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a$1;->a:Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;->a()V

    :cond_0
    return-void
.end method

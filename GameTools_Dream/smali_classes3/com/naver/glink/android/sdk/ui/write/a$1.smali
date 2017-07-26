.class final Lcom/naver/glink/android/sdk/ui/write/a$1;
.super Ljava/lang/Object;
.source "ImageResizeAsyncTask.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/write/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/a;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/naver/glink/android/sdk/ui/write/a$a;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/a$a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/a$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/a$1;->a:Lcom/naver/glink/android/sdk/ui/write/a$a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/a$1;->a:Lcom/naver/glink/android/sdk/ui/write/a$a;

    invoke-interface {v0, p1}, Lcom/naver/glink/android/sdk/ui/write/a$a;->a(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/a$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/a;->b(Ljava/lang/String;)V

    return-void
.end method

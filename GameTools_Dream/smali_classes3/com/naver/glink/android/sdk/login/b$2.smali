.class Lcom/naver/glink/android/sdk/login/b$2;
.super Ljava/lang/Object;
.source "NaverLoginBuilder.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/login/b$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/login/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/naver/glink/android/sdk/login/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/login/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/b$2;->b:Lcom/naver/glink/android/sdk/login/b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/login/b$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b$2;->b:Lcom/naver/glink/android/sdk/login/b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/b$2;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/login/b;->a(Lcom/naver/glink/android/sdk/login/b;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b$2;->b:Lcom/naver/glink/android/sdk/login/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/login/b;->a(Lcom/naver/glink/android/sdk/login/b;Z)V

    goto :goto_0
.end method

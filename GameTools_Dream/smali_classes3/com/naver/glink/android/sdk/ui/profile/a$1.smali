.class Lcom/naver/glink/android/sdk/ui/profile/a$1;
.super Ljava/lang/Object;
.source "NickNameHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/a;->a(Ljava/lang/String;ZZLcom/naver/glink/android/sdk/api/Responses$MemberResponse;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/api/request/Request;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/profile/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/a;Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1;->c:Lcom/naver/glink/android/sdk/ui/profile/a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1;->a:Lcom/naver/glink/android/sdk/api/request/Request;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1;->a:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1;->c:Lcom/naver/glink/android/sdk/ui/profile/a;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Lcom/naver/glink/android/sdk/ui/profile/a;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1;->a:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1;->b:Landroid/content/Context;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/profile/a$1$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/profile/a$1$1;-><init>(Lcom/naver/glink/android/sdk/ui/profile/a$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :cond_0
    return-void
.end method

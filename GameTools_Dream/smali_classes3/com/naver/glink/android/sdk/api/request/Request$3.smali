.class Lcom/naver/glink/android/sdk/api/request/Request$3;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;ILcom/naver/glink/android/sdk/api/request/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naver/glink/android/sdk/api/request/Request;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/Request$3;->this$0:Lcom/naver/glink/android/sdk/api/request/Request;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/api/request/Request$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/api/request/Request$3;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$3;->this$0:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/Request$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/request/Request$3;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/naver/glink/android/sdk/api/request/Request;->access$300(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$3;->this$0:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-static {v0, v3}, Lcom/naver/glink/android/sdk/api/request/Request;->access$002(Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;)Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    return-void
.end method

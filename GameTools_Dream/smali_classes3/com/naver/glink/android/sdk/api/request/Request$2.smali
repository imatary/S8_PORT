.class Lcom/naver/glink/android/sdk/api/request/Request$2;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;ILcom/naver/glink/android/sdk/api/request/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naver/glink/android/sdk/api/request/Request;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

.field final synthetic val$retryCount:I


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/api/request/Request;ILandroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->this$0:Lcom/naver/glink/android/sdk/api/request/Request;

    iput p2, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->val$retryCount:I

    iput-object p3, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->this$0:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-static {v0, v3}, Lcom/naver/glink/android/sdk/api/request/Request;->access$002(Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;)Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->val$retryCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->this$0:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Response;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->access$100(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/GlinkError;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/a;->c()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->this$0:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Response;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->access$200(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/GlinkError;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->this$0:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-static {v0, v3}, Lcom/naver/glink/android/sdk/api/request/Request;->access$002(Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;)Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->this$0:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/naver/glink/android/sdk/api/request/Request;->access$300(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$2;->this$0:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-static {v0, v3}, Lcom/naver/glink/android/sdk/api/request/Request;->access$002(Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;)Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Response;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/api/request/Request$2;->onResponse(Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

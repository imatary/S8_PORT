.class Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$1;
.super Ljava/lang/Object;
.source "SDKRegister.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->restore(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$1;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;->getServiceIds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/Config;->SERVICE_ID:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$1;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->register(Z)V

    :cond_1
    return-void
.end method

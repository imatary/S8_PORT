.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;
.super Ljava/lang/Object;
.source "EnhancedShare.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ORS"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ORS"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;->TAG:Ljava/lang/String;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->registerFeature(ILcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)V

    return-void
.end method


# virtual methods
.method public onDeregister()V
    .locals 0

    return-void
.end method

.method public onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 5

    const-string/jumbo v3, "appData"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "push appData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "push appData is empty "

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-class v3, Lcom/samsung/android/sdk/ssf/share/io/PushORSData;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/share/io/PushORSData;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;

    invoke-direct {v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;-><init>(Lcom/samsung/android/sdk/ssf/share/io/PushORSData;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;->onUpdateContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    goto :goto_0
.end method

.method public onRegister()V
    .locals 0

    return-void
.end method

.class Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;
.super Ljava/lang/Object;
.source "EnhancedSocial.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregister()V
    .locals 2

    const-string/jumbo v0, "onDeregister"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/util/SocialLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 4

    const-string/jumbo v2, "Received Social Push"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/util/SocialLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "appData"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->parse(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "onPushReceive. Invalid pushEntry."

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/util/SocialLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegister()V
    .locals 2

    const-string/jumbo v0, "onRegister"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/util/SocialLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

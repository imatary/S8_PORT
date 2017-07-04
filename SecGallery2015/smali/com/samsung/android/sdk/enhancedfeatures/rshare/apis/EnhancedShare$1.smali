.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;
.super Ljava/lang/Object;
.source "EnhancedShare.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregister()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "onDeregister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.coreapps.simpleshare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->resetDb()V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRQuotaDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->invalidateCache()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Address;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content$ChunkEntry;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 11

    const-string/jumbo v7, "appData"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    if-nez p3, :cond_1

    const-string/jumbo v7, "msg"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "push appData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " data : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    const-class v7, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;

    invoke-virtual {v3, v2, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "onPushReceive :  mListener is null"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v7, "message"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " 6.8 share a message sender : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;->sender:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;->message:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;

    iget-object v9, v5, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;->sender:Ljava/lang/String;

    iget-object v10, v5, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;->message:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;->onReceiveMessage(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    goto :goto_1

    :cond_3
    const-class v7, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;

    invoke-virtual {v3, v2, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;

    iget-object v1, v4, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v7, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Ljava/lang/String;)C

    move-result v6

    iget-object v8, v4, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c1:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_4
    :goto_2
    :pswitch_0
    packed-switch v7, :pswitch_data_1

    const-string/jumbo v7, "push api number is not available"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :pswitch_2
    const-string/jumbo v9, "5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :pswitch_3
    const-string/jumbo v9, "6"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x2

    goto :goto_2

    :pswitch_4
    const-string/jumbo v9, "9"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x3

    goto :goto_2

    :pswitch_5
    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;

    iget-object v9, v4, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c0:Ljava/lang/String;

    invoke-direct {v8, v9, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;-><init>(Ljava/lang/String;C)V

    invoke-interface {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;->onIncomingContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;

    iget-object v9, v4, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c0:Ljava/lang/String;

    invoke-direct {v8, v9, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;-><init>(Ljava/lang/String;C)V

    invoke-interface {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;->onDeleteIncomingContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;

    iget-object v9, v4, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c0:Ljava/lang/String;

    invoke-direct {v8, v9, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;-><init>(Ljava/lang/String;C)V

    invoke-interface {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;->onIncomingContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;

    iget-object v9, v4, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c0:Ljava/lang/String;

    invoke-direct {v8, v9, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;-><init>(Ljava/lang/String;C)V

    invoke-interface {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;->onUpdateContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    goto/16 :goto_1

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "content token is null receive data : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onRegister()V
    .locals 2

    const-string/jumbo v0, "onRegister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

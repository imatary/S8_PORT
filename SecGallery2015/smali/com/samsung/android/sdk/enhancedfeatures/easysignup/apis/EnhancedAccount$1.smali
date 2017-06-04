.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;
.super Ljava/lang/Object;
.source "EnhancedAccount.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregister()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "onDeregister"

    const-string/jumbo v2, "EnhancedAccount"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->disableBootReceiverComponent(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->supportCoreAppsJoinAuth(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->disableLocaleChangeReceiverComponent(Landroid/content/Context;)V

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->cancel(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;->cancel(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->removeAllSsfClient()V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->unregisterGcm(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/network/SppPushClient;->deregister(Landroid/content/Context;)Z

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->setSppRegId(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->setDeviceId(Ljava/lang/String;)V

    const-string/jumbo v1, "last_heart_beat_time"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string/jumbo v1, "heart_beat_interval"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string/jumbo v1, "last_policy_check_time"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string/jumbo v1, "policy_set_time"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string/jumbo v1, "policy_check_interval"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string/jumbo v1, "last_access_token_refresh_time"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string/jumbo v1, "expire_account_time"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string/jumbo v1, "update_check_time_interval"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 23

    const/4 v2, 0x0

    if-nez p3, :cond_2

    const-string/jumbo v3, "msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v15, Lcom/google/gson/Gson;

    invoke-direct {v15}, Lcom/google/gson/Gson;-><init>()V

    new-instance v17, Lcom/google/gson/JsonParser;

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/JsonParser;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v16

    const-string/jumbo v3, "push_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPushReceive push type : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "EnhancedAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "\""

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, "reqAuth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "reqAuthV3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const-class v3, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;

    invoke-virtual {v15, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Request Auth: model number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->mn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", auth code : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_code:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", appid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->appid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", auth_status : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_status:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", number_conflict : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->number_conflict:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "EnhancedAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "no push listener."

    const-string/jumbo v5, "EnhancedAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v3, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v22

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_type:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_code:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->mn:Ljava/lang/String;

    const-wide/16 v8, 0x0

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->device_type:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->appid:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v12, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_status:I

    move-object/from16 v0, v18

    iget v13, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->number_conflict:I

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;->onAuthRequest(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "Auth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-class v3, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;

    invoke-virtual {v15, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "auth_result "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->auth_result:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "EnhancedAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget v3, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->auth_result:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->notifyAuthResult()V
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "no push listener."

    const-string/jumbo v5, "EnhancedAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->auth_type:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->auth_device:Ljava/lang/String;

    move-object/from16 v0, v19

    iget v8, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->auth_result:I

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->device_type:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;->onAuthConfirm(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v3, "succession"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v14, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->mEF:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->getUser(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v3, "delete"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->removeAccount(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getEnhancedFeaturesInstance()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->notifyDeregister()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "no push listener."

    const-string/jumbo v5, "EnhancedAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;->onDeleteAuth(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v3, "cancel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-class v3, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;

    invoke-virtual {v15, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cancel: model number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->mn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " auth code : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_code:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "EnhancedAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "no push listener."

    const-string/jumbo v5, "EnhancedAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v11

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_type:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_code:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->mn:Ljava/lang/String;

    const-wide/16 v8, 0x0

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->device_type:Ljava/lang/String;

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v11, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;->onCancelAuthRequest(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v3, "noti"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "popup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_d
    const-class v3, Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;

    invoke-virtual {v15, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message Info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "EnhancedAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "no push listener."

    const-string/jumbo v5, "EnhancedAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;-><init>(Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;)V

    invoke-interface {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;->onMessageReceived(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;)V

    goto/16 :goto_1
.end method

.method public onRegister()V
    .locals 3

    const-string/jumbo v1, "onRegister"

    const-string/jumbo v2, "EnhancedAccount"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->enableBootReceiverComponent(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->supportCoreAppsJoinAuth(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->enableLocaleChangeReceiverComponent(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

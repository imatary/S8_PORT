.class Lcom/android/phone/photoring/CallMessageNetwork$1;
.super Landroid/os/Handler;
.source "CallMessageNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/CallMessageNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/CallMessageNetwork;


# direct methods
.method private static synthetic -getcom-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/photoring/CallMessageNetwork$1;->-com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/photoring/CallMessageNetwork$1;->-com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->values()[Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ALERTINFO:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->DOWNLOAD_CONTENT:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CHG_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CONTENT_SPEC_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->NONE:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->SET_REALTIME_SERVICEINFO_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->UPLOAD_CONTENT_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/android/phone/photoring/CallMessageNetwork$1;->-com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/phone/photoring/CallMessageNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/CallMessageNetwork$1;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "URL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ReqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ReqType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/CallMessageNetwork$1;->dump(Landroid/os/Bundle;)V

    const-string/jumbo v6, "ReqType"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->valueOf(Ljava/lang/String;)Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    move-result-object v5

    new-instance v2, Lcom/android/phone/photoring/http/JSONObjectParser;

    invoke-direct {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;-><init>()V

    iget-object v6, p0, Lcom/android/phone/photoring/CallMessageNetwork$1;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CallMessageNetwork.Handler handleMessage reqType :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/photoring/CallMessageNetwork;->-wrap8(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/photoring/CallMessageNetwork$1;->-getcom-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/phone/photoring/CallMessageNetwork$1;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-static {v6}, Lcom/android/phone/photoring/CallMessageNetwork;->-get1(Lcom/android/phone/photoring/CallMessageNetwork;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/photoring/ICallMessageNetworkListener;

    invoke-interface {v3, v5, v1}, Lcom/android/phone/photoring/ICallMessageNetworkListener;->onReceive(Lcom/android/phone/photoring/CallMessageConstants$RequestType;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_0
    if-eqz v2, :cond_0

    const-string/jumbo v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/phone/photoring/http/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->dump()V

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_0

    const-string/jumbo v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/phone/photoring/http/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->dump()V

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v6, "content_url"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "content_url"

    iget-object v7, p0, Lcom/android/phone/photoring/CallMessageNetwork$1;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    const-string/jumbo v8, "content_url"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/photoring/CallMessageNetwork;->-wrap1(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    if-eqz v2, :cond_0

    const-string/jumbo v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/phone/photoring/http/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->dump()V

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v6, "chg_url"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "chg_url"

    iget-object v7, p0, Lcom/android/phone/photoring/CallMessageNetwork$1;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    const-string/jumbo v8, "chg_url"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/photoring/CallMessageNetwork;->-wrap1(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    if-eqz v2, :cond_0

    const-string/jumbo v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/phone/photoring/http/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->dump()V

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v6, "content_url"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "content_url"

    iget-object v7, p0, Lcom/android/phone/photoring/CallMessageNetwork$1;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    const-string/jumbo v8, "content_url"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/photoring/CallMessageNetwork;->-wrap1(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v6, "chg_key"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "chg_key"

    iget-object v7, p0, Lcom/android/phone/photoring/CallMessageNetwork$1;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    const-string/jumbo v8, "chg_key"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/photoring/CallMessageNetwork;->-wrap1(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz v2, :cond_0

    const-string/jumbo v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/phone/photoring/http/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->dump()V

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_5
    if-eqz v2, :cond_2

    const-string/jumbo v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/phone/photoring/http/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->dump()V

    invoke-virtual {v2}, Lcom/android/phone/photoring/http/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_3
    const-string/jumbo v6, "DownloadPath"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "dl_path"

    const-string/jumbo v7, "DownloadPath"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v6, "DownloadResult"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "dl_result"

    const-string/jumbo v7, "DownloadResult"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

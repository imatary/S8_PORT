.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError;
.super Ljava/lang/Object;
.source "OMCError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError$Key;
    }
.end annotation


# static fields
.field public static final ACCESS_DENIED:Ljava/lang/String; = "3001"

.field public static final DEVICE_CATEGORY_NOT_EXIST:Ljava/lang/String; = "2000"

.field public static final DEVICE_NOT_REGISTERED:Ljava/lang/String; = "2001"

.field public static final INVAILD_BODY_XML:Ljava/lang/String; = "1200"

.field public static final INVAILD_CONTENT_TYPE:Ljava/lang/String; = "3031"

.field public static final INVAILD_HEADER_MISSING:Ljava/lang/String; = "1101"

.field public static final INVAILD_HEADER_WRONG_VALUE:Ljava/lang/String; = "1102"

.field public static final INVAILD_PARAMETER_MISSING:Ljava/lang/String; = "1001"

.field public static final INVAILD_PARAMETER_WRONG_LENGTH:Ljava/lang/String; = "1004"

.field public static final INVAILD_PARAMETER_WRONG_VALUE:Ljava/lang/String; = "1002"

.field public static final MODEL_CC_NOT_EXIST:Ljava/lang/String; = "2011"

.field public static final PROCESSID_NOT_EXIST:Ljava/lang/String; = "2005"

.field public static final SYSTEM:Ljava/lang/String; = "9001"

.field public static final UNKNOWN:Ljava/lang/String; = "5000"

.field public static instance:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError;->instance:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMessage(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v3, "error/code"

    const-string v4, "error/code"

    invoke-static {p1, v4}, Lcom/samsung/android/common/util/Xpath;->getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "error/message"

    const-string v4, "error/message"

    invoke-static {p1, v4}, Lcom/samsung/android/common/util/Xpath;->getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "error/retry"

    const-string v4, "error/retry"

    invoke-static {p1, v4}, Lcom/samsung/android/common/util/Xpath;->getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "error/responseURI"

    const-string v4, "error/responseURI"

    invoke-static {p1, v4}, Lcom/samsung/android/common/util/Xpath;->getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Messages:"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    return-object v2
.end method

.class public Lcom/naver/api/security/client/ServiceMACManager;
.super Ljava/lang/Object;
.source "ServiceMACManager.java"


# static fields
.field private static final EXTSERVICE:Ljava/lang/String; = "__extservice__"

.field private static final KEY_FILENAME:Ljava/lang/String; = "/NHNAPIGatewayKey.properties"

.field private static mac:Ljavax/crypto/Mac;

.field private static serviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncryptUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/naver/api/security/client/ServiceMACManager;->mac:Ljavax/crypto/Mac;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/api/security/client/ServiceMACManager;->initialize()V

    :cond_0
    const-string/jumbo v0, "__extservice__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "wrong url : \'__extservice__\' not exists"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "__extservice__"

    sget-object v1, Lcom/naver/api/security/client/ServiceMACManager;->serviceId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/naver/api/security/client/ServiceMACManager;->mac:Ljavax/crypto/Mac;

    sget-wide v2, Lcom/naver/api/security/client/MACManager;->correctionMillis:J

    invoke-static {v0, p0, v2, v3}, Lcom/naver/api/security/HmacUtil;->makeEncryptUrl(Ljavax/crypto/Mac;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEncryptUrl(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/naver/api/security/client/ServiceMACManager;->mac:Ljavax/crypto/Mac;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/api/security/client/ServiceMACManager;->initialize()V

    :cond_0
    const-string/jumbo v0, "__extservice__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "wrong url : \'__extservice__\' not exists"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "__extservice__"

    sget-object v1, Lcom/naver/api/security/client/ServiceMACManager;->serviceId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/naver/api/security/client/ServiceMACManager;->mac:Ljavax/crypto/Mac;

    invoke-static {v0, p0, p1, p2}, Lcom/naver/api/security/HmacUtil;->makeEncryptUrlWithMsgpad(Ljavax/crypto/Mac;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-class v4, Lcom/naver/api/security/client/ServiceMACManager;

    const-string/jumbo v5, "/NHNAPIGatewayKey.properties"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/naver/api/security/client/ServiceMACManager;->serviceId:Ljava/lang/String;

    sget-object v4, Lcom/naver/api/security/client/ServiceMACManager;->serviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "HMAC key Not Exists"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v4

    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/naver/api/security/HmacUtil;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    sput-object v4, Lcom/naver/api/security/client/ServiceMACManager;->mac:Ljavax/crypto/Mac;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-void
.end method

.class public Lcom/samsung/android/sdk/pen/util/SpenObjectUtil;
.super Ljava/lang/Object;
.source "SpenObjectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native ObjectUtil_getObjectExtraAllData(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;)[B
.end method

.method private static native ObjectUtil_setObjectExtraAllData(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;[BI)Z
.end method

.method public static getObjectExtraAllData(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/util/SpenObjectUtil;->ObjectUtil_getObjectExtraAllData(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not correct"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_3
    return-object v0
.end method

.method public static setObjectExtraAllData(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    array-length v1, p2

    invoke-static {p0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/util/SpenObjectUtil;->ObjectUtil_setObjectExtraAllData(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;[BI)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not correct"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_3
    return-void
.end method
